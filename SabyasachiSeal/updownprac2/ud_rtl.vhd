----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:24:22 05/25/2022 
-- Design Name: 
-- Module Name:    ud_rtl - Behavioral 
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
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ud_rtl is
    Port ( d : in  STD_LOGIC;
           clr : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           count : out  STD_LOGIC_VECTOR (3 downto 0));
end ud_rtl;

architecture Behavioral of ud_rtl is
signal temp:std_logic_vector(3 downto 0):="0000";
begin
process(clr, clk) begin
	if(rising_edge(clk)) then
		if (clr='1') then
			temp<="0000";
		elsif(clr='0' and d='1') then
			temp<=temp+'1';
		elsif(clr='0' and d='0') then
			temp<=temp-'1';
		end if;
	end if;
end process;
count <= temp;

end Behavioral;

