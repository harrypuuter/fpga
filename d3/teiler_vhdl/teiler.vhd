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


component lpm_counter
 generic ( 	LPM_WIDTH : natural;
				LPM_DIRECTION : string := "unused";
				LPM_SVALUE: STRING := "UNUSED"
			);

 port (
 CLOCK : in std_logic ;
 SSET : in std_logic := '0';
 COUT : out std_logic := '0';
 Q : out std_logic_vector(LPM_WIDTH-1 downto 0)
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

counter6:  lpm_counter generic map (lpm_width => 6,  lpm_direction=>"UP") port map(clock => clock, cout => cout);
counter12: lpm_counter generic map (lpm_width => 12, lpm_direction=>"DOWN", lpm_svalue=>"3906") port map(clock => cout, q=> q_counter12, sset=> reset);
 
toggler: tff port map(t=> '1', clk => toggle, q=>output); 

check: process (reset) 
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