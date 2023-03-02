--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   21:41:18 03/29/2022
-- Design Name:   
-- Module Name:   C:/Users/user/OneDrive/Documents/ISEProjects/fourbitsubtractor/fourbitsub_test.vhd
-- Project Name:  fourbitsubtractor
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: subtractor_rtl
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
 
ENTITY fourbitsub_test IS
END fourbitsub_test;
 
ARCHITECTURE behavior OF fourbitsub_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT subtractor_rtl
    PORT(
         sub_a : IN  std_logic_vector(3 downto 0);
         sub_b : IN  std_logic_vector(3 downto 0);
         sub_in : IN  std_logic;
         sub_diff : OUT  std_logic_vector(3 downto 0);
         sub_borr : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal sub_a : std_logic_vector(3 downto 0) := (others => '0');
   signal sub_b : std_logic_vector(3 downto 0) := (others => '0');
   signal sub_in : std_logic := '0';

 	--Outputs
   signal sub_diff : std_logic_vector(3 downto 0);
   signal sub_borr : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: subtractor_rtl PORT MAP (
          sub_a => sub_a,
          sub_b => sub_b,
          sub_in => sub_in,
          sub_diff => sub_diff,
          sub_borr => sub_borr
        );

   -- Stimulus process
   stim_proc: process
   begin		
		sub_a <= "0110";
		sub_b <= "0110";
		sub_in <= '0';
		wait for 1 ps;
		sub_a <= "0100";
		sub_b <= "0110";
		sub_in <= '0';
		wait for 1 ps;
		sub_a <= "0110";
		sub_b <= "0010";
		sub_in <= '1';
		wait for 1 ps;
		sub_a <= "1111";
		sub_b <= "0110";
		sub_in <= '1';
		wait for 1 ps;
		sub_a <= "0110";
		sub_b <= "0001";
		sub_in <= '0';
		wait for 1 ps;
   end process;

END;
