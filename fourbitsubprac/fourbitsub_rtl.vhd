----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:04:18 06/14/2022 
-- Design Name: 
-- Module Name:    fourbitsub_rtl - Behavioral 
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

entity fourbitsub_rtl is
    Port ( a : in  STD_LOGIC_VECTOR (3 downto 0);
           b : in  STD_LOGIC_VECTOR (3 downto 0);
           bin : in  STD_LOGIC;
           diff : out  STD_LOGIC_VECTOR (3 downto 0);
           borr : out  STD_LOGIC);
end fourbitsub_rtl;

architecture Behavioral of fourbitsub_rtl is
component fullsub_rtl is
    Port ( fa : in  STD_LOGIC;
           fb : in  STD_LOGIC;
           fin : in  STD_LOGIC;
           fdiff : out  STD_LOGIC;
           fborrow : out  STD_LOGIC);
end component;
signal t1, t2, t3, t4:std_logic:='0';
begin
fs1: fullsub_rtl port map (fa=>a(0), fb=>b(0), fin=>bin, fdiff=>diff(0), fborrow=>t1);
fs2: fullsub_rtl port map (fa=>a(1), fb=>b(1), fin=>t1, fdiff=>diff(1), fborrow=>t2);
fs3: fullsub_rtl port map (fa=>a(2), fb=>b(2), fin=>t2, fdiff=>diff(2), fborrow=>t3);
fs4: fullsub_rtl port map (fa=>a(3), fb=>b(3), fin=>t3, fdiff=>diff(3), fborrow=>borr);

end Behavioral;

