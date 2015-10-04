library ieee;
library unisim;
use unisim.vcomponents.all;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use work.types.all;

entity TOP is
    generic (
        wtime : std_logic_vector (15 downto 0) := x"1ADB"
    );
    port (
        MCLK1  : in    std_logic;
        RS_RX  : in    std_logic;
        RS_TX  : out   std_logic;
        ZD     : inout std_logic_vector (31 downto 0);
        ZA     : out   std_logic_vector (19 downto 0);
        XWA    : out   std_logic;
        XE1    : out   std_logic;
        E2A    : out   std_logic;
        XE3    : out   std_logic;
        XGA    : out   std_logic;
        XZCKE  : out   std_logic;
        ADVA   : out   std_logic;
        XLBO   : out   std_logic;
        ZZA    : out   std_logic;
        XFT    : out   std_logic;
        XZBE   : out   std_logic_vector (3 downto 0);
        ZCLKMA : out   std_logic_vector (1 downto 0));
end TOP;

architecture struct of TOP is
    signal clk : std_logic;
    signal iclk : std_logic;
    signal rst : std_logic := '0';

    signal sender_in    : sender_in_type    := sender_in_init;
    signal sender_out   : sender_out_type   := sender_out_init;
    signal receiver_in  : receiver_in_type  := receiver_in_init;
    signal receiver_out : receiver_out_type := receiver_out_init;
    signal cpu_in       : cpu_in_type       := cpu_in_init;
    signal cpu_out      : cpu_out_type      := cpu_out_init;

begin
    ib : IBUFG port map (
        i => MCLK1,
        o => iclk);
    bg : BUFG port map (
        i => iclk,
        o => clk);
    sender_1 : sender generic map (wtime) port map (clk, rst, sender_in, sender_out);
    receiver_1 : receiver generic map (wtime) port map (clk, rst, receiver_in, receiver_out);
    cpu_1 : cpu port map (clk, rst, cpu_in, cpu_out);

    receiver_in.RS_RX <= RS_RX;
    RS_TX <= sender_out.RS_TX;
    cpu_in.ex_data <= receiver_out.data;
    cpu_in.ex_valid <= receiver_out.valid;
    cpu_in.ex_fresh <= receiver_out.fresh;
    sender_in.data <= cpu_out.ex_data;
    sender_in.go <= cpu_out.ex_go;

    cpu_in.sram_din <= ZD;
    ZD <= cpu_out.sram_dout;
    ZA <= cpu_out.sram_addr;
    XWA <= not cpu_out.sram_we;
    XE1 <= '0';
    E2A <= '1';
    XE3 <= '0';
    XGA <= '0';
    XZCKE <= '0';
    ADVA <= '0';
    XLBO <= '1';
    ZZA <= '0';
    XFT <= '1';
    XZBE <= "0000";
    ZCLKMA (0) <= clk;
    ZCLKMA (1) <= clk;
end struct;

