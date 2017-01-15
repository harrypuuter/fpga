library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
library altera;
USE altera.altera_primitives_components.all; 

LIBRARY lpm;                 --Allows use of all Altera LPM 
USE lpm.all;  --functions

entity debouncer is
port(
	taster: in std_logic;
	clock: in std_logic;
	output: out std_logic;
	hexout: out std_logic_vector(6 downto 0)

);

end;


architecture behave of debouncer is

component lpm_counter
 generic ( 	LPM_WIDTH : natural;
				LPM_DIRECTION : string := "DOWN";
				LPM_SVALUE: STRING := "UNUSED"
			);

 port (
 CLOCK : in std_logic ;
 SSET : in std_logic := '0';
 cnt_en: IN STD_LOGIC := '1';
 clk_en: IN STD_LOGIC := '1';
 COUT : out std_logic := '0';
 Q : out std_logic_vector(LPM_WIDTH-1 downto 0)
 );
end component;

component dff
    port(
        d, clk		:  in  std_logic;
        q         :  out std_logic);
end component;

component hex_conv
port(
	digit: in std_logic_vector(3 downto 0);
	hex: out std_logic_vector(6 downto 0)
	);
end component;

signal cout: STD_LOGIC;
signal clk_en: std_logic;
signal d: std_logic;
signal debounced: std_logic;
signal count: std_logic_vector(3 downto 0);


begin
counter:  lpm_counter generic map (lpm_width => 33) port map(clock => clock, cout => cout, clk_en => clk_en);
testcounter: lpm_counter generic map (lpm_width => 4) port map(clock => debounced, q => count);
flipflop: dff port map (clk => clock, d => d, q => debounced);
hex: hex_conv port map(digit => count, hex => hexout);

process (clock) 
begin
	if (taster)='1' then
		clk_en <= '1';
		d <= '1';
	elsif (taster)='0' then
		clk_en <= '1';
		d <= '0';
	else clk_en <='0';
	end if;
output <= debounced;	
end process;





	
end;
