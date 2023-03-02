----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:54:47 06/14/2022 
-- Design Name: 
-- Module Name:    fullsub_rtl - Behavioral 
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

entity fullsub_rtl is
    Port ( fa : in  STD_LOGIC;
           fb : in  STD_LOGIC;
           fin : in  STD_LOGIC;
           fdiff : out  STD_LOGIC;
           fborrow : out  STD_LOGIC);
end fullsub_rtl;

architecture Behavioral of fullsub_rtl is
signal axb:std_logic:='0';
begin
axb <= ((not fa) and fb) or (fa and (not fb));

fdiff <= ((not axb) and fin) or (axb and (not fin));

fborrow <= ((not fa) and fb) or ((not axb) and fin);

end Behavioral;

