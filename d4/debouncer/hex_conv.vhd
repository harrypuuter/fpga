library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity hex_conv is
port(
	digit: in std_logic_vector(3 downto 0);
	hex: out std_logic_vector(6 downto 0)
	);

end;

architecture behave of hex_conv is
begin
	process(digit)
	begin
		if (unsigned(digit) = 0) then
			hex <= "1000000";
		elsif (unsigned(digit) = 1)  then
			hex <= "1111001";
		elsif (unsigned(digit) = 2)  then
			hex <= "0100100";
		elsif (unsigned(digit) = 3)  then
			hex <= "0110000";
		elsif (unsigned(digit) = 4)  then
			hex <= "0011001";
		elsif (unsigned(digit) = 5)  then
			hex <= "0010010";
		elsif (unsigned(digit) = 6)  then
			hex <= "0000010";
		elsif (unsigned(digit) = 7)  then
			hex <= "1111000";
		elsif (unsigned(digit) = 8)  then
			hex <= "0000000";
		elsif (unsigned(digit) = 9)  then
			hex <= "0010000";
		elsif (unsigned(digit) = 10)  then
			hex <= "0001000";
		elsif (unsigned(digit) = 11)  then
			hex <= "0000011";
		elsif (unsigned(digit) = 12)  then
			hex <= "1000110";
		elsif (unsigned(digit) = 13)  then
			hex <= "0100001";
		elsif (unsigned(digit) = 14)  then
			hex <= "0000110";
		elsif (unsigned(digit) = 15)  then
			hex <= "0001110";
		end if;
	end process;
end;