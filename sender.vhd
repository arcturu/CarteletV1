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
    component sender_fifo_mem IS
        PORT (
                 a : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
                 d : IN STD_LOGIC_VECTOR(32 DOWNTO 0);
                 clk : IN STD_LOGIC;
                 we : IN STD_LOGIC;
                 spo : OUT STD_LOGIC_VECTOR(32 DOWNTO 0)
             );
    END component;
    type st_type is (ready, sending_a_bit);
    type reg_type is record
        read : std_logic_vector (1 downto 0);
        buff : std_logic_vector (31 downto 0);
        sending_buff : std_logic_vector (8 downto 0);
        st : st_type;
        counter : std_logic_vector (15 downto 0);
        rem_bits : std_logic_vector (3 downto 0);
        rem_bytes : std_logic_vector (2 downto 0);
        qhd : std_logic_vector (4 downto 0);
        qtl : std_logic_vector (4 downto 0);
    end record;
    signal r, rin : reg_type := (
        read => (others => '0'),
        buff => (others => '1'),
        sending_buff => (others => '1'),
        st => ready,
        counter => (others => '0'),
        rem_bits => (others => '0'),
        rem_bytes => (others => '0'),
        qhd => (others => '0'),
        qtl => (others => '0')
    );
    signal mem_addr : std_logic_vector (4 downto 0) := (others => '0'); -- TODO: sender_fifo_mem.a の幅に合わせる
    signal mem_din : std_logic_vector (32 downto 0) := (others => '0');
    signal mem_dout : std_logic_vector (32 downto 0) := (others => '0');
    signal mem_we : std_logic := '0';
begin
    sender_fifo_mem1 : sender_fifo_mem port map (mem_addr, mem_din, clk, mem_we, mem_dout);

    sender_out.RS_TX <= r.sending_buff (0);
    sender_out.busy <= '1' when unsigned(r.qtl) + 1 = unsigned(r.qhd) else '0';

    comb : process (sender_in, r)
        variable v : reg_type;
        variable ex_mem_addr : std_logic_vector (4 downto 0) := (others => '0');
        variable ex_mem_din : std_logic_vector (32 downto 0) := (others => '0');
        variable ex_mem_we : std_logic := '0';
    begin
        v := r;
        ex_mem_addr := r.qhd;
        ex_mem_we := '0';
        v.read (0) := '0';
        v.read (1) := r.read (0);
        if (sender_in.go = '1' or sender_in.go8 = '1') and unsigned(r.qtl) + 1 /= unsigned(r.qhd) then -- not filled
            v.read (0) := '1';
            ex_mem_addr := r.qtl;
            if sender_in.go = '1' then
                ex_mem_din := '1' & sender_in.data;
            elsif sender_in.go8 = '1' then
                ex_mem_din := '0' & sender_in.data;
            end if;
            ex_mem_we := '1';
            v.qtl := std_logic_vector(unsigned(r.qtl) + 1);
        end if;
        case r.st is
            when ready =>
                if r.qhd /= r.qtl and r.read(0) = '0' and r.read(1) = '0' then
                    v.buff := mem_dout (31 downto 0);
                    v.sending_buff := v.buff (31 downto 24) & '0';
                    v.st := sending_a_bit;
                    v.counter := wtime;
                    v.rem_bits := x"a";
                    if mem_dout (32) = '1' then -- 先頭ビットは 4byte or not (1 で4byte)
                        v.rem_bytes := "100";
                    else
                        v.rem_bytes := "001";
                    end if;
                    v.qhd := std_logic_vector(unsigned(r.qhd) + 1);
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
        mem_addr <= ex_mem_addr;
        mem_din <= ex_mem_din;
        mem_we <= ex_mem_we;
        rin <= v;
    end process;
    reg : process (clk)
    begin
        if rising_edge(clk) then
            r <= rin;
        end if;
    end process;
end struct;
