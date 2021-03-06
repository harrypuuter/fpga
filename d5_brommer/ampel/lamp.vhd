library ieee;
use IEEE.std_logic_1164.all;

entity lamp is
port (state :in integer range 0 to 3;
		light: out std_logic_vector(2 downto 0)
-- four different states:
-- 0 - red light
-- 1 - red/yellow light
-- 2 - green light
-- 3 - yellow light
  );
end;

architecture behavioral of lamp is
-- four different states:
-- 0 - red light
-- 1 - red/yellow light
-- 2 - green light
-- 3 - yellow light
begin
process (state)
begin
	if (state = 0) then
		light <= "100";
	elsif(state = 1) then
		light <= "110";
	elsif(state = 2) then
		light <= "001";
	elsif (state = 3) then
		light <= "010";
	end if;
end process;

end;