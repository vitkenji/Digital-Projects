library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.ALL;

entity Timing_Reference is
    port (
        clk: in std_logic;  -- Pin connected to P11 (N14)
        clk_100kHz: out std_logic  -- Output 100 kHz clock
    );
end Timing_Reference;

architecture freq_div of Timing_Reference is

    signal count: integer := 0;  -- Counter for frequency division
    signal tmp : std_logic := '0';  -- Temporary signal for output clock

begin

    process(clk)
    begin
        if(clk'event and clk = '1') then
            count <= count + 1;
            if (count = 500) then  -- Divisor to generate 100 kHz
                tmp <= NOT tmp;  -- Toggle the output clock
                count <= 0;  -- Reset the counter
            end if;
        end if;
        clk_100kHz <= tmp;  -- Assign the output clock
    end process;

end freq_div;
