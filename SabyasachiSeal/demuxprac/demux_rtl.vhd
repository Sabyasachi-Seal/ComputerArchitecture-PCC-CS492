----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:04:51 05/25/2022 
-- Design Name: 
-- Module Name:    demux_rtl - Behavioral 
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

entity demux_rtl is
    Port ( y0 : out  STD_LOGIC;
           y1 : out  STD_LOGIC;
           y2 : out  STD_LOGIC;
           y3 : out  STD_LOGIC;
           d : in  STD_LOGIC;
           s : in  STD_LOGIC_VECTOR (1 downto 0));
end demux_rtl;

architecture Behavioral of demux_rtl is

begin
process(s, d) begin
	case s is
		when "00" => y0 <=d; y1<='0'; y2<='0'; y3<='0';
		when "01" => y0 <='0'; y1<=d; y2<='0'; y3<='0';
		when "10" => y0 <='0'; y1<='0'; y2<=d; y3<='0';
		when others => y0 <='0'; y1<='0'; y2<='0'; y3<=d;
	end case;
end process;

end Behavioral;

