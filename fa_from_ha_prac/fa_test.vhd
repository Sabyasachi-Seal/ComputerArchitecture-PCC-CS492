--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   10:42:12 06/14/2022
-- Design Name:   
-- Module Name:   C:/Users/user/OneDrive/Documents/ISEProjects/fa_from_ha_prac/fa_test.vhd
-- Project Name:  fa_from_ha_prac
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
         fa : IN  std_logic;
         fb : IN  std_logic;
         fcin : IN  std_logic;
         fsum : OUT  std_logic;
         fcarry : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal fa : std_logic := '0';
   signal fb : std_logic := '0';
   signal fcin : std_logic := '0';

 	--Outputs
   signal fsum : std_logic;
   signal fcarry : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: fa_rtl PORT MAP (
          fa => fa,
          fb => fb,
          fcin => fcin,
          fsum => fsum,
          fcarry => fcarry
        );

   -- Clock process definitions
 

   -- Stimulus process
   stim_proc: process
   begin		
      fa <= '0';
		fb <= '0';
		fcin <= '0';
		wait for 2 ps;
		fa <= '0';
		fb <= '0';
		fcin <= '1';
		wait for 2 ps;
		fa <= '0';
		fb <= '1';
		fcin <= '0';
		wait for 2 ps;
		fa <= '0';
		fb <= '1';
		fcin <= '1';
		wait for 2 ps;
		fa <= '1';
		fb <= '0';
		fcin <= '0';
		wait for 2 ps;
		fa <= '1';
		fb <= '0';
		fcin <= '1';
		wait for 2 ps;
		fa <= '1';
		fb <= '1';
		fcin <= '0';
		wait for 2 ps;
		fa <= '1';
		fb <= '1';
		fcin <= '1';
		wait for 2 ps;
   end process;

END;
