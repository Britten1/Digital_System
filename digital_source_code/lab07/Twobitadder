library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity two_bit_adder is
    Port (
        A    : in  STD_LOGIC_VECTOR(1 downto 0);
        B    : in  STD_LOGIC_VECTOR(1 downto 0);
        Cin  : in  STD_LOGIC;
        S    : out STD_LOGIC_VECTOR(1 downto 0);
        Cout : out STD_LOGIC
    );
end two_bit_adder;

architecture dataflow of two_bit_adder is

signal C1 : STD_LOGIC;

begin

-- First bit addition
S(0) <= A(0) xor B(0) xor Cin;
C1   <= (A(0) and B(0)) or (Cin and (A(0) xor B(0)));

-- Second bit addition
S(1) <= A(1) xor B(1) xor C1;
Cout <= (A(1) and B(1)) or (C1 and (A(1) xor B(1)));

end dataflow;
