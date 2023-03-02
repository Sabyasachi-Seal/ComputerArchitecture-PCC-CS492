--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   20:23:11 03/29/2022
-- Design Name:   
-- Module Name:   C:/Users/user/OneDrive/Documents/ISEProjects/fulsub/fullsub_test.vhd
-- Project Name:  fulsub
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: fullsub_rtl
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
 
ENTITY fullsub_test IS
END fullsub_test;
 
ARCHITECTURE behavior OF fullsub_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT fullsub_rtl
    PORT(
         fs_a : IN  std_logic;
         fs_b : IN  std_logic;
         fs_bin : IN  std_logic;
         fs_diff : OUT  std_logic;
         fs_borr : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal fs_a : std_logic := '0';
   signal fs_b : std_logic := '0';
   signal fs_bin : std_logic := '0';

 	--Outputs
   signal fs_diff : std_logic;
   signal fs_borr : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: fullsub_rtl PORT MAP (
          fs_a => fs_a,
          fs_b => fs_b,
          fs_bin => fs_bin,
          fs_diff => fs_diff,
          fs_borr => fs_borr
        );

   -- Clock process definitions

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      fs_a <= '0';
		fs_b <= '0';
		fs_bin <= '0';
		wait for 1 ps;
		fs_a <= '0';
		fs_b <= '0';
		fs_bin <= '1';
		wait for 1 ps;
		fs_a <= '0';
		fs_b <= '1';
		fs_bin <= '0';
		wait for 1 ps;
		fs_a <= '0';
		fs_b <= '1';
		fs_bin <= '1';
		wait for 1 ps;
		fs_a <= '1';
		fs_b <= '0';
		fs_bin <= '0';
		wait for 1 ps;
		fs_a <= '1';
		fs_b <= '0';
		fs_bin <= '1';
		wait for 1 ps;
		fs_a <= '1';
		fs_b <= '1';
		fs_bin <= '0';
		wait for 1 ps;
		fs_a <= '1';
		fs_b <= '1';
		fs_bin <= '1';
		wait for 1 ps;
   end process;

END;
