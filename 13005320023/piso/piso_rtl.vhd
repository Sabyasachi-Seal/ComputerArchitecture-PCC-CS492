----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:41:50 04/21/2022 
-- Design Name: 
-- Module Name:    piso_rtl - Behavioral 
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

entity piso_rtl is
    Port ( data : in  STD_LOGIC_VECTOR (3 downto 0);
           c : in  STD_LOGIC;
           r : in  STD_LOGIC;
           sin : in  STD_LOGIC;
           sout : out  STD_LOGIC);
end piso_rtl;

architecture Behavioral of piso_rtl is

component d_rtl is
    Port ( d : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           rst : in  STD_LOGIC;
           q : out  STD_LOGIC;
           nq : out  STD_LOGIC);
end component;

signal t1,t2,t3,t4,c1,c2,c3:std_logic:='0';

begin
t1<= (not sin) and data(0);
ff0: d_rtl port map (d=>t1, clk=>c, rst=>r, q=>c1);

t2<=((not sin) and data(1)) or (c1 and sin);
ff1: d_rtl port map (d=>t2, clk=>c, rst=>r, q=>c2);

t3<=((not sin) and data(2)) or (c2 and sin);
ff2: d_rtl port map (d=>t3, clk=>c, rst=>r, q=>c3);

t4<=((not sin) and data(3)) or (c3 and sin);
ff3: d_rtl port map (d=>t4, clk=>c, rst=>r, q=>sout);
end Behavioral;

