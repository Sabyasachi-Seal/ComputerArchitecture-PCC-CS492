--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   08:37:03 06/14/2022
-- Design Name:   
-- Module Name:   C:/Users/user/OneDrive/Documents/ISEProjects/addersubprac/as_test.vhd
-- Project Name:  addersubprac
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: as_rtl
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
 
ENTITY as_test IS
END as_test;
 
ARCHITECTURE behavior OF as_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT as_rtl
    PORT(
         a : IN  std_logic_vector(3 downto 0);
         b : IN  std_logic_vector(3 downto 0);
         mode : IN  std_logic;
         res : OUT  std_logic_vector(3 downto 0);
         cout : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal a : std_logic_vector(3 downto 0) := (others => '0');
   signal b : std_logic_vector(3 downto 0) := (others => '0');
   signal mode : std_logic := '0';

 	--Outputs
   signal res : std_logic_vector(3 downto 0);
   signal cout : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: as_rtl PORT MAP (
          a => a,
          b => b,
          mode => mode,
          res => res,
          cout => cout
        );

   -- Clock process definitions
 

   -- Stimulus process
   stim_proc: process
   begin
		a <= "1010";
		b <= "0101";
      mode <= '1';
		wait for 2 ps;
		mode <= '0';
		wait for 2 ps;
		
   end process;

END;
