----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:15:07 05/25/2022 
-- Design Name: 
-- Module Name:    t_rtl - Behavioral 
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

entity t_rtl is
    Port ( t : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           rst : in  STD_LOGIC;
           q : out  STD_LOGIC;
           nq : out  STD_LOGIC);
end t_rtl;

architecture Behavioral of t_rtl is
signal temp:std_logic:='0';
begin
process(t, clk) begin
	if(rst='1') then
		temp<='0';
	elsif(clk'event and clk='1') then
		if(t='1') then
			temp<= not temp;
		elsif(temp='0') then
			temp<=temp;
		end if;
	end if;
end process;
q<=temp;
nq<=not temp;

end Behavioral;

