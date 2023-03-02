----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:02:05 05/24/2022 
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
    Port ( din : in  STD_LOGIC;
           dout : out  STD_LOGIC_VECTOR (3 downto 0);
           clock : in  STD_LOGIC;
           reset : in  STD_LOGIC);
end sipo_rtl;

architecture Behavioral of sipo_rtl is

component d_rtl is
    Port ( d : in  STD_LOGIC;
           q : out  STD_LOGIC;
           nq : out  STD_LOGIC;
           rst : in  STD_LOGIC;
			  clk : in  STD_LOGIC);
end component;

signal s:std_logic_vector(3 downto 0);

begin
D0: d_rtl port map (d=>din, clk=>clock, rst=>reset, q=>s(0));

D1: d_rtl port map (d=>s(0), clk=>clock, rst=>reset, q=>s(1));

D2: d_rtl port map (d=>s(1), clk=>clock, rst=>reset, q=>s(2));

D3: d_rtl port map (d=>s(2), clk=>clock, rst=>reset, q=>s(3));

dout<=s;
end Behavioral;

