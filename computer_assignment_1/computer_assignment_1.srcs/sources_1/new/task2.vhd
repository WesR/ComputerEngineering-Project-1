----------------------------------------------------------------------------------
-- Engineer: Wes, Dylan, and Ron
-- 
-- Create Date: 10/15/2018 11:40:02 PM
-- Design Name: task2
-- Module Name: task2 - Behavioral
--
-- Revision 0.01 - File Created
-- Additional Comments:
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity task2 is
    Port ( a : in STD_LOGIC;
           b : in STD_LOGIC;
           c : in STD_LOGIC;
           d : in STD_LOGIC;
           f : out STD_LOGIC);
end task2;

architecture Behavioral of task2 is

begin
    
    f <= (not A and not B and not C and not D) or (not A and not B and not C and D) or (not A and not B and C and not D) or (not A and not B and C and D)
          or (not A and B and not C and not D) or (not A and B and C and not D) or (not A and B and C and D) or (A and not B and C and not D)
          or (A and not B and C and D) or (A and B and C and not D) or (A and B and C and D);

end Behavioral;
