----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    08:08:20 06/14/2022 
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
    Port ( fa : in  STD_LOGIC;
           fb : in  STD_LOGIC;
           cin : in  STD_LOGIC;
           sum : out  STD_LOGIC;
           carry : out  STD_LOGIC);
end fa_rtl;

architecture Behavioral of fa_rtl is
signal axorb:std_logic:='0';
begin
axorb <= ((not fa) and fb) or (fa and (not fb));
sum <= ((not axorb) and cin) or ((not cin) and axorb);
carry <= (fa and fb) or (cin and axorb);
end Behavioral;

