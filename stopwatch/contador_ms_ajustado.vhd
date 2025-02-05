library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity contador_ms_ajustado is
    port (
        clk_1kHz     : in std_logic;              -- Clock de 1 kHz
        reset        : in std_logic;              -- Sinal de reset
		  pause_signal : in std_logic;              -- Sinal de pause
        count_ms     : out std_logic_vector(11 downto 0);  -- Contador de 000 a 999 ms (12 bits)
        carry_out_ms : out std_logic              -- Sinal de carry para o próximo contador
    );
end contador_ms_ajustado;

architecture Behavioral of contador_ms_ajustado is
    -- Contador interno do tipo integer
    signal count_ms_int : integer range 0 to 999 := 0; 
begin

    process(clk_1kHz, reset)
    begin
        if reset = '1' then
            count_ms_int <= 0;       -- Zera o contador no reset
            carry_out_ms <= '0';     -- Zera o carry
        elsif rising_edge(clk_1kHz) and pause_signal = '0' then
            if count_ms_int = 999 then
                count_ms_int <= 0;   -- Reinicia o contador
                carry_out_ms <= '1'; -- Gera o pulso de carry_out
            else
                count_ms_int <= count_ms_int + 1; -- Incrementa o contador
                carry_out_ms <= '0'; -- Nenhum carry gerado
            end if;
        end if;
    end process;

    -- Converte o contador interno (integer) para std_logic_vector na saída
    count_ms <= std_logic_vector(to_unsigned(count_ms_int, 12));
end Behavioral;
