library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity orgate2 is 
port(
	key: in std_logic_vector(2 downto 0);
	ledr: out std_logic
	);
end;

architecture behave of orgate2 is

component orgate
port (
	key: in std_logic_vector(1 downto 0);
	ledr: out std_logic
	);
end component;
signal or1: std_logic;

begin

c0: orgate port map( key => not key(1 downto 0), ledr => or1);
c1: orgate port map( key => not key(2) & or1, ledr => ledr);

end;
