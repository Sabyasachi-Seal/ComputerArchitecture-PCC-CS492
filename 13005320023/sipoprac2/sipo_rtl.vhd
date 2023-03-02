----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:06:00 05/25/2022 
-- Design Name: 
-- Module Name:    sipo_rtl - Behavioral 
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

entity sipo_rtl is
    Port ( reset : in  STD_LOGIC;
           clock : in  STD_LOGIC;
           din : in  STD_LOGIC;
           dout : out  STD_LOGIC_VECTOR (3 downto 0));
end sipo_rtl;

architecture Behavioral of sipo_rtl is
component d_rtl is
    Port ( d : in  STD_LOGIC;
			rst : in  STD_LOGIC;
           q : out  STD_LOGIC;
           nq : out  STD_LOGIC;
           clk : in  STD_LOGIC);
end component;
signal t1,t2,t3,t4:std_logic:='0';
begin
f0: d_rtl port map(d=>din, rst=>reset, clk=>clock, q=>t1);
f1: d_rtl port map(d=>t1, rst=>reset, clk=>clock, q=>t2);
f2: d_rtl port map(d=>t2, rst=>reset, clk=>clock, q=>t3);
f3: d_rtl port map(d=>t3, rst=>reset, clk=>clock, q=>t4);
dout(0)<=t1;
dout(1)<=t2;
dout(2)<=t3;
dout(3)<=t4;
end Behavioral;

