--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   15:43:22 04/18/2022
-- Design Name:   
-- Module Name:   /home/student/Documents/Prarthana Karmakar_13000320049/SIPO/SIPO_TEST.vhd
-- Project Name:  SIPO
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: SIPO_RTL
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
 
ENTITY SIPO_TEST IS
END SIPO_TEST;
 
ARCHITECTURE behavior OF SIPO_TEST IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT SIPO_RTL
    PORT(
         uin : IN  std_logic;
         clk : IN  std_logic;
         reset : IN  std_logic;
         uout : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal uin : std_logic := '0';
   signal clk : std_logic := '0';
   signal reset : std_logic := '0';

 	--Outputs
   signal uout : std_logic_vector(3 downto 0);

   -- Clock period definitions
   constant clk_period : time := 2 ps;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: SIPO_RTL PORT MAP (
          uin => uin,
          clk => clk,
          reset => reset,
          uout => uout
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
      reset<='1';
		wait for 2 ps;
		uin<='1';
		reset<='0';
		wait for 2 ps;
		uin<='0';
		reset<='0';
		wait for 6 ps;
   end process;

END;
