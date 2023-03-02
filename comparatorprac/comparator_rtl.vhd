----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    07:27:28 06/14/2022 
-- Design Name: 
-- Module Name:    comparator_rtl - Behavioral 
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

entity comparator_rtl is
    Port ( c_a : in  STD_LOGIC_VECTOR (3 downto 0);
           c_b : in  STD_LOGIC_VECTOR (3 downto 0);
           equal : out  STD_LOGIC;
           greater : out  STD_LOGIC;
           lesser : out  STD_LOGIC);
end comparator_rtl;

architecture Behavioral of comparator_rtl is
component xnor_rtl is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           xout : out  STD_LOGIC);
end component;
signal a0xnorb0,a1xnorb1,a2xnorb2,a3xnorb3:std_logic:='0';
begin
x1: xnor_rtl port map(a=>c_a(0), b=>c_b(0), xout=>a0xnorb0);
x2: xnor_rtl port map(a=>c_a(1), b=>c_b(1), xout=>a1xnorb1);
x3: xnor_rtl port map(a=>c_a(2), b=>c_b(2), xout=>a2xnorb2);
x4: xnor_rtl port map(a=>c_a(3), b=>c_b(3), xout=>a3xnorb3);

equal <= a0xnorb0 and a1xnorb1 and a2xnorb2 and a3xnorb3;

lesser <= ((not c_a(3)) and c_b(3)) or (a3xnorb3 and ((not c_a(2)) and c_b(2))) or (a3xnorb3 and a2xnorb2 and ((not c_a(1)) and c_b(1))) or (a3xnorb3 and a2xnorb2 and a1xnorb1 and((not c_a(0)) and c_b(0)));

greater <= ((not c_b(3)) and c_a(3)) or (a3xnorb3 and ((not c_b(2)) and c_a(2))) or (a3xnorb3 and a2xnorb2 and ((not c_b(1)) and c_a(1))) or (a3xnorb3 and a2xnorb2 and a1xnorb1 and((not c_b(0)) and c_a(0)));
end Behavioral;

