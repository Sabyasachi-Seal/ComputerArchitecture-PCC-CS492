--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   10:09:02 03/30/2022
-- Design Name:   
-- Module Name:   C:/Users/user/OneDrive/Documents/ISEProjects/eightbitsubtractor/sub_test.vhd
-- Project Name:  eightbitsubtractor
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: sub_rtl
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY sub_test IS
END sub_test;
 
ARCHITECTURE behavior OF sub_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT sub_rtl
    PORT(
         sub_a : IN  std_logic_vector(7 downto 0);
         sub_b : IN  std_logic_vector(7 downto 0);
         sub_bin : IN  std_logic;
         sub_diff : OUT  std_logic_vector(7 downto 0);
         sub_out : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal sub_a : std_logic_vector(7 downto 0) := (others => '0');
   signal sub_b : std_logic_vector(7 downto 0) := (others => '0');
   signal sub_bin : std_logic := '0';

 	--Outputs
   signal sub_diff : std_logic_vector(7 downto 0);
   signal sub_out : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: sub_rtl PORT MAP (
          sub_a => sub_a,
          sub_b => sub_b,
          sub_bin => sub_bin,
          sub_diff => sub_diff,
          sub_out => sub_out
        );

   -- Clock process definitions
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
		sub_a<="00100101";
		sub_b<="10101010";
		sub_bin<='1';
		wait for 1 ps;
		sub_a<="00100000";
		sub_b<="10101010";
		sub_bin<='0';
		wait for 1 ps;
		sub_a<="01101111";
		sub_b<="01011010";
		sub_bin<='0';
		wait for 1 ps;
		sub_a<="10100101";
		sub_b<="10101010";
		sub_bin<='0';
		wait for 1 ps;
   end process;

END;
