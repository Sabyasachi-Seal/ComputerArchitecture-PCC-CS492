--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   19:47:42 03/29/2022
-- Design Name:   
-- Module Name:   C:/Users/user/OneDrive/Documents/ISEProjects/addersub/addersub_test.vhd
-- Project Name:  addersub
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: addersub_rtl
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
 
ENTITY addersub_test IS
END addersub_test;
 
ARCHITECTURE behavior OF addersub_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT addersub_rtl
    PORT(
         addersub_a : IN  std_logic_vector(3 downto 0);
         addersub_b : IN  std_logic_vector(3 downto 0);
         addersub_mode : IN  std_logic;
         addersub_out : OUT  std_logic_vector(3 downto 0);
         addersub_carry : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal addersub_a : std_logic_vector(3 downto 0) := (others => '0');
   signal addersub_b : std_logic_vector(3 downto 0) := (others => '0');
   signal addersub_mode : std_logic := '0';

 	--Outputs
   signal addersub_out : std_logic_vector(3 downto 0);
   signal addersub_carry : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 

 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: addersub_rtl PORT MAP (
          addersub_a => addersub_a,
          addersub_b => addersub_b,
          addersub_mode => addersub_mode,
          addersub_out => addersub_out,
          addersub_carry => addersub_carry
        );

   -- Clock process definition

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      addersub_a<="0101";
		addersub_b<="0101";
		addersub_mode<='1';
		wait for 1 ps;
		addersub_a<="0101";
		addersub_b<="0101";
		addersub_mode<='0';
		wait for 1 ps;
		addersub_a<="0111";
		addersub_b<="0101";
		addersub_mode<='1';
		wait for 1 ps;
		addersub_a<="0111";
		addersub_b<="0101";
		addersub_mode<='0';
		wait for 1 ps;
		addersub_a<="0101";
		addersub_b<="0111";
		addersub_mode<='1';
		wait for 1 ps;
		
   end process;

END;
