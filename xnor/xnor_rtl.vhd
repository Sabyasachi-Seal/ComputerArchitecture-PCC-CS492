----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:50:06 03/30/2022 
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
    Port ( x_a : in  STD_LOGIC;
           x_b : in  STD_LOGIC;
           x_out : out  STD_LOGIC);
end xnor_rtl;

architecture Behavioral of xnor_rtl is

begin

x_out <= x_a xnor x_b;

end Behavioral;

