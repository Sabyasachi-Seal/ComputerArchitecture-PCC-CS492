--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   08:46:20 03/30/2022
-- Design Name:   
-- Module Name:   C:/Users/user/OneDrive/Documents/ISEProjects/fulladderbasic/fa_test.vhd
-- Project Name:  fulladderbasic
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: fa_rtl
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
 
ENTITY fa_test IS
END fa_test;
 
ARCHITECTURE behavior OF fa_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT fa_rtl
    PORT(
         fa_a : IN  std_logic;
         fa_b : IN  std_logic;
         fa_cin : IN  std_logic;
         fa_sum : OUT  std_logic;
         fa_carry : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal fa_a : std_logic := '0';
   signal fa_b : std_logic := '0';
   signal fa_cin : std_logic := '0';

 	--Outputs
   signal fa_sum : std_logic;
   signal fa_carry : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 

 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: fa_rtl PORT MAP (
          fa_a => fa_a,
          fa_b => fa_b,
          fa_cin => fa_cin,
          fa_sum => fa_sum,
          fa_carry => fa_carry
        );

   -- Clock process definition
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      fa_a <= '0';
		fa_b <= '0';
		fa_cin <= '0';
		wait for 1 ps;
		fa_a <= '0';
		fa_b <= '0';
		fa_cin <= '1';
		wait for 1 ps;
		fa_a <= '0';
		fa_b <= '1';
		fa_cin <= '0';
		wait for 1 ps;
		fa_a <= '0';
		fa_b <= '1';
		fa_cin <= '1';
		wait for 1 ps;
		fa_a <= '1';
		fa_b <= '0';
		fa_cin <= '0';
		wait for 1 ps;
		fa_a <= '1';
		fa_b <= '0';
		fa_cin <= '1';
		wait for 1 ps;
		fa_a <= '1';
		fa_b <= '1';
		fa_cin <= '0';
		wait for 1 ps;
		fa_a <= '1';
		fa_b <= '1';
		fa_cin <= '1';
		wait for 1 ps;
   end process;

END;
