LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY full_adder_tb IS
END full_adder_tb;

ARCHITECTURE behavior OF full_adder_tb IS

    -- Component Declaration
    COMPONENT full_adder
    PORT(
        A   : IN  STD_LOGIC;
        B   : IN  STD_LOGIC;
        Cin : IN  STD_LOGIC;
        Sum : OUT STD_LOGIC;
        Cout: OUT STD_LOGIC
    );
    END COMPONENT;

    -- Signals
    SIGNAL A   : STD_LOGIC := '0';
    SIGNAL B   : STD_LOGIC := '0';
    SIGNAL Cin : STD_LOGIC := '0';
    SIGNAL Sum : STD_LOGIC;
    SIGNAL Cout: STD_LOGIC;

BEGIN

    -- Instantiate the Unit Under Test (UUT)
    uut: full_adder
    PORT MAP (
        A => A,
        B => B,
        Cin => Cin,
        Sum => Sum,
        Cout => Cout
    );

    -- Stimulus process
    stim_proc: process
    BEGIN
        
        A <= '0'; B <= '0'; Cin <= '0';
        WAIT FOR 10 ns;

        A <= '0'; B <= '0'; Cin <= '1';
        WAIT FOR 10 ns;

        A <= '0'; B <= '1'; Cin <= '0';
        WAIT FOR 10 ns;

        A <= '0'; B <= '1'; Cin <= '1';
        WAIT FOR 10 ns;

        A <= '1'; B <= '0'; Cin <= '0';
        WAIT FOR 10 ns;

        A <= '1'; B <= '0'; Cin <= '1';
        WAIT FOR 10 ns;

        A <= '1'; B <= '1'; Cin <= '0';
        WAIT FOR 10 ns;

        A <= '1'; B <= '1'; Cin <= '1';
        WAIT FOR 10 ns;

        WAIT;
        
    END PROCESS;

END;
