----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:16:37 03/29/2022 
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
    Port ( fs_a : in  STD_LOGIC;
           fs_b : in  STD_LOGIC;
           fs_bin : in  STD_LOGIC;
           fs_diff : out  STD_LOGIC;
           fs_borr : out  STD_LOGIC);
end fullsub_rtl;

architecture Behavioral of fullsub_rtl is

signal axorb:STD_LOGIC:='0';

begin

axorb <= ((not fs_a) and fs_b) or (fs_a and (not fs_b));

fs_diff <= ((not axorb) and fs_bin) or (axorb and (not fs_bin));

fs_borr <= ((not fs_a) and fs_b) or ((not axorb) and fs_bin); 

end Behavioral;

