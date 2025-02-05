library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


-- *************************************************************************
-- ** Divisor de Frequência - Geração de Clock de 1 kHz **
-- Este módulo implementa um divisor de frequência que converte um clock de 
-- entrada de 50 MHz em um clock de saída com frequência de 1 kHz.
--
-- Funcionamento:
-- 1. Um contador interno incrementa a cada ciclo do clock de entrada.
-- 2. Quando o contador atinge 24999, ele é reiniciado e o sinal de saída
--    (`clk_out_internal`) é invertido. 
--      Calculo da divisao: 1kHz = 50MHz / 2*fator_divisao -> fator_divisao = 25000
--      2*fator_divisao pois o sinal de saída é um clock quadrado, com dois estados (alto e baixo)
-- 3. Este processo gera um clock com período de 1 ms (1 kHz).
-- 4. O sinal de reset (`reset`) pode zerar o contador e o clock interno.
-- 
-- Aplicação:
-- - A saída gerada (`clk_out`) será utilizada como base temporal para o 
--   cronômetro digital no projeto.
-- *************************************************************************

entity divisor_frequencia is
    port (
        clk_50MHz : in std_logic;        -- Clock de entrada de 50 MHz
        reset     : in std_logic;        -- Sinal de reset
        clk_out   : out std_logic        -- Clock de saída (1 kHz)
    );
end divisor_frequencia;

architecture Behavioral of divisor_frequencia is
    signal clk_out_internal : std_logic := '0'; -- Sinal interno para o clock de saída
    signal counter          : integer := 0;    -- Contador para divisão de frequência
begin
    -- Atualiza a porta clk_out com o valor do sinal interno
    clk_out <= clk_out_internal;

    process(clk_50MHz, reset)
    begin
        if reset = '1' then
            -- Reseta o contador e o clock interno
            counter <= 0;
            clk_out_internal <= '0';
        elsif rising_edge(clk_50MHz) then
            -- Incrementa o contador
            counter <= counter + 1;
            -- Quando atingir o limite, inverte o clock e reseta o contador
            if counter = 249 then -- 24999 / Divisão para obter 1 kHz (50 MHz / 50.000)
                clk_out_internal <= not clk_out_internal;
                counter <= 0;
            end if;
        end if;
    end process;
end Behavioral;
