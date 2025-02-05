library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity reset_global is
    Port (
        clk           : in  std_logic;       
        reset_btn     : in  std_logic;         
        r_count_ms    : in  std_logic_vector(11 downto 0);
        r_count_sec   : in  std_logic_vector(7 downto 0);  
        r_count_min   : in  std_logic_vector(3 downto 0);   
        reset_out     : out std_logic          
    );
end reset_global;

architecture Behavioral of reset_global is
   
    constant MAX_MS  : integer := 999;  
    constant MAX_SEC : integer := 59;   
    constant MAX_MIN : integer := 9;    

   
    signal ms_decimal   : integer := 0;
    signal sec_decimal  : integer := 0;
    signal min_decimal  : integer := 0;
begin

  
    process(r_count_ms, r_count_sec, r_count_min)
    begin
       
        ms_decimal  <= (to_integer(unsigned(r_count_ms(11 downto 8))) * 100) + (to_integer(unsigned(r_count_ms(7 downto 4))) * 10) + to_integer(unsigned(r_count_ms(3 downto 0)));

        sec_decimal <= (to_integer(unsigned(r_count_sec(7 downto 4))) * 10) + to_integer(unsigned(r_count_sec(3 downto 0)));

        min_decimal <= to_integer(unsigned(r_count_min)); 
    end process;

   
    process (ms_decimal, sec_decimal, min_decimal, reset_btn)
    begin
        if (reset_btn = '1') or (min_decimal = MAX_MIN and sec_decimal = MAX_SEC and ms_decimal = MAX_MS) then
            reset_out <= '1'; 
        else
            reset_out <= '0'; 
        end if;
    end process;

end Behavioral;
