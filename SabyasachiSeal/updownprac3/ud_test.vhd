--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   08:30:31 05/26/2022
-- Design Name:   
-- Module Name:   C:/Users/user/OneDrive/Documents/ISEProjects/SabyasachiSeal/updownprac3/ud_test.vhd
-- Project Name:  updownprac3
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: updown_rtl
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
 
ENTITY ud_test IS
END ud_test;
 
ARCHITECTURE behavior OF ud_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT updown_rtl
    PORT(
         count : OUT  std_logic_vector(3 downto 0);
         d : IN  std_logic;
         clr : IN  std_logic;
         clk : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal d : std_logic := '0';
   signal clr : std_logic := '0';
   signal clk : std_logic := '0';

 	--Outputs
   signal count : std_logic_vector(3 downto 0);

   -- Clock period definitions
   constant clk_period : time := 2 ps;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: updown_rtl PORT MAP (
          count => count,
          d => d,
          clr => clr,
          clk => clk
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
     clr<='1';
	  wait for 2 ps;
		clr<='0';
		d<='1';
		wait for 30 ps;
		d<='0';
		wait for 30 ps;
   end process;

END;
