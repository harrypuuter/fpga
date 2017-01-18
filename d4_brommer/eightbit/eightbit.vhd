library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity eightbit is
port(
        inputa: in std_logic_vector(3 downto 0);
        inputb: in std_logic_vector(3 downto 0);
		  carryin: in std_logic;
		  carryout: out std_logic;
        --output: out std_logic_vector(3 downto 0);
		  hex0: out std_logic_vector(6 downto 0);
        hex1: out std_logic_vector(6 downto 0);
        hex2: out std_logic_vector(6 downto 0)
        );
end;

architecture behave of eightbit is

component hex_conv
port(
	digit: in integer range 0 to 15;
	hex: out std_logic_vector(6 downto 0)
	);
end component;
component volladdierer
port(
        a: in std_logic;
        b: in std_logic;
        carryin: in std_logic;
        output: out std_logic;
        carryout: out std_logic
        );
end component;
signal tempcarry: std_logic_vector(3 downto 0);
signal output: std_logic_vector(3 downto 0);

begin
c0: volladdierer port map(a => inputa(0), b => inputb(0), carryin => not carryin, output => output(0), carryout => tempcarry(0));
GEN_REG:
	for X in 1 to 3 generate
       ck: volladdierer port map(a => inputa(X), b => inputb(X), carryin => tempcarry(X-1), output => output(X), carryout => tempcarry(X));
end generate GEN_REG;
c2: hex_conv port map(digit => to_integer(unsigned(inputa)), hex => hex0);
c3: hex_conv port map(digit => to_integer(unsigned(inputb)), hex => hex1);
c4: hex_conv port map(digit => to_integer(unsigned(output)), hex => hex2);
carryout <= tempcarry(3);
end;