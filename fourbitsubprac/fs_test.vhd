--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   11:09:54 06/14/2022
-- Design Name:   
-- Module Name:   C:/Users/user/OneDrive/Documents/ISEProjects/fourbitsubprac/fs_test.vhd
-- Project Name:  fourbitsubprac
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: fourbitsub_rtl
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
 
ENTITY fs_test IS
END fs_test;
 
ARCHITECTURE behavior OF fs_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT fourbitsub_rtl
    PORT(
         a : IN  std_logic_vector(3 downto 0);
         b : IN  std_logic_vector(3 downto 0);
         bin : IN  std_logic;
         diff : OUT  std_logic_vector(3 downto 0);
         borr : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal a : std_logic_vector(3 downto 0) := (others => '0');
   signal b : std_logic_vector(3 downto 0) := (others => '0');
   signal bin : std_logic := '0';

 	--Outputs
   signal diff : std_logic_vector(3 downto 0);
   signal borr : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: fourbitsub_rtl PORT MAP (
          a => a,
          b => b,
          bin => bin,
          diff => diff,
          borr => borr
        );


   -- Stimulus process
   stim_proc: process
   begin		
      a <= "1010";
		b <= "0101";
		wait for 2 ps;
		bin <= '1';
		wait for 2 ps;
		b <= "1010";
		a <= "0101";
		wait for 2 ps;
   end process;

END;
