----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:59:27 03/30/2022 
-- Design Name: 
-- Module Name:    nand_rtl - Behavioral 
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

entity nand_rtl is
    Port ( n_a : in  STD_LOGIC;
           n_b : in  STD_LOGIC;
           n_out : out  STD_LOGIC);
end nand_rtl;

architecture Behavioral of nand_rtl is

begin

n_out <= not(n_a and n_b);

end Behavioral;

