library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity AddSubN is
	generic (n : positive := 4);
	port (op0 : in std_logic_vector(n-1 downto 0);
			op1 : in std_logic_vector(n-1 downto 0);
			sub : in std_logic;
			res : out std_logic_vector(n-1 downto 0);
			cout : out std_logic);
end AddSubN;

architecture Structural of AddSubN is

signal op0_b , op1_b , res_b : std_logic_vector(n downto 0);
signal sub_b : std_logic;

begin 
	
	op0_b <= op0;
	op1_b <= op1;
	sub_b <= sub;
	res_b <= (op1_b or op0_b) when sub_b = '0' else (op1_b nor op0_b);
	res <= 
	--cout <= (op1 and op0) or (cin and (op0 xor op1));
	--cout <= res_b(n);


end Structural;
