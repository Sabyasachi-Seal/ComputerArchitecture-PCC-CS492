--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   16:16:24 04/18/2022
-- Design Name:   
-- Module Name:   /home/student/Documents/Prarthana Karmakar_13000320049/PISO/PISO_TEST.vhd
-- Project Name:  PISO
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: PISO_RTL
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
 
ENTITY PISO_TEST IS
END PISO_TEST;
 
ARCHITECTURE behavior OF PISO_TEST IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT PISO_RTL
    PORT(
         pin : IN  std_logic_vector(3 downto 0);
         pout : OUT  std_logic;
         si : IN  std_logic;
         clk : IN  std_logic;
         reset : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal pin : std_logic_vector(3 downto 0) := (others => '0');
   signal si : std_logic := '0';
   signal clk : std_logic := '0';
   signal reset : std_logic := '0';

 	--Outputs
   signal pout : std_logic;

   -- Clock period definitions
   constant clk_period : time := 2 ps;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: PISO_RTL PORT MAP (
          pin => pin,
          pout => pout,
          si => si,
          clk => clk,
          reset => reset
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
	  reset<='0';
	  pin<="1010";
	  si<='0';
	  wait for 2 ps;
	  si<='1';
	  wait for 8 ps;
   end process;

END;
