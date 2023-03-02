--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   19:00:40 03/30/2022
-- Design Name:   
-- Module Name:   C:/Users/user/OneDrive/Documents/ISEProjects/nand/nand_test.vhd
-- Project Name:  nand
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: nand_rtl
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
 
ENTITY nand_test IS
END nand_test;
 
ARCHITECTURE behavior OF nand_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT nand_rtl
    PORT(
         n_a : IN  std_logic;
         n_b : IN  std_logic;
         n_out : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal n_a : std_logic := '0';
   signal n_b : std_logic := '0';

 	--Outputs
   signal n_out : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: nand_rtl PORT MAP (
          n_a => n_a,
          n_b => n_b,
          n_out => n_out
        );

 

   -- Stimulus process
   stim_proc: process
   begin		
      n_a <= '0';
		n_b <= '0';
		wait for 1 ps;
		n_a <= '0';
		n_b <= '1';
		wait for 1 ps;
		n_a <= '1';
		n_b <= '0';
		wait for 1 ps;
		n_a <= '1';
		n_b <= '1';
		wait for 1 ps;
   end process;

END;
