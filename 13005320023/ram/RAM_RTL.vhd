----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:13:29 05/02/2022 
-- Design Name: 
-- Module Name:    RAM_RTL - Behavioral 
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
use IEEE.numeric_std.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity RAM_RTL is
    Port ( address : in  STD_LOGIC_VECTOR (6 downto 0);
           data_in : in  STD_LOGIC_VECTOR (7 downto 0);
           write_in : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           data_out : out  STD_LOGIC_VECTOR (7 downto 0));
end RAM_RTL;

architecture Behavioral of RAM_RTL is
type ram_array is array(0 to 31) of STD_LOGIC_VECTOR(7 downto 0);
signal ram_data : ram_array :=(
b"10000000", b"01001101", x"77", x"67",
x"99", x"25", x"00", x"1A", 
x"00", x"00", x"00", x"00", 
x"00", x"00", x"00", x"00",
x"00", x"0F", x"00", x"00", 
x"00", x"00", b"00111100", x"00", 
x"00", x"00", x"00", x"00",  
x"00", x"00", x"00", x"1F"
);
begin
process(clk)
begin
	if(rising_edge(clk)) then
	if(write_in='1') then
		ram_data(to_integer(unsigned(address)))<=data_in;
	end if;
	end if;
end process;
	data_out<=ram_data(to_integer(unsigned(address)));
end Behavioral;

