----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/03/2024 10:24:03 AM
-- Design Name: 
-- Module Name: fsm_mealy_tb - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity fsm_mealy_tb is
--  Port ( );
end fsm_mealy_tb;

architecture Behavioral of fsm_mealy_tb is
component fsm_mealy is
    Port ( x : in STD_LOGIC;
           clk : in STD_LOGIC;
           clr : in STD_LOGIC;
           z : out STD_LOGIC);
end component;
signal clk: std_logic:='0';
signal clr: std_logic:='1';
signal x: std_logic:= '0';
signal z: std_logic;

begin
-- Clock process definitions
clock_process :process
begin
     clk <= '1';
     wait for 10 ns;
     clk <= '0';
     wait for 10 ns;
end process clock_process;

uut: entity work.fsm_mealy port map(x=>x,clk=>clk,clr=>clr,z=>z);
stimulus: process
begin
    wait for 10 ns;
    x <= '0';
    wait for 10ns;
    x <= '1';
    wait for 10ns;
    x <= '1';
    wait for 10ns;
    x <= '0'; --ends pattern 0110
    wait for 10ns;
    x <= '1';
    wait for 10ns;
    x <= '1';
    wait for 10ns;
    x <= '1';
    wait for 10ns;
    x <= '0';
end process stimulus;
end Behavioral;
