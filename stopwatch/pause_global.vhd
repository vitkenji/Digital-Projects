library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity pause_global is
    Port (
        clk          : in  std_logic;                    
        p_count_ms   : in  std_logic_vector(11 downto 0); 
        p_count_sec  : in  std_logic_vector(7 downto 0);  
        p_count_min  : in  std_logic_vector(3 downto 0);  
        pause_btn    : in  std_logic;                     
        pause_out    : out std_logic                     
    );
end pause_global;

architecture Behavioral of pause_global is
    constant MAX_MIN  : integer := 4;   
    constant MAX_SEC  : integer := 49;  
    constant MAX_MS   : integer := 169; 

    signal ms_decimal   : integer := 0;
    signal sec_decimal  : integer := 0;
    signal min_decimal  : integer := 0;

    signal pause_state  : std_logic := '0';  
    signal btn_last     : std_logic := '0';  
begin

    process(p_count_ms, p_count_sec, p_count_min)
    begin
        ms_decimal  <= (to_integer(unsigned(p_count_ms(11 downto 8))) * 100) + (to_integer(unsigned(p_count_ms(7 downto 4))) * 10) + to_integer(unsigned(p_count_ms(3 downto 0)));

        sec_decimal <= (to_integer(unsigned(p_count_sec(7 downto 4))) * 10) + to_integer(unsigned(p_count_sec(3 downto 0)));

        min_decimal <= to_integer(unsigned(p_count_min)); 
    end process;

    process(clk)
    begin
        if rising_edge(clk) then
            if (pause_btn = '1') and (btn_last = '0') then
                pause_state <= not pause_state;
            end if;

            btn_last <= pause_btn;

            if (min_decimal = MAX_MIN and sec_decimal = MAX_SEC and ms_decimal = MAX_MS) then
                pause_state <= '1';
            end if;
        end if;
    end process;

    pause_out <= pause_state;

end Behavioral;
