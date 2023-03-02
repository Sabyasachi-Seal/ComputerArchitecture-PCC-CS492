----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:21:26 05/24/2022 
-- Design Name: 
-- Module Name:    piso_rtl - Behavioral 
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

entity piso_rtl is
    Port ( pi : in  STD_LOGIC_VECTOR (3 downto 0);
           po : out  STD_LOGIC;
           si : in  STD_LOGIC;
           clock : in  STD_LOGIC;
           reset : in  STD_LOGIC);
end piso_rtl;

architecture Behavioral of piso_rtl is
component d_rtl is
    Port ( d : in  STD_LOGIC;
           q : out  STD_LOGIC;
           nq : out  STD_LOGIC;
           rst : in  STD_LOGIC;
			  clk : in  STD_LOGIC);
end component;

signal t1,t2,t3,t4,c1,c2,c3:std_logic:= '0';

begin
t1<=((not si) and pi(0));
D0: d_rtl port map(d=>t1, rst=>reset, clk=>clock, q=>c1);

t2<=((not si)and pi(1)) or (si and c1);
D1: d_rtl port map(d=>t2, rst=>reset, clk=>clock, q=>c2);

t3<=((not si) and pi(2)) or (si and c2);
D2: d_rtl port map(d=>t3, rst=>reset, clk=>clock, q=>c3);

t4<=((not si) and pi(3)) or (si and c3);
D3: d_rtl port map(d=>t4, rst=>reset, clk=>clock, q=>po);


end Behavioral;

