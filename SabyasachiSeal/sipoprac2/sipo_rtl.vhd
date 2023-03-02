----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:11:30 06/12/2022 
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
    Port ( uin : in  STD_LOGIC;
           rst : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           uout : out  STD_LOGIC_VECTOR (3 downto 0));
end sipo_rtl;

architecture Behavioral of sipo_rtl is
component d_rtl is
    Port ( d : in  STD_LOGIC;
           q : out  STD_LOGIC;
           nq : out  STD_LOGIC;
           clk : in  STD_LOGIC;
           rst : in  STD_LOGIC);
end component;
signal temp:std_logic_vector(3 downto 0):="0000";
begin
s1 : d_rtl port map(d=>uin, clk=>clk, rst=>rst, q=>temp(0));
s2 : d_rtl port map(d=>temp(0), clk=>clk, rst=>rst, q=>temp(1));
s3 : d_rtl port map(d=>temp(1), clk=>clk, rst=>rst, q=>temp(2));
s4 : d_rtl port map(d=>temp(2), clk=>clk, rst=>rst, q=>temp(3));
uout<=temp;
end Behavioral;

