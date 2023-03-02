--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   20:45:37 05/24/2022
-- Design Name:   
-- Module Name:   C:/Users/user/OneDrive/Documents/ISEProjects/SabyasachiSeal/dflipflop/d_test.vhd
-- Project Name:  dflipflop
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: d_rtl
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
 
ENTITY d_test IS
END d_test;
 
ARCHITECTURE behavior OF d_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT d_rtl
    PORT(
         d : IN  std_logic;
         q : OUT  std_logic;
         nq : OUT  std_logic;
         rst : IN  std_logic;
         clk : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal d : std_logic := '0';
   signal rst : std_logic := '0';
   signal clk : std_logic := '0';

 	--Outputs
   signal q : std_logic;
   signal nq : std_logic;

   -- Clock period definitions
   constant clk_period : time := 2 ps;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: d_rtl PORT MAP (
          d => d,
          q => q,
          nq => nq,
          rst => rst,
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
	rst<='1';
	wait for clk_period;
	d<='0';
	rst<='0';
	wait for clk_period;
	d<='1';
	wait for clk_period;
      -- hold reset state for 100 ns.
			
   end process;

END;