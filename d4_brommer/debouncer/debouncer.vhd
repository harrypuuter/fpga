library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
LIBRARY altera;
USE altera.altera_primitives_components.all;   

library lpm;
use lpm.lpm_components.all;
entity debouncer is 
port(
	start: in std_logic;
	clock: in std_logic;
	hex0: out std_logic_vector(6 downto 0);
	hex1: out std_logic_vector(6 downto 0);
	ledr: out std_logic
);
end;

architecture behave of debouncer is

component lpm_counter
generic ( LPM_WIDTH : natural;
			 --LPM_MODULUS : natural := 0;
			 LPM_DIRECTION : string := "UNUSED";
			 --LPM_AVALUE : string := "UNUSED";
			 LPM_SVALUE : string := "UNUSED");
			 --LPM_PORT_UPDOWN : string := "PORT_CONNECTIVITY";
			 --LPM_PVALUE : string := "UNUSED";
			 --LPM_TYPE : string := L_COUNTER;
			 --LPM_HINT : string := "UNUSED");
port(
		clock: in std_logic;
		cout: out std_logic;
--		sset: in std_logic;
		sclr: in std_LOGIC;
		clk_en: in std_logic;
		q: out std_logic_vector(3 downto 0));
end component;
component tff
    port(
        t, clk:  in  std_logic;
        q     :  out std_logic);
end component;
COMPONENT DFFE
   PORT (d   : IN STD_LOGIC;
        clk  : IN STD_LOGIC;
 --       clrn : IN STD_LOGIC;
  --      prn  : IN STD_LOGIC;
			ena  : IN STD_LOGIC;
        q    : OUT STD_LOGIC);
END COMPONENT;

component hex_conv
port(
	digit: in integer range 0 to 15;
	hex: out std_logic_vector(6 downto 0)
	);
end component;
signal q: std_logic_vector(3 downto 0);
signal q_test: std_logic_vector(3 downto 0);
signal q_test2: std_logic_vector(3 downto 0);
signal sclr: std_logic;
signal cout: std_logic;
signal debounced: std_logic;
signal sset_test: std_logic;
signal cout_test: std_logic;
signal dffs_input_0: std_logic;
signal dffs_output_0: std_logic;
signal dffs_input_1: std_logic;
signal dffs_output_1: std_logic;
signal ena : std_logic;

begin
debounce_counter: lpm_counter GENERIC MAP( lpm_WIDTH => 20, lpm_DIRECTION => "UP", lpm_SVALUE => "0")
				PORT MAP(clock => clock, sclr => sclr, cout => cout, q => q, clk_en => '1');
test_counter: lpm_counter GENERIC MAP( lpm_WIDTH => 4, lpm_DIRECTION => "UP")
				PORT MAP(clock => debounced, sclr => '0', cout => cout_test, q => q_test, clk_en => '1');
test_counter_unbounced: lpm_counter GENERIC MAP( lpm_WIDTH => 4, lpm_DIRECTION => "UP")
				PORT MAP(clock => bla, sclr => '0', cout => cout_test, q => q_test2, clk_en => '1');
debounce_flip_flip: dffe port map(clk => clock, d => dffs_output_1, q => debounced, ena => ena);
toggle_ff_1: dffe port map(clk => clock, d => bla, q => dffs_output_0, ena => '1');
toggle_ff_2: dffe port map(clk => clock, d => dffs_output_0, q => dffs_output_1, ena => '1');
hex_0: hex_conv port map(digit => to_integer(unsigned(q_test)), hex => hex0);
hex_1: hex_conv port map(digit => to_integer(unsigned(q_test2)), hex => hex1);
process(clock)
begin
-- if toggle -> reset counter clock 
if dffs_output_0 /= dffs_output_1 then
	sclr <= '1';
end if;
if cout = '1' then
	ena <= '1';
	end if;
end process;
end;