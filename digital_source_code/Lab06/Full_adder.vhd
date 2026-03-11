LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY full_adder IS
    PORT(
        A    : IN  STD_LOGIC;
        B    : IN  STD_LOGIC;
        Cin  : IN  STD_LOGIC;
        Sum  : OUT STD_LOGIC;
        Cout : OUT STD_LOGIC
    );
END full_adder;

ARCHITECTURE behavior OF full_adder IS
BEGIN

    -- Sum equation
    Sum  <= A XOR B XOR Cin;

    -- Carry equation
    Cout <= (A AND B) OR (Cin AND (A XOR B));

END behavior;
