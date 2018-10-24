----------------------------------------------------------------------------------
-- Engineers: Wes, Dylan, and Ron
----------------------------------------------------------------------------------



library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity encoder_tb is
--  Port ( );
end encoder_tb;

architecture Behavioral of encoder_tb is
component Task3
Port ( hex_in : in STD_LOGIC_VECTOR (3 downto 0);
           A : out STD_LOGIC;
           B : out STD_LOGIC;
           C : out STD_LOGIC;
           D : out STD_LOGIC;
           E : out STD_LOGIC;
           F : out STD_LOGIC;
           G : out STD_LOGIC);
end component;           

signal hex_in: std_logic_vector(3 downto 0);
signal A: std_logic;
signal B: std_logic;
signal C: std_logic;
signal D: std_logic;
signal E: std_logic;
signal F: std_logic;
signal G: std_logic;

signal counter: unsigned(3 downto 0) := "0000";

begin
uut: Task3 port map(
hex_in => hex_in,
A => A,
B => B,
C => C,
D => D, 
E => E,
F => F,
G => G);

hex_in <= std_logic_vector(counter);

debug : Process
	Begin
    hex_in <= "0000";
    Wait For 20ns;
    hex_in <= "0001";
    Wait For 20ns;
    hex_in <= "0010";
    Wait For 20ns;
    hex_in <= "0011";
    Wait For 20ns;
    hex_in <= "0100";
    Wait For 20ns;
    hex_in <= "0101";
    Wait For 20ns;
    hex_in <= "0110";
    Wait For 20ns;
    hex_in <= "0111";
    Wait For 20ns;
    hex_in <= "1000"; 
    Wait For 20ns;
    hex_in <= "1001";
    Wait For 20ns;
    hex_in <= "1010";
    Wait For 20ns;
    hex_in <= "1011";
    Wait For 20ns;
    hex_in <= "1100";
    Wait For 20ns;
    hex_in <= "1101";
    Wait For 20ns;
    hex_in <= "1110";
    Wait For 20ns;
    hex_in <= "1111";
    Wait For 20ns;
 End Process debug;
 
  tb: process
    begin
    wait for 20ns;
    counter <= counter + 1;
  end process tb;
 
end Behavioral;
