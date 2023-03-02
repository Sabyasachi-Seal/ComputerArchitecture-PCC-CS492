----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:40:07 03/30/2022 
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
    Port ( fa_a : in  STD_LOGIC;
           fa_b : in  STD_LOGIC;
           fa_cin : in  STD_LOGIC;
           fa_sum : out  STD_LOGIC;
           fa_cout : out  STD_LOGIC);
end fa_rtl;

architecture Behavioral of fa_rtl is

component ha_rtl is
    Port ( ha_a : in  STD_LOGIC;
           ha_b : in  STD_LOGIC;
           ha_sum : out  STD_LOGIC;
           ha_carry : out  STD_LOGIC);
end component;

signal temp,c1,c2:STD_LOGIC:='0';

begin

ha0: ha_rtl port map(ha_a=>fa_a, ha_b=>fa_b, ha_sum=>temp, ha_carry=>c1);

ha1: ha_rtl port map(ha_a=>temp, ha_b=>fa_cin, ha_sum=>fa_sum, ha_carry=>c2);

fa_cout <= c1 or c2;

end Behavioral;

