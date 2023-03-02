----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:07:29 03/30/2022 
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
           c_equal : out  STD_LOGIC;
           c_greater : out  STD_LOGIC;
           c_lesser : out  STD_LOGIC);
end comparator_rtl;

architecture Behavioral of comparator_rtl is

signal a3xnorb3,a2xnorb2,a1xnorb1,a0xnorb0:STD_LOGIC:='0';

begin

a3xnorb3 <= not(((not c_a(3)) and c_b(3)) or (c_a(3) and (not c_b(3))));
a2xnorb2 <= not(((not c_a(2)) and c_b(2)) or (c_a(2) and (not c_b(2))));
a1xnorb1 <= not(((not c_a(1)) and c_b(1)) or (c_a(1) and (not c_b(1))));
a0xnorb0 <= not(((not c_a(0)) and c_b(0)) or (c_a(0) and (not c_b(0))));

c_equal <= a3xnorb3 and a2xnorb2 and a1xnorb1 and a0xnorb0;

c_greater <= (c_a(3) and (not c_b(3))) or (a3xnorb3 and (c_a(2) and (not c_b(2)))) or (a3xnorb3 and a2xnorb2 and (c_a(1) and (not c_b(1)))) or (a3xnorb3 and a2xnorb2 and a1xnorb1 and (c_a(0) and (not c_b(0))));

c_lesser <= (c_b(3) and (not c_a(3))) or (a3xnorb3 and (c_b(2) and (not c_a(2)))) or (a3xnorb3 and a2xnorb2 and (c_b(1) and (not c_a(1)))) or (a3xnorb3 and a2xnorb2 and a1xnorb1 and (c_b(0) and (not c_a(0))));

end Behavioral;

