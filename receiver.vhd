library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use work.types.all;

entity RECEIVER is
    generic (
        wtime : std_logic_vector (15 downto 0) := x"1ADB"
    );
    port (
        clk : in std_logic;
        rst : in std_logic;
        receiver_in : in receiver_in_type;
        receiver_out : out receiver_out_type);
end RECEIVER;

architecture struct of RECEIVER is
    type st_type is (ready, first_zero, receiving, wait_next_zero);
    type reg_type is record
        valids : std_logic_vector (1 downto 0);
        bytes_buff : std_logic_vector (31 downto 0);
        bytes : std_logic_vector (2 downto 0);
        bits_buff : std_logic_vector (7 downto 0);
        bits : std_logic_vector (3 downto 0);
        counter : std_logic_vector (15 downto 0);
        rs_rxb : std_logic;
        st : st_type;
    end record;
    signal r, rin : reg_type := (
        valids => (others => '0'),
        bytes_buff => (others => '0'),
        bytes => "100",
        bits_buff => (others => '0'),
        bits => "1000",
        counter => (others => '0'),
        rs_rxb => '1',
        st => ready);
begin
    comb : process (receiver_in, r)
        variable v : reg_type;
    begin
        v := r;
        v.valids (1) := r.valids (0);
        v.rs_rxb := receiver_in.RS_RX;
        case r.st is
            when ready =>
                if r.rs_rxb = '0' then
                    v.valids (0) := '0';
                    v.st := first_zero;
                    v.counter := '0' & wtime (15 downto 1);
                    v.bits := "1001";
                    v.bytes := "100";
                end if;
            when first_zero =>
                v.counter := std_logic_vector(unsigned(r.counter) - 1);
                if v.counter = x"0000" then
                    v.st := receiving;
                    v.counter := wtime;
                end if;
            when receiving =>
                v.counter := std_logic_vector(unsigned(r.counter) - 1);
                if v.counter = x"0000" then
                    v.bits := std_logic_vector(unsigned(r.bits) - 1);
                    v.counter := wtime;
                    if v.bits = "0000" then
                        v.bytes := std_logic_vector(unsigned(r.bytes) - 1);
                        v.bits := "1001";
                        v.bytes_buff := r.bytes_buff (23 downto 0) & r.bits_buff;
                        if v.bytes = "000" then
                            v.st := ready;
                            v.valids (0) := '1';
                        else
                            v.st := wait_next_zero;
                        end if;
                    else
                        v.bits_buff := r.rs_rxb & r.bits_buff (7 downto 1);
                    end if;
                end if;
            when wait_next_zero =>
                if r.rs_rxb = '0' then
                    v.st := first_zero;
                    v.counter := '0' & wtime (15 downto 1);
                end if;
        end case;

        receiver_out.valid <= v.valids (0);
        if v.valids = "01" then
            receiver_out.fresh <= '1';
        else
            receiver_out.fresh <= '0';
        end if;
        receiver_out.data <= v.bytes_buff;
        rin <= v;
    end process;
    
    reg : process (clk)
    begin
        if rising_edge (clk) then
            r <= rin;
        end if;
    end process;
end struct;
