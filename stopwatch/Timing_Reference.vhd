library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.ALL;

entity Timing_Reference is
    port (
        clk: in std_logic;  -- Pin connected to P11 (N14)
        clk_1kHz: out std_logic  -- Output 100 kHz clock
    );
end Timing_Reference;

architecture freq_div of Timing_Reference is

    signal count: integer := 0;  -- Counter for frequency division
    signal tmp : std_logic := '0';  -- Temporary signal for output clock

begin

    process(clk)
    begin
        if(clk'event and clk = '0') then -- Borda de decida | Borda de subida: if(clk'event and clk='1') then
            count <= count + 1;
            if (count = 1249) then  -- Para gerar 1khz, o certo é 50000/4 | Dividir por 4 garante um ciclo em 10us
                tmp <= NOT tmp;  -- Toggle the output clock
                count <= 0;  -- Reset the counter
            end if;
        end if;
        clk_1kHz <= tmp;  -- Assign the output clock
    end process;

end freq_div;

-- 50MHz / 4*fator_divisao -> 50.000.000 / 4*12500 = 1kHZ