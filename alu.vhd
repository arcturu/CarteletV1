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
        variable tmp : std_logic_vector (31 downto 0);
    begin
        v := r;
        case alu_in.command is
            when ALU_ADD =>
                v.data := std_logic_vector(signed(alu_in.lhs) + signed(alu_in.rhs));
            when ALU_ADDU =>
                v.data := std_logic_vector(unsigned(alu_in.lhs) + unsigned(alu_in.rhs));
            when ALU_SUB =>
                v.data := std_logic_vector(signed(alu_in.lhs) - signed(alu_in.rhs));
            when ALU_SLL =>
                tmp := alu_in.lhs;
                if alu_in.rhs (0) = '1' then
                    tmp := tmp (30 downto 0) & '0';
                end if;
                if alu_in.rhs (1) = '1' then
                    tmp := tmp (29 downto 0) & "00";
                end if;
                if alu_in.rhs (2) = '1' then
                    tmp := tmp (27 downto 0) & "0000";
                end if;
                if alu_in.rhs (3) = '1' then
                    tmp := tmp (23 downto 0) & "00000000";
                end if;
                if alu_in.rhs (4) = '1' then
                    tmp := tmp (15 downto 0) & "0000000000000000";
                end if;
                if alu_in.rhs (31 downto 5) /= "000000000000000000000000000" then
                    tmp := (others => '0');
                end if;
                v.data := tmp;
            when ALU_SRL =>
                tmp := alu_in.lhs;
                if alu_in.rhs (0) = '1' then
                    tmp := '0' & tmp (31 downto 1);
                end if;
                if alu_in.rhs (1) = '1' then
                    tmp := "00" & tmp (31 downto 2);
                end if;
                if alu_in.rhs (2) = '1' then
                    tmp := "0000" & tmp (31 downto 4);
                end if;
                if alu_in.rhs (3) = '1' then
                    tmp := "00000000" & tmp (31 downto 8);
                end if;
                if alu_in.rhs (4) = '1' then
                    tmp := "0000000000000000" & tmp (31 downto 16);
                end if;
                if alu_in.rhs (31 downto 5) /= "000000000000000000000000000" then
                    tmp := (others => '0');
                end if;
                v.data := tmp;
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
