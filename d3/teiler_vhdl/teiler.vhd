library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
library altera;
USE altera.altera_primitives_components.all; 

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

component tff
    port(
        t, clk		:  in  std_logic;
        q         :  out std_logic);
end component;


signal cout: STD_LOGIC;
signal reset: STD_LOGIC;
signal toggle: STD_LOGIC;
signal q_counter12	: STD_LOGIC_VECTOR (11 DOWNTO 0);


begin

counter1: counter6 port map(clock => clock, cout => cout);
counter2: counter12 port map(clock => cout, sset => reset, q=>q_counter12);
toggler: tff port map(t=> '1', clk => toggle, q=>output); 

check: process (cout) 
begin
	if unsigned(q_counter12)=0 then
		toggle <= '1';
		reset<='1';
	else 
		toggle <='0';
		reset<='0';
	end if;
end process;






	
end;