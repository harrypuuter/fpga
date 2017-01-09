library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity numbers is
port(
	key: in std_logic_vector(7 downto 0);
	ledr: out std_logic_vector(7 downto 0);
	hex0: out std_logic_vector(6 downto 0);
	hex1: out std_logic_vector(6 downto 0);
	hex2: out std_logic_vector(6 downto 0);
	hex3: out std_logic_vector(6 downto 0)
	);

end;

architecture behave of numbers is

component hex_conv
port(
	digit: in integer range 0 to 9;
	hex: out std_logic_vector(6 downto 0)
	);
end component;
signal decimal: integer range 0 to 255:=0;
signal key_us: unsigned(7 downto 0);
signal decimal_0: integer range 0 to 9:= 0;
signal decimal_1: integer range 0 to 9:= 0;
signal decimal_2: integer range 0 to 9:= 0;


begin
	process(key)
	begin
		for X in 0 to 7 loop
			ledr(X) <= key(X);
		end loop;
	key_us <= unsigned(key);
	decimal <= to_integer(key_us);
	decimal_2 <= decimal/100;
	decimal_1 <= (decimal mod 100)/10;
	decimal_0 <= decimal mod 10;
	end process;
	c0: hex_conv port map(digit => decimal_2, hex => hex2);
	c1: hex_conv port map(digit => decimal_1, hex => hex1);
	c2: hex_conv port map(digit => decimal_0, hex => hex0);
	hex3 <= "1111111";
end;