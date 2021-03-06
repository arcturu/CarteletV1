library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use work.types.all;

entity RECEIVER_Q8 is
    generic (
        wtime : std_logic_vector (15 downto 0) := x"1ADB"
    );
    port (
        clk : in std_logic;
        rst : in std_logic;
        receiver_q8_in : in receiver_q8_in_type;
        receiver_q8_out : out receiver_q8_out_type);
end RECEIVER_Q8;

architecture struct of RECEIVER_Q8 is
    type st_type is (ready, first_zero, receiving, wait_next_zero);
    type queue_type is array (2048 downto 0) of std_logic_vector (7 downto 0);
    type reg_type is record
        bytes : std_logic_vector (2 downto 0);
        bits_buff : std_logic_vector (7 downto 0);
        output_bits_buff : std_logic_vector (7 downto 0);
        bits : std_logic_vector (3 downto 0);
        counter : std_logic_vector (15 downto 0);
        rs_rxb : std_logic;
        st : st_type;
        queue : queue_type;
        mem_addr : std_logic_vector (10 downto 0);
        mem_din : std_logic_vector (7 downto 0);
        mem_we : std_logic;
        mem_dout : std_logic_vector (7 downto 0);
        qhd : std_logic_vector (10 downto 0);
        qtl : std_logic_vector (10 downto 0);
    end record;
    signal r, rin : reg_type := (
        bytes => "001",
        bits_buff => (others => '0'),
        output_bits_buff => (others => '0'),
        bits => "1001",
        counter => (others => '0'),
        rs_rxb => '1',
        st => ready,
        queue => (others => (others => '0')),
        mem_addr => (others => '0'),
        mem_din => (others => '0'),
        mem_we => '0',
        mem_dout => (others => '0'),
        qhd => (others => '0'),
        qtl => (others => '0'));
    component receiver_fifo IS
        PORT (
                 a : IN STD_LOGIC_VECTOR(10 DOWNTO 0);
                 d : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
                 clk : IN STD_LOGIC;
                 we : IN STD_LOGIC;
                 spo : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
             );
    end component;
    signal mem_addr : std_logic_vector (10 downto 0);
    signal mem_din : std_logic_vector (7 downto 0);
    signal mem_we : std_logic := '0';
    signal mem_dout : std_logic_vector (7 downto 0);
begin
    rfifo : receiver_fifo port map (mem_addr, mem_din, clk, mem_we, mem_dout);
    comb : process (receiver_q8_in, r)
        variable v : reg_type;
    begin
        v := r;
        v.rs_rxb := receiver_q8_in.RS_RX;

        v.mem_addr := r.qhd;
        v.mem_we := '0';

        if rst = '1' then
            v.qhd := (others => '0');
            v.qtl := (others => '0');
        end if;

        if receiver_q8_in.pop = '1' then
            if r.qhd /= r.qtl then
                v.qhd := std_logic_vector(unsigned(r.qhd) + 1);
            end if;
        end if;
        case r.st is
            when ready =>
                if r.rs_rxb = '0' then
                    v.st := first_zero;
                    v.counter := '0' & wtime (15 downto 1);
                    v.bits := "1001";
                    v.bytes := "001";
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
                    if v.bits = "0000" then -- received one byte
                        v.bytes := std_logic_vector(unsigned(r.bytes) - 1);
                        v.bits := "1001";
                        if r.qhd /= std_logic_vector(unsigned(r.qtl) + 1) then -- 溢れたら溢れたぶんは捨てられる
                            v.mem_din := r.bits_buff;
                            v.mem_we := '1';
                            v.mem_addr := r.qtl;
                            v.qtl := std_logic_vector(unsigned(r.qtl) + 1);
                        end if;
                        if v.bytes = "000" then
                            v.st := ready;
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

        if r.qhd /= r.qtl and r.mem_we = '0' then
            receiver_q8_out.valid <= '1';
        else
            receiver_q8_out.valid <= '0';
        end if;

        receiver_q8_out.data <= mem_dout;
        mem_din <= v.mem_din;
        mem_we <= v.mem_we;
        mem_addr <= v.mem_addr;
        rin <= v;
    end process;

    reg : process (clk)
    begin
        if rising_edge (clk) then
            r <= rin;
        end if;
    end process;
end struct;
