----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:45:48 04/18/2022 
-- Design Name: 
-- Module Name:    sipo_Rtl - Behavioral 
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

entity sipo_Rtl is
    Port ( d : in  STD_LOGIC;
           c : in  STD_LOGIC;
           rst : in  STD_LOGIC;
           Qout : out  STD_LOGIC_VECTOR (3 downto 0));
end sipo_Rtl;

architecture Behavioral of sipo_Rtl is
component D_Rtl is
    Port ( D : in  STD_LOGIC;
           CLK : in  STD_LOGIC;
           RESET : in  STD_LOGIC;
           q : out  STD_LOGIC;
           qbar : out  STD_LOGIC);
end component;
signal tA,tB,tC: STD_LOGIC:='0';
begin
ff0: D_Rtl port map(D=>d,CLK=>c,RESET=>rst,q=>tA);
ff1: D_Rtl port map(D=>tA,CLK=>c,RESET=>rst,q=>tB);
ff2: D_Rtl port map(D=>tB,CLK=>c,RESET=>rst,q=>tC);
ff3: D_Rtl port map(D=>tC,CLK=>c,RESET=>rst,q=>Qout(3));
Qout(0)<=tA;
Qout(1)<=tB;
Qout(2)<=tC;
end Behavioral;
