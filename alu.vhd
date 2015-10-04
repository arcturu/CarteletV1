library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use work.types.all;

entity ALU is
    port (
        clk : in std_logic;
        rst : in std_logic;
        alu_in : in  alu_in_type;
        alu_out : out alu_out_type);
end entity;

architecture struct of ALU is
    type reg_type is record
        data : std_logic_vector (31 downto 0);
    end record;
    constant reg_init : reg_type := (
        data => (others => '0'));
    signal r, rin : reg_type := reg_init;
begin
    comb : process (alu_in, r)
        variable v : reg_type := reg_init;
    begin
        v := r;
        case alu_in.command is
            when ALU_ADD =>
                v.data := std_logic_vector(signed(alu_in.lhs) + signed(alu_in.rhs));
            when ALU_SUB =>
                v.data := std_logic_vector(signed(alu_in.lhs) - signed(alu_in.rhs));
            when others =>
                v.data := (others => '0');
        end case;

        alu_out.data <= r.data;
        rin <= v;
    end process;

    reg : process (clk)
    begin
        if rising_edge(clk) then
            r <= rin;
        end if;
    end process;
end struct;
