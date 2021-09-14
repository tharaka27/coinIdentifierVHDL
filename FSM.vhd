library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity FSM is
    Port (
        Clock : IN STD_LOGIC;
        X     : IN STD_LOGIC;
        Y     : IN STD_LOGIC;
        Z     : IN STD_LOGIC;
        P1    : OUT STD_LOGIC;
        P2    : OUT STD_LOGIC;
        P5    : OUT STD_LOGIC
        );
end FSM;

architecture Behavioral of FSM is
    Type State_type is (A, B, C, D, E, F, G, P1_S, P2_S, P5_S );    
Signal state: State_type;

begin
process(Clock) is
begin
    if rising_edge(Clock) then
        case state is 
            when A => 
                if (Z='1' and Y='0' and X='0') then
                    state <= B;
                else 
                    state <= A;
                end if;
            when B => 
                if (Z='1' and Y='1' and X='0') then
                    state <= D;
                elsif (Z='1' and Y='0' and X='0') then
                    state <= C;
                else 
                    state <= A;
                end if;
            when C => 
                if (Z='0' and Y='0' and X='0') then
                    state <= P1_S;
                else 
                    state <= A;
                end if;
            when D => 
                if (Z='1' and Y='1' and X='1') then
                    state <= F;
                elsif (Z='1' and Y='1' and X='0') then
                    state <= E;
                else 
                    state <= A;
                end if;  
            when E => 
                if (Z='0' and Y='0' and X='0') then
                    state <= P5_S;
                elsif (Z='1' and Y='0' and X='0') then
                    state <= E;
                else 
                    state <= A;
                end if; 
            when F => 
                if (Z='1' and Y='1' and X='1') then
                    state <= G;
                else 
                    state <= A;
                end if; 
            when G => 
                if (Z='0' and Y='0' and X='0') then
                    state <= P2_S;
                elsif (Z='1' and Y='1' and X='0') or (Z='1' and Y='0' and X='0') then
                    state <= G;
                else 
                    state <= A;
                end if;
            when P1_S => 
                 if (Z='1' and Y='0' and X='0') then
                    state <= B;
                 else 
                    state <= A;
                 end if;
            when P2_S => 
                 if (Z='1' and Y='0' and X='0') then
                     state <= B;
                 else 
                     state <= A;
                 end if;
            when P5_S => 
                 if (Z='1' and Y='0' and X='0') then
                     state <= B;
                  else 
                     state <= A;
                  end if;
        end case;
    end if;
end process;

P1 <= '1' When state = P1_S else '0';
P2 <= '1' When state = P2_S else '0';
P5 <= '1' When state = P5_S else '0';

end Behavioral;
