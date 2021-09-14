library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity sim_FSMOneHot is
--  Port ( );
end sim_FSMOneHot;

architecture Behavioral of sim_FSMOneHot is

    -- Inputs
    signal Clock :  STD_LOGIC := '1'; --default value for clock
    signal X     :  STD_LOGIC;
    signal Y     :  STD_LOGIC;
    signal Z     :  STD_LOGIC;
        
    -- Outputs
    signal P1    :  STD_LOGIC;
    signal P2    :  STD_LOGIC;
    signal P5    :  STD_LOGIC;
    
    component FSM_OneHot is
        Port (
            Clock : IN STD_LOGIC;
            X     : IN STD_LOGIC;
            Y     : IN STD_LOGIC;
            Z     : IN STD_LOGIC;
            P1    : OUT STD_LOGIC;
            P2    : OUT STD_LOGIC;
            P5    : OUT STD_LOGIC
            );
    end component;

begin

uut : FSM_OneHot port map(
    Clock => Clock,
    X => X,
    Y => Y,
    Z => Z,
    P1 => P1,
    P2 => P2,
    P5 => P5
 );
  
  Clock <=  '1' after 2.5 ns when Clock = '0' else
         '0' after 2.5 ns when Clock = '1';
  
tb : process
begin
  Z <= '0';
  Y <= '0';
  X <= '0';
  wait for 5ns;
  Z <= '1';
  Y <= '0';
  X <= '0';
  wait for 5ns;
  Z <= '1';
  Y <= '0';
  X <= '0';
  wait for 5ns;
  Z <= '0';
  Y <= '0';
  X <= '0';
  wait for 5ns;
  Z <= '0';
  Y <= '0';
  X <= '0';
  wait for 5ns;
  Z <= '0';
  Y <= '0';
  X <= '0';
  wait for 5ns;
  Z <= '1';
  Y <= '0';
  X <= '0';
  wait for 5ns;
  Z <= '1';
  Y <= '1';
  X <= '0';
  wait for 5ns;
  Z <= '1';
  Y <= '1';
  X <= '0';
  wait for 5ns; 
  Z <= '1';
  Y <= '0';
  X <= '0';
  wait for 5ns; 
  Z <= '0';
  Y <= '0';
  X <= '0';
  wait for 5ns; 
  Z <= '0';
  Y <= '0';
  X <= '0';
  wait for 5ns; 
  Z <= '0';
  Y <= '0';
  X <= '0';
  wait for 5ns;
  Z <= '0';
  Y <= '0';
  X <= '0';
  wait for 5ns;
  Z <= '1';
  Y <= '0';
  X <= '0';
  wait for 5ns; 
  Z <= '1';
  Y <= '1';
  X <= '0';
  wait for 5ns; 
  Z <= '1';
  Y <= '1';
  X <= '1';
  wait for 5ns; 
  Z <= '1';
  Y <= '1';
  X <= '1';
  wait for 5ns; 
  Z <= '1';
  Y <= '1';
  X <= '0';
  wait for 5ns; 
  Z <= '1';
  Y <= '0';
  X <= '0';
  wait for 5ns; 
  Z <= '0';
  Y <= '0';
  X <= '0';
  wait for 5ns; 
  Z <= '0';
  Y <= '0';
  X <= '0';
  wait for 5ns; 
  Z <= '0';
  Y <= '0';
  X <= '0';
  wait for 5ns; 
  wait;
end process;
end Behavioral;
