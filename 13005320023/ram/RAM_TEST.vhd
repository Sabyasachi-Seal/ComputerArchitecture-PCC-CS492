--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   14:38:23 05/02/2022
-- Design Name:   
-- Module Name:   /home/student/Documents/Prarthana Karmakar_13000320049/RAM/RAM_TEST.vhd
-- Project Name:  RAM
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: RAM_RTL
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
USE ieee.std_logic_unsigned.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY RAM_TEST IS
END RAM_TEST;
 
ARCHITECTURE behavior OF RAM_TEST IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT RAM_RTL
    PORT(
         address : IN  std_logic_vector(6 downto 0);
         data_in : IN  std_logic_vector(7 downto 0);
         write_in : IN  std_logic;
         clk : IN  std_logic;
         data_out : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal address : std_logic_vector(6 downto 0) := (others => '0');
   signal data_in : std_logic_vector(7 downto 0) := (others => '0');
   signal write_in : std_logic := '0';
   signal clk : std_logic := '0';

 	--Outputs
   signal data_out : std_logic_vector(7 downto 0);

   -- Clock period definitions
   constant clk_period : time := 2 ps;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: RAM_RTL PORT MAP (
          address => address,
          data_in => data_in,
          write_in => write_in,
          clk => clk,
          data_out => data_out
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
     write_in<='0';
	  address<="0000000";
	  data_in<=x"FF";
	  wait for 2 ps;
	  for i in 0 to 5 loop
			address<=address+"0000001";
			wait for 4 ps;
     end loop;
	  address<="0000000";
	  write_in<='1';
	  wait for 2 ps;
	  for i in 0 to 5 loop
			address<=address+"0000001";
			data_in<=data_in+"01";
			wait for 4 ps;
     end loop;
	  write_in<='0';
	  wait;
   end process;
END;
