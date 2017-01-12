library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

LIBRARY lpm;                 --Allows use of all Altera LPM 
USE lpm.all;  --functions

entity teiler is
port(
	clock: in std_logic;
	output: out std_logic
);

end;

architecture behave of teiler is

component counter6
port (
		clock		: IN STD_LOGIC ;
		cout		: OUT STD_LOGIC ;
		q		: OUT STD_LOGIC_VECTOR (5 DOWNTO 0)
	);
end component;

component counter12
port (
		clock		: IN STD_LOGIC ;
		q		: OUT STD_LOGIC_VECTOR (11 DOWNTO 0);
		sset	: IN STD_LOGIC
	);
end component;



signal cout: STD_LOGIC;
signal reset: STD_LOGIC;



begin

counter1: counter6 port map(clock => clock, cout => cout);
counter2: counter12 port map(clock => cout, sset => reset);

check: process (cout) 
begin
if cout='1' then
	reset <='1';
	else reset <='0';
	end if;
end process;

	
end;