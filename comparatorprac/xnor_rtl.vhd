----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    07:23:50 06/14/2022 
-- Design Name: 
-- Module Name:    xnor_rtl - Behavioral 
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

entity xnor_rtl is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           xout : out  STD_LOGIC);
end xnor_rtl;

architecture Behavioral of xnor_rtl is
signal temp:std_logic:='0';
begin
temp <= ((not a) and b) or ((not b) and a);
xout <= not temp;
end Behavioral;

