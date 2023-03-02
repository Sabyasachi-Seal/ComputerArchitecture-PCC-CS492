----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:11:18 03/30/2022 
-- Design Name: 
-- Module Name:    adder_rtl - Behavioral 
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

entity adder_rtl is
    Port ( adder_a : in  STD_LOGIC_VECTOR (3 downto 0);
           adder_b : in  STD_LOGIC_VECTOR (3 downto 0);
           adder_in : in  STD_LOGIC;
           adder_sum : out  STD_LOGIC_VECTOR (3 downto 0);
           adder_out : out  STD_LOGIC);
end adder_rtl;

architecture Behavioral of adder_rtl is

component fa_rtl is
    Port ( fa_a : in  STD_LOGIC;
           fa_b : in  STD_LOGIC;
           fa_cin : in  STD_LOGIC;
           fa_sum : out  STD_LOGIC;
           fa_carry : out  STD_LOGIC);
end component;

signal temp1,temp2,temp3,temp4,temp5,temp6,temp7:STD_LOGIC:='0';

begin

FA0: fa_rtl port map(fa_a=>adder_a(0), fa_b=>adder_b(0), fa_cin=>adder_in, fa_sum=>adder_sum(0), fa_carry=>temp1);
FA1: fa_rtl port map(fa_a=>adder_a(1), fa_b=>adder_b(1), fa_cin=>temp1, fa_sum=>adder_sum(1), fa_carry=>temp2);
FA2: fa_rtl port map(fa_a=>adder_a(2), fa_b=>adder_b(2), fa_cin=>temp2, fa_sum=>adder_sum(2), fa_carry=>temp3);
FA3: fa_rtl port map(fa_a=>adder_a(3), fa_b=>adder_b(3), fa_cin=>temp3, fa_sum=>adder_sum(3), fa_carry=>adder_out);

end Behavioral;

