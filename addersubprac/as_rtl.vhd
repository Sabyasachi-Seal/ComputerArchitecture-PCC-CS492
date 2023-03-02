----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    08:19:53 06/14/2022 
-- Design Name: 
-- Module Name:    as_rtl - Behavioral 
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

entity as_rtl is
    Port ( a : in  STD_LOGIC_VECTOR (3 downto 0);
           b : in  STD_LOGIC_VECTOR (3 downto 0);
           mode : in  STD_LOGIC;
           res : out  STD_LOGIC_VECTOR (3 downto 0);
           cout : out  STD_LOGIC);
end as_rtl;

architecture Behavioral of as_rtl is
component fa_rtl is
    Port ( fa : in  STD_LOGIC;
           fb : in  STD_LOGIC;
           cin : in  STD_LOGIC;
           sum : out  STD_LOGIC;
           carry : out  STD_LOGIC);
end component;
component xor_rtl is
    Port ( xa : in  STD_LOGIC;
           xb : in  STD_LOGIC;
           xout : out  STD_LOGIC);
end component;
signal t1,t2,t3,t4,c1,c2,c3:std_logic:='0';
begin
x1: xor_rtl port map(xa=>b(0), xb=>mode, xout=>t1);
x2: xor_rtl port map(xa=>b(1), xb=>mode, xout=>t2);
x3: xor_rtl port map(xa=>b(2), xb=>mode, xout=>t3);
x4: xor_rtl port map(xa=>b(3), xb=>mode, xout=>t4);

f1: fa_rtl port map(fa=>a(0), fb=>t1, cin=>mode, sum=>res(0), carry=>c1);
f2: fa_rtl port map(fa=>a(1), fb=>t2, cin=>c1, sum=>res(1), carry=>c2);
f3: fa_rtl port map(fa=>a(2), fb=>t3, cin=>c2, sum=>res(2), carry=>c3);
f4: fa_rtl port map(fa=>a(3), fb=>t4, cin=>c3, sum=>res(3), carry=>cout);
end Behavioral;

