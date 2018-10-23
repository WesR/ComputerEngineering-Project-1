----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/17/2018 05:07:27 PM
-- Design Name: 
-- Module Name: task2_tb - Behavioral
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
use IEEE.NUMERIC_STD.ALL;

entity task2_tb is
end task2_tb;

architecture Behavioral of task2_tb is
    Component task2 is
        Port ( a : in STD_LOGIC;
               b : in STD_LOGIC;
               c : in STD_LOGIC;
               d : in STD_LOGIC;
               f : out STD_LOGIC);
    End Component;
    signal a, b, c, d, f : STD_LOGIC;
    
begin

	uut : task2
	Port Map(a => a, b => b, c => c, d => d, f => f);

    debug : Process
	Begin -- hardcoded testing loop for task2
    a <= '0';
    b <= '0';
    c <= '0';
    d <= '0';
    Wait For 20ns;
    a <= '0';
    b <= '0';
    c <= '0';
    d <= '1';
    Wait For 20ns;
    a <= '0';
    b <= '0';
    c <= '1';
    d <= '0';
    Wait For 20ns;
    a <= '0';
    b <= '0';
    c <= '1';
    d <= '1';
    Wait For 20ns;
    
    a <= '0';
    b <= '1';
    c <= '0';
    d <= '0';
    Wait For 20ns;
    a <= '0';
    b <= '1';
    c <= '0';
    d <= '1';
    Wait For 20ns;
    a <= '0';
    b <= '1';
    c <= '1';
    d <= '0';
    Wait For 20ns;
    a <= '0';
    b <= '1';
    c <= '1';
    d <= '1';
    Wait For 20ns;
    
    a <= '1';
    b <= '0';
    c <= '0';
    d <= '0';
    Wait For 20ns;
    a <= '1';
    b <= '0';
    c <= '0';
    d <= '1';
    Wait For 20ns;
    a <= '1';
    b <= '0';
    c <= '1';
    d <= '0';
    Wait For 20ns;
    a <= '1';
    b <= '0';
    c <= '1';
    d <= '1';
    Wait For 20ns;
    
    a <= '1';
    b <= '1';
    c <= '0';
    d <= '0';
    Wait For 20ns;
    a <= '1';
    b <= '1';
    c <= '0';
    d <= '1';
    Wait For 20ns;
    a <= '1';
    b <= '1';
    c <= '1';
    d <= '0';
    Wait For 20ns;
    a <= '1';
    b <= '1';
    c <= '1';
    d <= '1';
    Wait For 20ns;
	End Process debug;


end Behavioral;
