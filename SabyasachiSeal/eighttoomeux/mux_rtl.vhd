----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:42:59 05/25/2022 
-- Design Name: 
-- Module Name:    mux_rtl - Behavioral 
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

entity mux_rtl is
    Port ( d0 : in  STD_LOGIC_VECTOR (2 downto 0);
           d1 : in  STD_LOGIC_VECTOR (2 downto 0);
           d2 : in  STD_LOGIC_VECTOR (2 downto 0);
           d3 : in  STD_LOGIC_VECTOR (2 downto 0);
           d4 : in  STD_LOGIC_VECTOR (2 downto 0);
           d5 : in  STD_LOGIC_VECTOR (2 downto 0);
           d6 : in  STD_LOGIC_VECTOR (2 downto 0);
           d7 : in  STD_LOGIC_VECTOR (2 downto 0);
           s : in  STD_LOGIC_VECTOR (2 downto 0);
           y : out  STD_LOGIC_vector(2 downto 0));
end mux_rtl;

architecture Behavioral of mux_rtl is

begin
process(d0, d1, d2, d3, d4, d5, d6 ,d7, s)
	begin case s is
		when "000" => y <= d0;
		when "001" => y <= d1;
		when "010" => y <= d2;
		when "011" => y <= d3;
		when "100" => y <= d4;
		when "101" => y <= d5;
		when "110" => y <= d6;
		when others => y <= d7;
	end case;
end process;
end Behavioral;

