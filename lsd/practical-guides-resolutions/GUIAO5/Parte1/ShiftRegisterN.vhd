library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity ShiftRegisterN is
	generic (n : positive := 4);
	port( clk : in std_logic;
			so : out std_logic;
			si : in std_logic;
			dataOut : out std_logic_vector((n-1) downto 0));
end ShiftRegisterN;

architecture RTL of ShiftRegisterN is

signal s_shiftReg : std_logic_vector((n-1) downto 0);

begin

process(clk)

begin

	if (rising_edge(clk)) then
			s_shiftReg <= s_shiftReg((n-2) downto 0) & not si;
	end if;
	dataOut <= s_shiftReg;
end process;

end RTL;
	