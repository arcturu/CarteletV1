library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity dmem_sim is
    port (
        a : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
        d : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
        clk : IN STD_LOGIC;
        we : IN STD_LOGIC;
        spo : OUT STD_LOGIC_VECTOR(31 DOWNTO 0));
end dmem_sim;

architecture behaviour of dmem_sim is
    type mem_type is array (1023 downto 0) of std_logic_vector (31 downto 0);
    signal mem : mem_type;
begin
    process (clk)
    begin
        if rising_edge (clk) then
            if we = '1' then
                mem (to_integer(unsigned(a))) <= d;
            else
                spo <= mem (to_integer(unsigned(a)));
            end if;
        end if;
    end process;
end behaviour;
