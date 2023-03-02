----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:14:39 04/13/2022 
-- Design Name: 
-- Module Name:    jk_flipflop_rtl - Behavioral 
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

entity jk_flipflop_rtl is
    Port ( j : in  STD_LOGIC;
           k : in  STD_LOGIC;
           clock : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           q : out  STD_LOGIC;
           qp : out  STD_LOGIC);
end jk_flipflop_rtl;

architecture Behavioral of jk_flipflop_rtl is

signal temp1,temp2 : STD_LOGIC := '0';

begin

q<=temp1;
qp<=temp2;
process(clock,reset)
begin
if(reset ='1') then
temp1<='0';
temp2<='1';
elsif(rising_edge(clock)) then
if(j='0' and k='0') then
NULL;
elsif(j='0' and k='1') then
temp1<='0';
temp2<='1';
elsif(j='1' and k='0') then
temp1<='1';
temp2<='0';
else
temp1<= not temp1;
temp2<= not temp2;
end if;
end if;
end process;

end Behavioral;
