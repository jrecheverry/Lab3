--------------------------------------------------------------------------------
-- Company: USAFA
-- Engineer: Jacob Echeverry
--
-- Create Date:   22:21:16 03/09/2014
-- Design Name:   
-- Module Name:   C:/Users/C15Jacob.Echeverry/Desktop/ECE_281/CE3/CE3_Echeverry/Moore_testbench_Echeverry.vhd
-- Project Name:  CE3_Echeverry
-- Target Device:  
-- Tool versions:  
-- Description:   Creation of the testbench for a Moore design.
-- 
-- VHDL Test Bench Created by ISE for module: MooreElevatorController_Shell
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
 
ENTITY Moore_testbench_Echeverry IS
END Moore_testbench_Echeverry;
 
ARCHITECTURE behavior OF Moore_testbench_Echeverry IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT MooreElevatorController_Shell
    PORT(
         clk : IN  std_logic;
         reset : IN  std_logic;
         stop : IN  std_logic;
         up_down : IN  std_logic;
         floor : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal reset : std_logic := '0';
   signal stop : std_logic := '0';
   signal up_down : std_logic := '0';

 	--Outputs
   signal floor : std_logic_vector(3 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: MooreElevatorController_Shell PORT MAP (
          clk => clk,
          reset => reset,
          stop => stop,
          up_down => up_down,
          floor => floor
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
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for clk_period*2;

      -- insert stimulus here 
		--first storage
		reset<='1'; --eleveator starts at 1
		wait for clk_period*2;
		--2nd storage
		reset<='0';
		up_down<= '1'; 
		stop<='0';
		wait for clk_period*1;
		reset<='0';
		up_down<='1';
		stop<= '1';
		wait for clk_period*1;
		--3rd storage
		reset<='0';
		up_down<='1';
		stop<='0';
		wait for clk_period*1;
		reset<='0';
		up_down<='1';
		stop<='1';
		wait for clk_period*1;
		--4th storage
		reset<='0';
		up_down<='1';
		stop<='0';
		wait for clk_period*1;
		reset<='0';
		up_down<='1';
		stop<='1';
		--to go down
		wait for clk_period*1;
		reset<='0';
		up_down<='0';
		stop<='0';
		wait for clk_period*4;

      wait;
   end process;

END;
