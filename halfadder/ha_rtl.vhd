----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:40:55 03/30/2022 
-- Design Name: 
-- Module Name:    ha_rtl - Behavioral 
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

entity ha_rtl is
    Port ( ha_a : in  STD_LOGIC;
           ha_b : in  STD_LOGIC;
           ha_sum : out  STD_LOGIC;
           ha_carry : out  STD_LOGIC);
end ha_rtl;

architecture Behavioral of ha_rtl is

begin

ha_sum <= ha_a xor ha_b;

ha_carry <= ha_a and ha_b;

end Behavioral;

