library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tb_two_bit_adder is
end tb_two_bit_adder;

architecture Behavioral of tb_two_bit_adder is

-- Component Declaration
component two_bit_adder
    Port (
        A : in STD_LOGIC_VECTOR(1 downto 0);
        B : in STD_LOGIC_VECTOR(1 downto 0);
        Cin : in STD_LOGIC;
        S : out STD_LOGIC_VECTOR(1 downto 0);
        Cout : out STD_LOGIC
    );
end component;

-- Signals
signal A : STD_LOGIC_VECTOR(1 downto 0);
signal B : STD_LOGIC_VECTOR(1 downto 0);
signal Cin : STD_LOGIC;
signal S : STD_LOGIC_VECTOR(1 downto 0);
signal Cout : STD_LOGIC;

begin

-- Instantiate the Unit Under Test (UUT)
UUT: two_bit_adder
port map(
    A => A,
    B => B,
    Cin => Cin,
    S => S,
    Cout => Cout
);

-- Stimulus Process
process
begin

Cin <= '0';

A <= "00"; B <= "00";
wait for 10 ns;

A <= "00"; B <= "01";
wait for 10 ns;

A <= "01"; B <= "01";
wait for 10 ns;

A <= "10"; B <= "01";
wait for 10 ns;

A <= "10"; B <= "10";
wait for 10 ns;

A <= "11"; B <= "01";
wait for 10 ns;

A <= "11"; B <= "11";
wait for 10 ns;

wait;

end process;

end Behavioral;
