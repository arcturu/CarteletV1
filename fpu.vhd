library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use work.types.all;

entity FPU is
    port (
        clk : in std_logic;
        rst : in std_logic;
        fpu_in : in  fpu_in_type;
        fpu_out : out fpu_out_type);
end entity;

architecture struct of FPU is
    type reg_type is record
        data : std_logic_vector (31 downto 0);
    end record;
    constant reg_init : reg_type := (
        data => (others => '0'));
    signal r, rin : reg_type := reg_init;
    component FADD is
        Port (
             input1  : in  STD_LOGIC_VECTOR (31 downto 0);
             input2  : in  STD_LOGIC_VECTOR (31 downto 0);
             output  : out STD_LOGIC_VECTOR (31 downto 0));
    end component;
    signal fadd_lhs : std_logic_vector (31 downto 0) := (others => '0');
    signal fadd_rhs : std_logic_vector (31 downto 0) := (others => '0');
    signal fadd_result : std_logic_vector (31 downto 0) := (others => '0');

    component finv is
      Port (
        clk     : in  STD_LOGIC;
        input   : in  STD_LOGIC_VECTOR (31 downto 0);
        output  : out STD_LOGIC_VECTOR (31 downto 0));
    end component;
    signal finv_input : std_logic_vector (31 downto 0) := (others => '0');
    signal finv_output : std_logic_vector (31 downto 0) := (others => '0');

    component fsqrt is
      Port (
        clk     : in  STD_LOGIC;
        input   : in  STD_LOGIC_VECTOR (31 downto 0);
        output  : out STD_LOGIC_VECTOR (31 downto 0));
    end component;
    signal fsqrt_input : std_logic_vector (31 downto 0) := (others => '0');
    signal fsqrt_output : std_logic_vector (31 downto 0) := (others => '0');
begin
    FADD1 : FADD port map (
        input1 => fadd_lhs,
        input2 => fadd_rhs,
        output => fadd_result);
    FINV1 : FINV port map (
        clk => clk,
        input => finv_input,
        output => finv_output);
    FSQRT1 : fsqrt port map (
        clk => clk,
        input => fsqrt_input,
        output => fsqrt_output);
    comb : process (fpu_in, r, fadd_lhs, fadd_rhs, fadd_result)
        variable v : reg_type := reg_init;
    begin
        v := r;
        case fpu_in.command is
            when FPU_ADD =>
                fadd_lhs <= fpu_in.lhs;
                fadd_rhs <= fpu_in.rhs;
                v.data := fadd_result;
            when FPU_NEG =>
                if fpu_in.lhs (31) = '1' then
                    v.data := '0' & fpu_in.lhs (30 downto 0);
                else
                    v.data := '1' & fpu_in.lhs (30 downto 0);
                end if;
            when FPU_ABS =>
                v.data := '0' & fpu_in.lhs (30 downto 0);
            when FPU_NOP =>
                v.data := fpu_in.lhs;
            when FPU_INV =>
                finv_input <= fpu_in.lhs;
                v.data := finv_output;
            when FPU_SQRT =>
                fsqrt_input <= fpu_in.lhs;
                v.data := fsqrt_output;
            when others =>
        end case;

        fpu_out.data <= r.data;
        rin <= v;
    end process;

    reg : process (clk)
    begin
        if rising_edge(clk) then
            r <= rin;
        end if;
    end process;
end struct;

