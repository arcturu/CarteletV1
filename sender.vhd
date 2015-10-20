library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use work.types.all;

entity SENDER is
    generic (
        wtime : std_logic_vector (15 downto 0) := x"1ADB"
    );
    port (
        clk : in std_logic;
        rst : in std_logic;
        sender_in : in sender_in_type;
        sender_out : out sender_out_type);
end SENDER;

architecture struct of SENDER is
    type st_type is (ready, sending_a_bit);
    type reg_type is record
        buff : std_logic_vector (31 downto 0);
        sending_buff : std_logic_vector (8 downto 0);
        st : st_type;
        counter : std_logic_vector (15 downto 0);
        rem_bits : std_logic_vector (3 downto 0);
        rem_bytes : std_logic_vector (2 downto 0);
    end record;
    signal r, rin : reg_type := (
        buff => (others => '1'),
        sending_buff => (others => '1'),
        st => ready,
        counter => (others => '0'),
        rem_bits => (others => '0'),
        rem_bytes => (others => '0'));
begin
    sender_out.RS_TX <= r.sending_buff (0);
    sender_out.busy <= '0' when r.st = ready else '1';

    comb : process (sender_in, r)
        variable v : reg_type;
    begin
        v := r;
        case r.st is
            when ready =>
                if sender_in.go = '1' then
                    v.buff := sender_in.data;
                    v.sending_buff := v.buff (31 downto 24) & '0';
                    v.st := sending_a_bit;
                    v.counter := wtime;
                    v.rem_bits := x"a";
                    v.rem_bytes := "100";
                elsif sender_in.go8 = '1' then
                    v.buff := sender_in.data;
                    v.sending_buff := v.buff (7 downto 0) & '0';
                    v.st := sending_a_bit;
                    v.counter := wtime;
                    v.rem_bits := x"a";
                    v.rem_bytes := "001";
                end if;
            when sending_a_bit =>
                if r.counter = x"0000" then
                    v.rem_bits := std_logic_vector(unsigned(r.rem_bits) - 1);
                    v.sending_buff := '1' & r.sending_buff (8 downto 1);
                    v.counter := wtime;
                    if r.rem_bits = x"0" then
                        v.rem_bytes := std_logic_vector(unsigned(r.rem_bytes) - 1);
                        if v.rem_bytes = "000" then
                            v.st := ready;
                        else
                            v.buff := r.buff (23 downto 0) & x"ff";
                            v.sending_buff := v.buff (31 downto 24) & '0';
                            v.rem_bits := x"a";
                            v.st := sending_a_bit;
                        end if;
                    else
                        v.st := sending_a_bit;
                    end if;
                else
                    v.counter := std_logic_vector(unsigned(r.counter) - 1);
                end if;
        end case;
                    
        rin <= v;
    end process;
    reg : process (clk)
    begin
        if rising_edge(clk) then
            r <= rin;
        end if;
    end process;
end struct;
