library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
library altera;
USE altera.altera_primitives_components.all; 

LIBRARY lpm;                 --Allows use of all Altera LPM 
USE lpm.all;  --functions

entity volladdierer is
port(
	a: in std_logic;
	b: in std_logic;
	cmin1: in std_logic;
	sum: out std_logic;
	cout: out std_logic
);

end;

architecture behave of volladdierer is

signal sum_h1: std_logic;
signal cout_h1: std_logic;
signal ueber_h2: std_logic;


begin

add: process (a,b,cmin1) 
begin
	sum_h1 <= a xor b;
	cout_h1 <= a and b;
	sum <= sum_h1 xor cmin1;
	ueber_h2 <= sum_h1 and cmin1;
	cout <= ueber_h2 or cout_h1;
	
	
end process;





	
end;