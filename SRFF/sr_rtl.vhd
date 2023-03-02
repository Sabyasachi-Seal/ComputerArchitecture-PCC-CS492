----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:31:50 04/13/2022 
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
    Port ( S : in  STD_LOGIC;
           R : in  STD_LOGIC;
           Reset : in  STD_LOGIC;
           C : in  STD_LOGIC;
           Q : out  STD_LOGIC;
           Qp : out  STD_LOGIC);
end sr_rtl;
architecture Behavioral of sr_rtl is
signal t1,t2:STD_LOGIC:='0';
begin 
process(S,R,C,Reset)
begin
	if(Reset = '1') then
		t1 <= '0';t2 <= '1';
	elsif(rising_edge(C)) then
		if(S = '0' and R = '0') then
			Q<=t1;Qp<=t2;
		elsif(S = '0' and R = '1') then
			Q <= '0';Qp <= '1';
		elsif(S = '1' and R = '0') then
			Q <= '1';Qp <= '0';
		elsif(S = '1' and R = '1') then
			Q <= 'X';Qp <= 'X';
		end if;
	end if;
end process;
end Behavioral;

