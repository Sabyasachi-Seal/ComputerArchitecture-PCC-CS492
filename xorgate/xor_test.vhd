--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   18:58:35 03/29/2022
-- Design Name:   
-- Module Name:   C:/Users/user/OneDrive/Documents/ISEProjects/xorgate/xor_test.vhd
-- Project Name:  xorgate
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: xor_rtl
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
 
ENTITY xor_test IS
END xor_test;
 
ARCHITECTURE behavior OF xor_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT xor_rtl
    PORT(
         xor_a : IN  std_logic;
         xor_b : IN  std_logic;
         xor_out : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal xor_a : std_logic := '0';
   signal xor_b : std_logic := '0';

 	--Outputs
   signal xor_out : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: xor_rtl PORT MAP (
          xor_a => xor_a,
          xor_b => xor_b,
          xor_out => xor_out
        );

   -- Clock process definitions

   -- Stimulus process
   stim_proc: process
   begin		
      xor_a <= '0';
		xor_b <= '0';
		wait for 1 ps;
		xor_a <= '0';
		xor_b <= '1';
		wait for 1 ps;
		xor_a <= '1';
		xor_b <= '0';
		wait for 1 ps;
		xor_a <= '1';
		xor_b <= '1';
		wait for 1 ps;
   end process;

END;
