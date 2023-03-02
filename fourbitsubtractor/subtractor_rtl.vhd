----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:03:50 03/29/2022 
-- Design Name: 
-- Module Name:    subtractor_rtl - Behavioral 
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

entity subtractor_rtl is
    Port ( sub_a : in  STD_LOGIC_VECTOR (3 downto 0);
           sub_b : in  STD_LOGIC_VECTOR (3 downto 0);
           sub_in : in  STD_LOGIC;
           sub_diff : out  STD_LOGIC_VECTOR (3 downto 0);
           sub_borr : out  STD_LOGIC);
end subtractor_rtl;

architecture Behavioral of subtractor_rtl is

component fullsub_rtl is
    Port ( fs_a : in  STD_LOGIC;
           fs_b : in  STD_LOGIC;
           fs_bin : in  STD_LOGIC;
           fs_diff : out  STD_LOGIC;
           fs_borr : out  STD_LOGIC);
end component;

signal temp1,temp2,temp3,temp4:STD_LOGIC:='0';

begin

FS1: fullsub_rtl port map(fs_a=>sub_a(0), fs_b=>sub_b(0), fs_bin=>sub_in, fs_diff=>sub_diff(0), fs_borr=>temp1);
FS2: fullsub_rtl port map(fs_a=>sub_a(1), fs_b=>sub_b(1), fs_bin=>temp1, fs_diff=>sub_diff(1), fs_borr=>temp2);
FS3: fullsub_rtl port map(fs_a=>sub_a(2), fs_b=>sub_b(2), fs_bin=>temp2, fs_diff=>sub_diff(2), fs_borr=>temp3);
FS4: fullsub_rtl port map(fs_a=>sub_a(3), fs_b=>sub_b(3), fs_bin=>temp3, fs_diff=>sub_diff(3), fs_borr=>sub_borr);

end Behavioral;

