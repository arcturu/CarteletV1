library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity sram_sim is
    port (
        ZD     : inout std_logic_vector (31 downto 0);
        ZA     : in    std_logic_vector (19 downto 0);
        XWA    : in    std_logic;
        XE1    : in    std_logic;
        E2A    : in    std_logic;
        XE3    : in    std_logic;
        XGA    : in    std_logic;
        XZCKE  : in    std_logic;
        ADVA   : in    std_logic;
        XLBO   : in    std_logic;
        ZZA    : in    std_logic;
        XFT    : in    std_logic;
        XZBE   : in    std_logic_vector (3 downto 0);
        ZCLKMA : in    std_logic_vector (1 downto 0));

end sram_sim;

architecture behaviour of sram_sim is
    type mem_type is array (1023 downto 0) of std_logic_vector (31 downto 0);
    signal mem : mem_type;
    type data_type is array (1 downto 0) of std_logic_vector (31 downto 0);
    type addr_type is array (1 downto 0) of std_logic_vector (19 downto 0);
    type reg_type is record
        xwab : std_logic_vector (1 downto 0);
        zdbi : data_type;
        zab  : addr_type;
    end record;
    constant reg_init : reg_type := (
        xwab => (others => '0'),
        zdbi => (others => (others => '0')),
        zab => (others => (others => '0')));
    signal r, rin : reg_type := reg_init;
begin
    comb : process (r, ZD, ZA, XWA)
        variable v : reg_type := reg_init;
        variable zdbo : std_logic_vector (31 downto 0);
    begin
        v := r;
        v.xwab(0) := XWA;
        v.xwab(1) := r.xwab(0);
        v.zdbi(0) := ZD;
        v.zdbi(1) := r.zdbi(0);
        v.zab(0) := ZA;
        v.zab(1) := v.zab(0);

        zdbo := (others => 'Z');
        if r.zab(1)(0) = '1' or r.zab(1)(0) = '0' then
            if r.xwab(1) = '0' then
                mem(to_integer(unsigned(r.zab(1)))) <= ZD;
            elsif r.xwab(1) = '1' then
                if r.xwab(0) = '0' and r.zab(0) = r.zab(1) then
                    zdbo := r.zdbi(0);
                else
                    zdbo := mem(to_integer(unsigned(r.zab(1))));
                end if;
            end if;
        else
            zdbo := (others => 'U');
        end if;
        ZD <= zdbo;
        rin <= v;
    end process;

    reg : process (ZCLKMA(0))
    begin
        if rising_edge(ZCLKMA(0)) then
            r <= rin;
        end if;
    end process;
end behaviour;
