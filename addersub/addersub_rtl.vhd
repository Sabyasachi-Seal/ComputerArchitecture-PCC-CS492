----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:06:02 03/29/2022 
-- Design Name: 
-- Module Name:    addersub_rtl - Behavioral 
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

entity addersub_rtl is
    Port ( addersub_a : in  STD_LOGIC_VECTOR (3 downto 0);
           addersub_b : in  STD_LOGIC_VECTOR (3 downto 0);
           addersub_mode : in  STD_LOGIC;
           addersub_out : out  STD_LOGIC_VECTOR (3 downto 0);
           addersub_carry : out  STD_LOGIC);
end addersub_rtl;

architecture Behavioral of addersub_rtl is

component xor_rtl is
    Port ( xor_a : in  STD_LOGIC;
           xor_b : in  STD_LOGIC;
           xor_out : out  STD_LOGIC);
end component;

component fa_rtl is
    Port ( fa_a : in  STD_LOGIC;
           fa_b : in  STD_LOGIC;
           fa_cin : in  STD_LOGIC;
           fa_sum : out  STD_LOGIC;
           fa_carry : out  STD_LOGIC);
end component;

signal temp1,temp2,temp3,temp4,f1,f2,f3: STD_LOGIC:= '0';

begin

XG1: xor_rtl port map(xor_a=>addersub_mode, xor_b=>addersub_b(0), xor_out=>temp1);
XG2: xor_rtl port map(xor_a=>addersub_mode, xor_b=>addersub_b(1), xor_out=>temp2);
XG3: xor_rtl port map(xor_a=>addersub_mode, xor_b=>addersub_b(2), xor_out=>temp3);
XG4: xor_rtl port map(xor_a=>addersub_mode, xor_b=>addersub_b(3), xor_out=>temp4);

fa1: fa_rtl port map(fa_a=>addersub_a(0), fa_b=>temp1, fa_cin=>addersub_mode, fa_sum=>addersub_out(0), fa_carry=>f1);
fa2: fa_rtl port map(fa_a=>addersub_a(1), fa_b=>temp2, fa_cin=>f1, fa_sum=>addersub_out(1), fa_carry=>f2);
fa3: fa_rtl port map(fa_a=>addersub_a(2), fa_b=>temp3, fa_cin=>f2, fa_sum=>addersub_out(2), fa_carry=>f3);
fa4: fa_rtl port map(fa_a=>addersub_a(3), fa_b=>temp4, fa_cin=>f3, fa_sum=>addersub_out(3), fa_carry=>addersub_carry);

end Behavioral;

