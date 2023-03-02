----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:04:38 04/18/2022 
-- Design Name: 
-- Module Name:    PISO_RTL - Behavioral 
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

entity PISO_RTL is
    Port ( pin : in  STD_LOGIC_VECTOR (3 downto 0);
           pout : out  STD_LOGIC;
           si : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           reset : in  STD_LOGIC);
end PISO_RTL;

architecture Behavioral of PISO_RTL is
component D_new_rtl is
    Port ( CLK : in  STD_LOGIC;
           din : in  STD_LOGIC;
           RESET : in  STD_LOGIC;
           dout : out  STD_LOGIC);
end component;
signal t1,t2,t3,t4,c1,c2,c3:STD_LOGIC:='0';
begin
t1<=(not si) and pin(0);
D0: D_new_rtl port map(din=>t1, RESET=>reset, CLK=>clk, dout=>c1);

t2<=((not si) and pin(1))or(c1 and si);
D1: D_new_rtl port map(din=>t2, RESET=>reset, CLK=>clk, dout=>c2);

t3<=((not si) and pin(2))or(c2 and si);
D2: D_new_rtl port map(din=>t3, RESET=>reset, CLK=>clk, dout=>c3);

t4<=((not si) and pin(3))or(c3 and si);
D3: D_new_rtl port map(din=>t4, RESET=>reset, CLK=>clk, dout=>pout);
end Behavioral;

