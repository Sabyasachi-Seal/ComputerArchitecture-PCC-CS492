--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   08:57:31 04/07/2022
-- Design Name:   
-- Module Name:   /home/student/mux/fourtoonemux/mux_test.vhd
-- Project Name:  fourtoonemux
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: mux_rtl
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
 
ENTITY mux_test IS
END mux_test;
 
ARCHITECTURE behavior OF mux_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT mux_rtl
    PORT(
         d0 : IN  std_logic_vector(1 downto 0);
         d1 : IN  std_logic_vector(1 downto 0);
         d2 : IN  std_logic_vector(1 downto 0);
         d3 : IN  std_logic_vector(1 downto 0);
         s : IN  std_logic_vector(1 downto 0);
         y : OUT  std_logic_vector(1 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal d0 : std_logic_vector(1 downto 0) := (others => '0');
   signal d1 : std_logic_vector(1 downto 0) := (others => '0');
   signal d2 : std_logic_vector(1 downto 0) := (others => '0');
   signal d3 : std_logic_vector(1 downto 0) := (others => '0');
   signal s : std_logic_vector(1 downto 0) := (others => '0');

 	--Outputs
   signal y : std_logic_vector(1 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 

 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: mux_rtl PORT MAP (
          d0 => d0,
          d1 => d1,
          d2 => d2,
          d3 => d3,
          s => s,
          y => y
        );

   -- Clock process definitions
 

   -- Stimulus process
   stim_proc: process
   begin		
      d0 <= "00";
		d1 <= "01";
		d2 <= "10";
		d3 <= "11";
		s <= "00";
		wait for 1 ps;
		s <= "01";
		wait for 1 ps;
		s <= "10";
		wait for 1 ps;
		s<= "11";
		wait for 1 ps;
   end process;

END;
