library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity hex_conv is
port(
	digit: in integer range 0 to 15;
	hex: out std_logic_vector(6 downto 0)
	);

end;

architecture behave of hex_conv is
begin
	process(digit)
	begin
		if (digit = 0) then
			hex <= "1000000";
		elsif (digit = 1)  then
			hex <= "1111001";
		elsif (digit = 2)  then
			hex <= "0100100";
		elsif (digit = 3)  then
			hex <= "0110000";
		elsif (digit = 4)  then
			hex <= "0011001";
		elsif (digit = 5)  then
			hex <= "0010010";
		elsif (digit = 6)  then
			hex <= "0000010";
		elsif (digit = 7)  then
			hex <= "1111000";
		elsif (digit = 8)  then
			hex <= "0000000";
		elsif (digit = 9)  then
			hex <= "0010000";
		elsif (digit = 10)  then
			hex <= "0001000";
		elsif (digit = 11)  then
			hex <= "0000011";
		elsif (digit = 12)  then
			hex <= "1000110";
		elsif (digit = 13)  then
			hex <= "0100001";
		elsif (digit = 14)  then
			hex <= "0000110";
		elsif (digit = 15)  then
			hex <= "0001110";
		end if;
	end process;
end;