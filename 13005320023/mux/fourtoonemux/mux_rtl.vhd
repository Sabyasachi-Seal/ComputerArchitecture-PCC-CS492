----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    08:41:17 04/07/2022 
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
    Port ( d0 : in  STD_LOGIC_VECTOR (1 downto 0);
           d1 : in  STD_LOGIC_VECTOR (1 downto 0);
           d2 : in  STD_LOGIC_VECTOR (1 downto 0);
           d3 : in  STD_LOGIC_VECTOR (1 downto 0);
           s : in  STD_LOGIC_VECTOR (1 downto 0);
           y : out  STD_LOGIC_VECTOR (1 downto 0));
end mux_rtl;

architecture Behavioral of mux_rtl is

begin
process (s, d0, d1, d2, d3)
begin case s is
when "00" => y <= d0;
when "01" => y <= d1;
when "10" => y <= d2;
when others => y <= d3;
end case;
end process;
end Behavioral;

