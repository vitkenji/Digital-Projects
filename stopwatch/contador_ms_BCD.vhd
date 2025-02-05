library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity contador_ms_BCD is
    port (
        clk_1kHz     : in std_logic;              
        reset        : in std_logic;       
        pause_signal : in std_logic;             
        
		  count_ms_bcd : out std_logic_vector(11 downto 0);  
        carry_out_ms : out std_logic              
    );
end contador_ms_BCD;

architecture Behavioral of contador_ms_BCD is
    signal count_ms_int : integer range 0 to 999 := 0;   
    
	 signal bcd_unidade    : integer range 0 to 9 := 0;     
    signal bcd_dezena     : integer range 0 to 9 := 0;     
    signal bcd_centena : integer range 0 to 9 := 0;    
begin


    process(clk_1kHz, reset)
    begin
        if reset = '1' then
            count_ms_int <= 0;        
            carry_out_ms <= '0';      
        
		  elsif rising_edge(clk_1kHz) and pause_signal = '0' then
            if count_ms_int = 999 then
                count_ms_int <= 0;    
                carry_out_ms <= '1';  
            else
                count_ms_int <= count_ms_int + 1; 
                carry_out_ms <= '0';
            end if;
        end if;
		  
    end process;

    process(count_ms_int)
    begin
        bcd_centena <= count_ms_int / 100;                 
        bcd_dezena     <= (count_ms_int mod 100) / 10;        
        bcd_unidade    <= count_ms_int mod 10;                
    end process;

    count_ms_bcd <= std_logic_vector(to_unsigned(bcd_centena, 4)) &
                    std_logic_vector(to_unsigned(bcd_dezena, 4)) &
                    std_logic_vector(to_unsigned(bcd_unidade, 4));

end Behavioral;


