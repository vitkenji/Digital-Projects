library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity contador_minutos_2 is
    Port (
        clk          : in  std_logic;         -- Clock de entrada
        reset        : in  std_logic;         -- Reset do contador
        carry_in     : in  std_logic;         -- Pulso de entrada para incremento
        pause_signal : in  std_logic;         -- Sinal de pause
        
        count_min    : out std_logic_vector(3 downto 0); -- Saída do contador (4 bits)
        carry_out    : out std_logic          
    );
end contador_minutos_2;

architecture Behavioral of contador_minutos_2 is
    signal counter     : integer range 0 to 9 := 0; -- Contador interno
    signal carry_pulse : std_logic := '0';          -- Pulso auxiliar
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

    
    count_min <= std_logic_vector(to_unsigned(counter, 4));

end Behavioral;
