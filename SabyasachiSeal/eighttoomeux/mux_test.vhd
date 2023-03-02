--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   09:47:12 05/25/2022
-- Design Name:   
-- Module Name:   C:/Users/user/OneDrive/Documents/ISEProjects/SabyasachiSeal/eighttoomeux/mux_test.vhd
-- Project Name:  eighttoomeux
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
         d0 : IN  std_logic;
         d1 : IN  std_logic;
         d2 : IN  std_logic;
         d3 : IN  std_logic;
         d4 : IN  std_logic;
         d5 : IN  std_logic;
         d6 : IN  std_logic;
         d7 : IN  std_logic;
         s : IN  std_logic_vector(2 downto 0);
         y : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal d0 : std_logic := '0';
   signal d1 : std_logic := '0';
   signal d2 : std_logic := '0';
   signal d3 : std_logic := '0';
   signal d4 : std_logic := '0';
   signal d5 : std_logic := '0';
   signal d6 : std_logic := '0';
   signal d7 : std_logic := '0';
   signal s : std_logic_vector(2 downto 0) := (others => '0');

 	--Outputs
   signal y : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   --constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: mux_rtl PORT MAP (
          d0 => d0,
          d1 => d1,
          d2 => d2,
          d3 => d3,
          d4 => d4,
          d5 => d5,
          d6 => d6,
          d7 => d7,
          s => s,
          y => y
        );

   -- Clock process definitions
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      d0<='1';
		d1<='1';
		d2<='1';
		d3<='1';
		d4<='1';
		d5<='1';
		d6<='1';
		d7<='1';
		s<="000";
		wait for 2 ps;
		s<="000";
		wait for 2 ps;
		s<="001";
		wait for 2 ps;
		s<="010";
		wait for 2 ps;
		s<="011";
		wait for 2 ps;
		s<="100";
		wait for 2 ps;
		s<="101";
		wait for 2 ps;
		s<="110";
		wait for 2 ps;
		s<="111";
		wait for 2 ps;
   end process;

END;
