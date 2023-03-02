----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:38:43 04/18/2022 
-- Design Name: 
-- Module Name:    SIPO_RTL - Behavioral 
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

entity SIPO_RTL is
    Port ( uin : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           uout : out  STD_LOGIC_VECTOR (3 downto 0));
end SIPO_RTL;

architecture Behavioral of SIPO_RTL is
component D_new_rtl is
    Port ( CLK : in  STD_LOGIC;
           din : in  STD_LOGIC;
           RESET : in  STD_LOGIC;
           dout : out  STD_LOGIC);
end component;
signal s:STD_LOGIC_VECTOR(3 downto 0);
begin
u0: D_new_rtl port map (din=>uin,CLK=>clk,RESET=>reset,dout=>s(0));

u1: D_new_rtl port map (din=>s(0),CLK=>clk,RESET=>reset,dout=>s(1));

u2: D_new_rtl port map (din=>s(1),CLK=>clk,RESET=>reset,dout=>s(2));

u3: D_new_rtl port map (din=>s(2),CLK=>clk,RESET=>reset,dout=>s(3));

uout<=s;

end Behavioral;

