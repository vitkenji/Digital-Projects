library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity contador_minutos is
    Port (
        clk          : in  std_logic;         -- Clock de entrada
        reset        : in  std_logic;         -- Reset do contador
        carry_in     : in  std_logic;         -- Pulso de entrada para incremento
		  pause_signal : in std_logic;              -- Sinal de pause
		  
        count_min    : out std_logic_vector(3 downto 0); -- Saída do contador (4 bits)
        carry_out    : out std_logic          -- Pulso gerado ao reiniciar o contador
    );
end contador_minutos;

architecture Behavioral of contador_minutos is
    signal counter : integer range 0 to 9 := 0; -- Contador interno
begin

    process(clk, reset)
    begin
        if reset = '1' then
            counter <= 0;              -- Reseta o contador
            carry_out <= '0';
        elsif rising_edge(clk) and pause_signal = '0' then
            if carry_in = '1' then     -- Incrementa somente se o carry_in for 1
                if counter = 9 then
                    counter <= 0;      -- Reinicia ao atingir 9
                    carry_out <= '1';  -- Gera um pulso de carry_out
                else
                    counter <= counter + 1;
                    carry_out <= '0';
                end if;
            end if;
        end if;
    end process;

    -- Converte o contador para 4 bits e conecta à saída
    count_min <= std_logic_vector(to_unsigned(counter, 4));

end Behavioral;
