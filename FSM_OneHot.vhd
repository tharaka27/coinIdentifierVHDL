library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity FSM_OneHot is
    Port (
        Clock : IN STD_LOGIC;
        X     : IN STD_LOGIC;
        Y     : IN STD_LOGIC;
        Z     : IN STD_LOGIC;
        P1    : OUT STD_LOGIC;
        P2    : OUT STD_LOGIC;
        P5    : OUT STD_LOGIC
        );
end FSM_OneHot;

architecture Behavioral of FSM_OneHot is    
Signal state: std_logic_vector(9 downto 0);

begin
process(Clock) is
begin
    if rising_edge(Clock) then
        case state is 
            when "0000000001" => 
                if (Z='1' and Y='0' and X='0') then
                    state <= "0000000010";
                else 
                    state <= "0000000001";
                end if;
            when "0000000010" => 
                if (Z='1' and Y='1' and X='0') then
                    state <= "0000001000";
                elsif (Z='1' and Y='0' and X='0') then
                    state <= "0000000100";
                else 
                    state <= "0000000001";
                end if;
            when "0000000100" => 
                if (Z='0' and Y='0' and X='0') then
                    state <= "0010000000";
                else 
                    state <= "0000000001";
                end if;
            when "0000001000" => 
                if (Z='1' and Y='1' and X='1') then
                    state <= "0000100000";
                elsif (Z='1' and Y='1' and X='0') then
                    state <= "0000010000";
                else 
                    state <= "0000000001";
                end if;  
            when "0000010000" => 
                if (Z='0' and Y='0' and X='0') then
                    state <= "1000000000";
                elsif (Z='1' and Y='0' and X='0') then
                    state <= "0000010000";
                else 
                    state <= "0000000001";
                end if; 
            when "0000100000" => 
                if (Z='1' and Y='1' and X='1') then
                    state <= "0001000000";
                else 
                    state <= "0000000001";
                end if; 
            when "0001000000" => 
                if (Z='0' and Y='0' and X='0') then
                    state <= "0100000000";
                elsif (Z='1' and Y='1' and X='0') or (Z='1' and Y='0' and X='0') then
                    state <= "0001000000";
                else 
                    state <= "0000000001";
                end if;
            when "0010000000" => 
                 if (Z='1' and Y='0' and X='0') then
                    state <= "0000000010";
                 else 
                    state <= "0000000001";
                 end if;
            when "0100000000" => 
                 if (Z='1' and Y='0' and X='0') then
                     state <= "0000000010";
                 else 
                     state <= "0000000001";
                 end if;
            when "1000000000" => 
                 if (Z='1' and Y='0' and X='0') then
                     state <= "0000000010";
                  else 
                     state <= "0000000001";
                  end if;
             when others =>
                state <= "0000000001";
        end case;
    end if;
end process;

P1 <= '1' When state = "0010000000" else '0';
P2 <= '1' When state = "0100000000" else '0';
P5 <= '1' When state = "1000000000" else '0';

end Behavioral;
