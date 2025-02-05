library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity contador_segundos_BCD is
    Port (
        clk          : in  std_logic;        
        reset        : in  std_logic;         
        carry_in     : in  std_logic;   
        pause_signal : in  std_logic;         
        
        count_sec_bcd : out std_logic_vector(7 downto 0); 
        carry_out    : out std_logic          
    );
end contador_segundos_BCD;

architecture Behavioral of contador_segundos_BCD is
    signal counter     : integer range 0 to 59 := 0; 
    
	 signal bcd_dezena    : integer range 0 to 5 := 0;  
    signal bcd_unidade   : integer range 0 to 9 := 0;  
begin

    process(clk, reset)
    begin
        if reset = '1' then
            counter <= 0;             
            carry_out <= '0';
        
		  elsif rising_edge(clk) and pause_signal = '0' then
            if carry_in = '1' then    
                
					 if counter = 59 then
                    counter <= 0;      
                    carry_out <= '1';  
                else
                    counter <= counter + 1;
                    carry_out <= '0';
                end if;
					 
            end if;
        end if;
		  
    end process;

    process(counter)
    begin
        bcd_dezena  <= counter / 10;     
        bcd_unidade <= counter mod 10;  
    end process;

    count_sec_bcd <= std_logic_vector(to_unsigned(bcd_dezena, 4)) &
                     std_logic_vector(to_unsigned(bcd_unidade, 4));

end Behavioral;
