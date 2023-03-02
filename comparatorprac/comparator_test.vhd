--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   07:38:36 06/14/2022
-- Design Name:   
-- Module Name:   C:/Users/user/OneDrive/Documents/ISEProjects/comparatorprac/comparator_test.vhd
-- Project Name:  comparatorprac
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
         equal : OUT  std_logic;
         greater : OUT  std_logic;
         lesser : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal c_a : std_logic_vector(3 downto 0) := (others => '0');
   signal c_b : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal equal : std_logic;
   signal greater : std_logic;
   signal lesser : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 

 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: comparator_rtl PORT MAP (
          c_a => c_a,
          c_b => c_b,
          equal => equal,
          greater => greater,
          lesser => lesser
        );

   -- Clock process definitions
 

   -- Stimulus process
   stim_proc: process
   begin		
      c_a <= "1111";
		c_b <= "1010";
		wait for 2 ps;
		c_b <= "1111";
		c_a <= "1010";
		wait for 2 ps;
		c_a <= "1010";
		c_b <= "1010";
		wait for 2 ps;
   end process;

END;
