library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity volladdierer_8bit is 
port(
	a: in std_logic_vector(3 downto 0);
	b: in std_logic_vector(3 downto 0);
	cin: in std_logic;
	sum: out std_logic_vector(3 downto 0);
	cout: out std_logic;
	hexa: out std_logic_vector(6 downto 0);
	hexb: out std_logic_vector(6 downto 0);
	hexsum: out std_logic_vector(6 downto 0)
	);
end;

architecture behave of volladdierer_8bit is

component volladdierer
port (
	a: in std_logic;
	b: in std_logic;
	cmin1: in std_logic;
	sum: out std_logic;
	cout: out std_logic
	);
end component;

component hex_conv
port(
	digit: in std_logic_vector(3 downto 0);
	hex: out std_logic_vector(6 downto 0)
	);
end component;

signal cout_temp: std_logic_vector(3 downto 0);
signal sum_temp: std_logic_vector(3 downto 0);

begin

add0: volladdierer port map( a => a(0), b => b(0), cmin1 => not cin, sum => sum_temp(0), cout => cout_temp(0));
add1: volladdierer port map( a => a(1), b => b(1), cmin1 => cout_temp(0), sum => sum_temp(1), cout => cout_temp(1));
add2: volladdierer port map( a => a(2), b => b(2), cmin1 => cout_temp(1), sum => sum_temp(2), cout => cout_temp(2));
add3: volladdierer port map( a => a(3), b => b(3), cmin1 => cout_temp(2), sum => sum_temp(3), cout => cout);

sum <= sum_temp;

a_hex: hex_conv port map(digit => a, hex => hexa);
b_hex: hex_conv port map(digit => b, hex => hexb);
sum_hex: hex_conv port map(digit => sum_temp, hex => hexsum);




end;