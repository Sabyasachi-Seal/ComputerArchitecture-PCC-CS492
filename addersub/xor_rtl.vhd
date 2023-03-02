----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:40:55 03/29/2022 
-- Design Name: 
-- Module Name:    xor_rtl - Behavioral 
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

entity xor_rtl is
    Port ( xor_a : in  STD_LOGIC;
           xor_b : in  STD_LOGIC;
           xor_out : out  STD_LOGIC);
end xor_rtl;

architecture Behavioral of xor_rtl is

begin

xor_out <= ((not xor_a) and xor_b) or ( xor_a and (not xor_b));

end Behavioral;

