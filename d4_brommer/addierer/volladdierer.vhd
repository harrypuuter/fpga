library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity vollvolladdierer is
port(
	inputa: in std_logic_vector(7 downto 0);
	inputb: in std_logic_vector(7 downto 0);
	output: out std_logic_vector(8 downto 0)
	);
end;

architecture behave of vollvolladdierer is

component volladdierer
port(
	a: in std_logic;
	b: in std_logic;
	carryin: in std_logic;
	output: out std_logic;
	carryout: out std_logic
	);
end component;
signal tempcarry: unsigned;


begin
volladdierer port map(a => inputa(0), b => inputb(0), carryin => input(0), output => output(0), carryout => tempcarry);
for X in 1 to 7 loop
	volladdierer port map(a => inputa(X), b => inputb(X), carryin => tempcarry, output => output(X), carryout => tempcarry);
end loop;
output(8) <= tempcarry;