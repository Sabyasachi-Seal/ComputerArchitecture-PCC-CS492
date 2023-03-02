----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:37:59 06/14/2022 
-- Design Name: 
-- Module Name:    sr_rtl - Behavioral 
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

entity sr_rtl is
    Port ( s : in  STD_LOGIC;
           r : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           rst : in  STD_LOGIC;
           q : out  STD_LOGIC;
           nq : out  STD_LOGIC);
end sr_rtl;

architecture Behavioral of sr_rtl is
signal temp:std_logic:='0';

begin
process(s, r, clk, rst) begin
	if(rst = '1') then
		temp<='0';
	elsif(rising_edge(clk)) then
		if(s='1' and r='1') then
			temp<='X';
		elsif(s = '0' and r = '1') then
			temp <= '0';
		elsif(s = '1' and r = '0') then
			temp <= '1';
		elsif(s = '0' and r = '0') then
			temp <= temp;
		end if;
	end if;
end process;
q <= temp;
nq <= not temp;
end Behavioral;

