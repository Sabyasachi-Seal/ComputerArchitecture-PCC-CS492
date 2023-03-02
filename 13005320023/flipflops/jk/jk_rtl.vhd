----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:48:40 04/07/2022 
-- Design Name: 
-- Module Name:    jk_rtl - Behavioral 
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

entity jk_rtl is
    Port ( j : in  STD_LOGIC;
           k : in  STD_LOGIC;
           clk : in  STD_LOGIC;
			  rst : in  STD_LOGIC;
           q : out  STD_LOGIC;
           nq : out  STD_LOGIC);
end jk_rtl;

architecture Behavioral of jk_rtl is
signal temp: STD_LOGIC:='0';
begin
process (j ,k, clk) begin
if (rst = '1') then
temp <= '0';
elsif(rising_edge(clk)) then
if (j = '0') and (k = '0') then
temp <= temp;

elsif (j = '0') and (k = '1') then
temp <= '0';

elsif (j = '1') and (k = '0') then
temp <= '1';

else
temp <= '0';

end if;
end if;

q <= temp;
nq <= not temp;
end process;


end Behavioral;

