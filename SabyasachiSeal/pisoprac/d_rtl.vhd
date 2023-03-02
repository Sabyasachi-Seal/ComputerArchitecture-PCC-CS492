----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:37:56 05/24/2022 
-- Design Name: 
-- Module Name:    d_rtl - Behavioral 
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

entity d_rtl is
    Port ( d : in  STD_LOGIC;
           q : out  STD_LOGIC;
           nq : out  STD_LOGIC;
           rst : in  STD_LOGIC;
			  clk : in  STD_LOGIC);
end d_rtl;

architecture Behavioral of d_rtl is
begin

process(rst, d, clk) begin
if(rst='1') then
q<='0';
elsif(clk'event and clk='1') then
q<=d;
end if;
end process;

end Behavioral;

