library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity orgate is
port(
	key: in std_logic_vector (1 downto 0);
	ledr: out std_logic
);
end;

architecture behave of orgate is
begin

ledr <= key(1) or key(0);

end;
