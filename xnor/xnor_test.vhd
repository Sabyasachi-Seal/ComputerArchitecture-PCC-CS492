--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   20:52:43 03/30/2022
-- Design Name:   
-- Module Name:   C:/Users/user/OneDrive/Documents/ISEProjects/xnor/xnor_test.vhd
-- Project Name:  xnor
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: xnor_rtl
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
 
ENTITY xnor_test IS
END xnor_test;
 
ARCHITECTURE behavior OF xnor_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT xnor_rtl
    PORT(
         x_a : IN  std_logic;
         x_b : IN  std_logic;
         x_out : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal x_a : std_logic := '0';
   signal x_b : std_logic := '0';

 	--Outputs
   signal x_out : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: xnor_rtl PORT MAP (
          x_a => x_a,
          x_b => x_b,
          x_out => x_out
        );

   -- Clock process definitions
 

   -- Stimulus process
   stim_proc: process
   begin		
      x_a <= '0';
		x_b <= '0';
		wait for 1 ps;
		x_a <= '0';
		x_b <= '1';
		wait for 1 ps;
		x_a <= '1';
		x_b <= '0';
		wait for 1 ps;
		x_a <= '1';
		x_b <= '1';
		wait for 1 ps;
   end process;

END;
