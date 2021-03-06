library ieee;
use IEEE.std_logic_1164.all;

entity ampel is
port (clk : in std_logic;
		light0 : out std_logic_vector(2 downto 0);
      light1 : out std_logic_vector(2 downto 0);
		light2 : out std_logic_vector(2 downto 0);
		light3 : out std_logic_vector(2 downto 0)
  );
end;

architecture behavioral of ampel is

component teiler is
port(
	clock: in std_logic;
	output: out std_logic
);
end component;

component lamp is
port (state :in integer range 0 to 3;
		light: out std_logic_vector(2 downto 0)
-- four different states:
-- 0 - red light
-- 1 - red/yellow light
-- 2 - green light
-- 3 - yellow light
  );
end component;

type state_type is (s0,s05,s1,s2,s3,s35,s4,s5);  --type of state machine.
signal current_state,next_state: state_type;  --current and next state declaration.
type LIGHT_DATA is array (3 downto 0) of integer range 0 to 3;
signal light: LIGHT_DATA;
signal slow_clock: std_logic;
begin

ampel0: lamp port map(state => light(0), light => light0); 
ampel1: lamp port map(state => light(1), light => light1); 
ampel2: lamp port map(state => light(2), light => light2); 
ampel3: lamp port map(state => light(3), light => light3); 
clock: teiler port map(clock => clk, output => slow_clock);
--state machine process.
process (slow_clock)
begin
if (rising_edge(slow_clock)) then
  current_state <= next_state;   --state change.
end if;
end process;

-- Machine states
process (current_state)
begin
  case current_state is
			when s0 =>		--state "s0"
				light <= (0,2,0,2);
				next_state <= s05;
			when s05 =>		--state "s0.5"
				light <= (0,2,0,2);
				next_state <= s1;
			when s1 =>		--state "s1"
				light <= (0,3,0,3);
				next_state <= s2;
			when s2 =>		--state "s2"
				light <= (1,0,1,0);
				next_state <= s3;
			when s3 =>		--state "s3"
				light <= (2,0,2,0);
				next_state <= s35;
			when s35 =>		--state "s3.5"
				light <= (2,0,2,0);
				next_state <= s4;
			when s4 =>		--state "s4"
				light <= (3,0,3,0);
				next_state <= s5;
			when s5 =>		--state "s5"
				light <= (0,1,0,1);
				next_state <= s0;
  end case;
end process;

end behavioral;