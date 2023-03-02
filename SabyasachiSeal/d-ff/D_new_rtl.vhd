----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:56:18 05/04/2022 
-- Design Name: 
-- Module Name:    D_new_rtl - Behavioral 
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

entity D_new_rtl is
    Port ( CLK : in  STD_LOGIC;
           RESET : in  STD_LOGIC;
           din : in  STD_LOGIC;
           q : out  STD_LOGIC;
			  nq : out  STD_LOGIC);
end D_new_rtl;
architecture Behavioral of D_new_rtl is
signal temp:std_logic:='0';

begin
process (CLK,din,RESET)
begin
  if(RESET='1') then
	temp <='0';
  elsif(CLK'event and CLK='1') then
	temp <= din;
end  if;
end process;
q<=temp;
nq<=not temp;
end Behavioral;
