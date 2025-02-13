library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity contador_segundos is
    Port (
        clk          : in  std_logic;         -- Clock de entrada
        reset        : in  std_logic;         -- Reset do contador
        carry_in     : in  std_logic;         -- Pulso de entrada para incremento
		  pause_signal : in std_logic;              -- Sinal de pause
        
		  count_sec    : out std_logic_vector(7 downto 0); -- Saída do contador (8 bits)
        carry_out    : out std_logic          -- Pulso gerado ao reiniciar o contador
    );
end contador_segundos;

architecture Behavioral of contador_segundos is
    signal counter : integer range 0 to 59 := 0; -- Contador interno
begin

    process(clk, reset)
    begin
        if reset = '1' then
            counter <= 0;              -- Reseta o contador
            carry_out <= '0';
        elsif rising_edge(clk) and pause_signal = '0' then
            if carry_in = '1' then     -- Incrementa somente se o carry_in for 1
                if counter = 59 then
                    counter <= 0;      -- Reinicia ao atingir 59
                    carry_out <= '1';  -- Gera um pulso de carry_out
                else
                    counter <= counter + 1;
                    carry_out <= '0';
                end if;
            end if;
        end if;
    end process;

    -- Converte o contador para 8 bits e conecta à saída
    count_sec <= std_logic_vector(to_unsigned(counter, 8));

end Behavioral;
