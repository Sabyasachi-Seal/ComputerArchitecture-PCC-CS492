----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:59:25 03/30/2022 
-- Design Name: 
-- Module Name:    sub_rtl - Behavioral 
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

entity sub_rtl is
    Port ( sub_a : in  STD_LOGIC_VECTOR (7 downto 0);
           sub_b : in  STD_LOGIC_VECTOR (7 downto 0);
           sub_bin : in  STD_LOGIC;
           sub_diff : out  STD_LOGIC_VECTOR (7 downto 0);
           sub_out : out  STD_LOGIC);
end sub_rtl;

architecture Behavioral of sub_rtl is
component fullsub_rtl is
    Port ( fs_a : in  STD_LOGIC;
           fs_b : in  STD_LOGIC;
           fs_bin : in  STD_LOGIC;
           fs_diff : out  STD_LOGIC;
           fs_borr : out  STD_LOGIC);
end component;
signal temp1,temp2,temp3,temp4,temp5,temp6,temp7,temp8:STD_LOGIC:='0';
begin

FS0: fullsub_rtl port map(fs_a=>sub_a(0), fs_b=>sub_b(0), fs_bin=>sub_bin, fs_diff=>sub_diff(0), fs_borr=>temp1);
FS1: fullsub_rtl port map(fs_a=>sub_a(1), fs_b=>sub_b(1), fs_bin=>temp1, fs_diff=>sub_diff(1), fs_borr=>temp2);
FS2: fullsub_rtl port map(fs_a=>sub_a(2), fs_b=>sub_b(2), fs_bin=>temp2, fs_diff=>sub_diff(2), fs_borr=>temp3);
FS3: fullsub_rtl port map(fs_a=>sub_a(3), fs_b=>sub_b(3), fs_bin=>temp3, fs_diff=>sub_diff(3), fs_borr=>temp4);
FS4: fullsub_rtl port map(fs_a=>sub_a(4), fs_b=>sub_b(4), fs_bin=>temp4, fs_diff=>sub_diff(4), fs_borr=>temp5);
FS5: fullsub_rtl port map(fs_a=>sub_a(5), fs_b=>sub_b(5), fs_bin=>temp5, fs_diff=>sub_diff(5), fs_borr=>temp6);
FS6: fullsub_rtl port map(fs_a=>sub_a(6), fs_b=>sub_b(6), fs_bin=>temp6, fs_diff=>sub_diff(6), fs_borr=>temp7);
FS7: fullsub_rtl port map(fs_a=>sub_a(7), fs_b=>sub_b(7), fs_bin=>temp7, fs_diff=>sub_diff(7), fs_borr=>sub_out);

end Behavioral;

