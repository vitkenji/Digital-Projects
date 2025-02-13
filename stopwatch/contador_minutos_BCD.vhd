	library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity contador_minutos_BCD is
    Port (
        clk          : in  std_logic;         
        reset        : in  std_logic;         
        carry_in     : in  std_logic;         
        pause_signal : in  std_logic;         
        
        count_min    : out std_logic_vector(3 downto 0);
        carry_out    : out std_logic          
    );
end contador_minutos_BCD;

architecture Behavioral of contador_minutos_BCD is
    signal counter     : integer range 0 to 9 := 0;  
	 signal carry_pulse : std_logic := '0';           
	 

	 signal bcd_unidade  : integer range 0 to 9 := 0;  
    
begin

    process(clk, reset)
    begin
        if reset = '1' then
            counter <= 0;             
            carry_out <= '0';
            carry_pulse <= '0';
        
		  elsif rising_edge(clk) then
            carry_pulse <= carry_in; -- Armazena o estado atual de carry_in
            
            if pause_signal = '0' and carry_in = '1' and carry_pulse = '0' then
                -- Incrementa apenas na transição do carry_in para '1'
                if counter = 9 then
                    counter <= 0;     
                    carry_out <= '1';  
                else
                    counter <= counter + 1;
                    carry_out <= '0';
                end if;
            else
                carry_out <= '0'; 
            end if;
        end if;
    end process;

    -- Conversão do valor do contador para BCD (apenas unidades)
    process(counter)
    begin
        bcd_unidade <= counter;  -- No caso de 0 a 9, a conversão é direta para unidades
    end process;

    -- A saída do contador é dada em formato BCD
    count_min <= std_logic_vector(to_unsigned(bcd_unidade, 4));

end Behavioral;


-- SOLUÇÃO PARA TRANSFORMAR O CONTADOR EM HEXADECIMAL PARA UM CONTADOR DECIMAL
--
-- PROBLEMA: Cada display (milissegundos, segundos, minutos) não era tratado separadamente.  
-- Em vez disso, o conjunto era considerado como um único valor binário completo.  
-- Isso fazia com que o valor exibido fosse interpretado de forma incorreta,  
-- pois o binário puro representa o número integral, sem separar os dígitos decimais.  
--
-- Exemplo:
-- O número 49 (decimal) em binário puro é 110001, que equivale a 31 em hexadecimal.
-- Isso faz com que o valor seja interpretado incorretamente ao exibir no display.
--
-- SOLUÇÃO:
-- Usar o formato BCD (Binary Coded Decimal).
-- No formato BCD:
-- - Cada dígito decimal é convertido separadamente em 4 bits binários, permitindo que cada display exiba o valor correto (dezenas e unidades separadas).  
-- - Exemplo: O número 49 (decimal) será:
--   - Dígito das dezenas (4) → 0100
--   - Dígito das unidades (9) → 1001
--   - Resultado em BCD: 0100_1001
--
-- CONVERSÃO:
-- Para realizar a conversão de binário puro para BCD:
-- - As dezenas são obtidas pela divisão inteira do valor por 10: "valor / 10".
-- - As unidades são obtidas pelo resto da divisão por 10: "valor mod 10".
-- - Os dois valores (dezenas e unidades) são então convertidos para 4 bits
--   e concatenados para formar o valor BCD final.
--

