--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   09:36:14 03/30/2022
-- Design Name:   
-- Module Name:   C:/Users/user/OneDrive/Documents/ISEProjects/eightbitadder/adder_test.vhd
-- Project Name:  eightbitadder
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: adder_rtl
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
 
ENTITY adder_test IS
END adder_test;
 
ARCHITECTURE behavior OF adder_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT adder_rtl
    PORT(
         adder_a : IN  std_logic_vector(7 downto 0);
         adder_b : IN  std_logic_vector(7 downto 0);
         adder_in : IN  std_logic;
         adder_sum : OUT  std_logic_vector(7 downto 0);
         adder_out : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal adder_a : std_logic_vector(7 downto 0) := (others => '0');
   signal adder_b : std_logic_vector(7 downto 0) := (others => '0');
   signal adder_in : std_logic := '0';

 	--Outputs
   signal adder_sum : std_logic_vector(7 downto 0);
   signal adder_out : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: adder_rtl PORT MAP (
          adder_a => adder_a,
          adder_b => adder_b,
          adder_in => adder_in,
          adder_sum => adder_sum,
          adder_out => adder_out
        );

   -- Clock process definitions

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      adder_a<="00100101";
		adder_b<="10101010";
		adder_in<='1';
		wait for 1 ps;
		adder_a<="00100000";
		adder_b<="10101010";
		adder_in<='0';
		wait for 1 ps;
		adder_a<="01101111";
		adder_b<="01011010";
		adder_in<='0';
		wait for 1 ps;
		adder_a<="10100101";
		adder_b<="10101010";
		adder_in<='0';
		wait for 1 ps;
   end process;

END;
