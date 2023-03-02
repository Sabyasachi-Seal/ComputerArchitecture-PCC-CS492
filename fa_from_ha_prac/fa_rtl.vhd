----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:34:19 06/14/2022 
-- Design Name: 
-- Module Name:    fa_rtl - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity fa_rtl is
    Port ( fa : in  STD_LOGIC;
           fb : in  STD_LOGIC;
           fcin : in  STD_LOGIC;
           fsum : out  STD_LOGIC;
           fcarry : out  STD_LOGIC);
end fa_rtl;

architecture Behavioral of fa_rtl is
component ha_rtl is
    Port ( ha : in  STD_LOGIC;
           hb : in  STD_LOGIC;
           sum : out  STD_LOGIC;
           carry : out  STD_LOGIC);
end component;
signal temp, c1, c2:std_logic:='0';
begin
h0: ha_rtl port map (ha=>fa, hb=>fb, sum=>temp, carry=>c1);
h1: ha_rtl port map(ha=>temp, hb=>fcin, sum=>fsum, carry=>c2);
fcarry <= c1 or c2;

end Behavioral;

