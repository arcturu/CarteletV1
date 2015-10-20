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
begin
    FADD1 : FADD port map (
        input1 => fadd_lhs,
        input2 => fadd_rhs,
        output => fadd_result);
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

