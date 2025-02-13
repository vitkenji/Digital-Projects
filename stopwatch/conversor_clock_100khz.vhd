library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.ALL;

entity conversor_clock_100khz is
    port (
        clk: in std_logic;  -- Pin connected to P11 (N14)
        clk_100kHz: out std_logic  -- Output 100 kHz clock
    );
end conversor_clock_100khz;

architecture freq_div of conversor_clock_100khz is

    signal count: integer := 0;  -- Counter for frequency division
    signal tmp : std_logic := '0';  -- Temporary signal for output clock

begin

    process(clk)
    begin
        if(clk'event and clk = '0') then -- Borda de decida | Borda de subida: if(clk'event and clk='1') then
            count <= count + 1;
            if (count = 124) then  -- (25000/2) Divisor to generate 100 kHz | Para gerar 1kz, o certo é 50000/4 | Dividir por 4 garante um ciclo em 10us
                tmp <= NOT tmp;  -- Toggle the output clock
                count <= 0;  -- Reset the counter
            end if;
        end if;
        clk_100kHz <= tmp;  -- Assign the output clock
    end process;

end freq_div;
