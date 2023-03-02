----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:57:23 06/14/2022 
-- Design Name: 
-- Module Name:    ud_rtl - Behavioral 
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

entity ud_rtl is
    Port ( d : in  STD_LOGIC;
           count : out  STD_LOGIC_VECTOR (3 downto 0);
           rst : in  STD_LOGIC;
           clk : in  STD_LOGIC);
end ud_rtl;

architecture Behavioral of ud_rtl is
component jk_rtl is
    Port ( j : in  STD_LOGIC;
           k : in  STD_LOGIC;
           rst : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           q : out  STD_LOGIC;
           nq : out  STD_LOGIC);
end component;

signal Q1,Q2,Q3,Q4,Qbar1,Qbar2,Qbar3,Qbar4 : std_logic :='0';
signal o1,o2,o3,A1,A2,A3,Ab1,Ab2,Ab3 :std_logic:='0';
begin

A1<=Q1 and d;
A2<=Q2 and A1;
A3<=Q3 and A2;

Ab1<=Qbar1 and (not d);
Ab2<=Qbar2 and Ab1;
Ab3<=Qbar3 and Ab2;

o1<=A1 or Ab1;
o2<=A2 or Ab2;
o3<=A3 or Ab3;

FF1: jk_rtl port map(clk=>clk,j=>'1',k=>'1',q=>Q1,nq=>Qbar1,rst=>rst);
FF2: jk_rtl port map(clk=>clk,j=>o1,k=>o1,q=>Q2,nq=>Qbar2,rst=>rst);
FF3: jk_rtl port map(clk=>clk,j=>o2,k=>o2,q=>Q3,nq=>Qbar3,rst=>rst);
FF4: jk_rtl port map(clk=>clk,j=>o3,k=>o3,q=>Q4,nq=>Qbar4,rst=>rst);
count <= Q4 & Q3 & Q2 & Q1;

end Behavioral;

