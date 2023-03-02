--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   12:20:27 03/30/2022
-- Design Name:   
-- Module Name:   C:/Users/user/OneDrive/Documents/ISEProjects/comparator/comparator_test.vhd
-- Project Name:  comparator
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: comparator_rtl
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
 
ENTITY comparator_test IS
END comparator_test;
 
ARCHITECTURE behavior OF comparator_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT comparator_rtl
    PORT(
         c_a : IN  std_logic_vector(3 downto 0);
         c_b : IN  std_logic_vector(3 downto 0);
         c_equal : OUT  std_logic;
         c_greater : OUT  std_logic;
         c_lesser : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal c_a : std_logic_vector(3 downto 0) := (others => '0');
   signal c_b : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal c_equal : std_logic;
   signal c_greater : std_logic;
   signal c_lesser : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: comparator_rtl PORT MAP (
          c_a => c_a,
          c_b => c_b,
          c_equal => c_equal,
          c_greater => c_greater,
          c_lesser => c_lesser
        );

   -- Clock process definition
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      c_a<="0110";
		c_b<="1000";
		wait for 1 ps;
		c_a<="1110";
		c_b<="0010";
		wait for 1 ps;
		c_a<="1010";
		c_b<="1010";
		wait for 1 ps;
   end process;

END;
