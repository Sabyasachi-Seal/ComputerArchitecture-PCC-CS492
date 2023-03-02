----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:29:06 03/29/2022 
-- Design Name: 
-- Module Name:    fa_rtl - Behavioral 
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

entity fa_rtl is
    Port ( fa_a : in  STD_LOGIC;
           fa_b : in  STD_LOGIC;
           fa_cin : in  STD_LOGIC;
           fa_sum : out  STD_LOGIC;
           fa_carry : out  STD_LOGIC);
end fa_rtl;

architecture Behavioral of fa_rtl is

signal axorb:STD_LOGIC:='0';
begin

axorb <= ((not fa_a) and fa_b) or (fa_a and (not fa_b));

fa_sum <= ((not axorb) and fa_cin) or (axorb and (not fa_cin));

fa_carry <= (fa_a and fa_b) or (axorb and fa_cin);

end Behavioral;

