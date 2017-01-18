library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity volladdierer is
port(
	a: in std_logic;
	b: in std_logic;
	carryin: in std_logic;
	output: out std_logic;
	carryout: out std_logic
	);
end;

architecture behave of volladdierer is

begin
	output <= a Xor b xor carryin;
	carryout <= (carryin AND (a XOR b)) OR (a AND b);
end;