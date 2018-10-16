----------------------------------------------------------------------------------
-- Company:
-- Engineer:
--
-- Create Date: 10/16/2018 12:44:08 AM
-- Design Name:
-- Module Name: task1_tb - Behavioral
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
Library IEEE;
Use IEEE.STD_LOGIC_1164.All;
Use IEEE.NUMERIC_STD.All;

Entity task1_tb Is

End task1_tb;

Architecture Behavioral Of task1_tb Is
	Component task1 Is
        Port ( a : in STD_LOGIC;
               b : in STD_LOGIC;
               cin : in STD_LOGIC;
               sum : out STD_LOGIC;
               cout : out STD_LOGIC);
	End Component;
	Signal a, b, cin, sum, cout : STD_LOGIC;
 
Begin
	--Begining the test

	uut : task1
	Port Map(a => a, b => b, cin => cin, sum => sum, cout => cout);

--    process
--        variable counter: integer := 0;
--    begin
--        counter := counter + 1;
    
--        if (counter mod 2 = 0) then 
--            a <= '1';
--        else
--            a <= '0';
--        end if;
--        wait For 20ns;
--    end process;

	debug : Process
	Begin
		a <= '0';
		b <= '0';
		cin <= '1';
		Wait For 20ns;
		a <= '0';
        b <= '1';
        cin <= '0';
        Wait For 20ns;
        a <= '0';
        b <= '1';
        cin <= '1';
        Wait For 20ns;
        a <= '1';
        b <= '0';
        cin <= '0';
        Wait For 20ns;
        a <= '1';
        b <= '0';
        cin <= '1';
        Wait For 20ns;
        a <= '1';
        b <= '1';
        cin <= '0';
        Wait For 20ns;
        a <= '1';
        b <= '1';
        cin <= '1';
        Wait For 20ns;
	End Process debug;

End Behavioral;