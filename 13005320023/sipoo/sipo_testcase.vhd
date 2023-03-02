--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   09:55:13 04/18/2022
-- Design Name:   
-- Module Name:
-- Project Name:  NEW_SIPO
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: sipo_Rtl
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
 
ENTITY Sipo_Test IS
END Sipo_Test;
 
ARCHITECTURE behavior OF Sipo_Test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT sipo_Rtl
    PORT(
         d1 : IN  std_logic;
         c : IN  std_logic;
         rst1 : IN  std_logic;
         qout : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal d1 : std_logic := '0';
   signal c : std_logic := '0';
   signal rst1 : std_logic := '0';

 	--Outputs
   signal qout : std_logic_vector(3 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   constant c_period : time := 2 ps;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: sipo_Rtl PORT MAP (
          d1 => d1,
          c => c,
          rst1 => rst1,
          qout => qout
        );

   -- Clock process definitions
   c_process :process
   begin
		c <= '0';
		wait for c_period/2;
		c <= '1';
		wait for c_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin
		rst1 <= '1';
	  wait for c_period;
	  d1<='1';
	  rst1<='0';
	  wait for c_period;
	  d1<='0';
	  wait for c_period;
   end process;

END;