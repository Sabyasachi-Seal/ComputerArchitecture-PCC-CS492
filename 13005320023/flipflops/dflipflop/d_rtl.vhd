----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:40:23 04/07/2022 
-- Design Name: 
-- Module Name:    d_rtl - Behavioral 
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

entity d_rtl is
    Port ( d : in  STD_LOGIC;
				clk : in STD_LOGIC;
           q : out  STD_LOGIC;
           nq : out  STD_LOGIC;
           rst : in  STD_LOGIC);
end d_rtl;

architecture Behavioral of d_rtl is
signal temp: STD_LOGIC:= '0';
begin
process (rst, d, clk) begin
if (rst = '1') then
temp <= '0';
elsif(rising_edge(clk)) then
temp <= '1';
end if;

q <= temp;
nq <= not temp;
end process;

end Behavioral;

