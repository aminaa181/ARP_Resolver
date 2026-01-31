library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity ARP_Resolver_TB_Scenario2 is
end ARP_Resolver_TB_Scenario2;

architecture Behavioral of ARP_Resolver_TB_Scenario2 is
    
    -- Component Declaration
    component ARP_Resolver is
        Port (
            clock       : in  STD_LOGIC;
            reset       : in  STD_LOGIC;
            resolve     : in  STD_LOGIC;
            ip_address  : in  STD_LOGIC_VECTOR(31 downto 0);
            done        : out STD_LOGIC;
            mac_address : out STD_LOGIC_VECTOR(47 downto 0);
            busy        : out STD_LOGIC;
            in_data     : in  STD_LOGIC_VECTOR(7 downto 0);
            in_valid    : in  STD_LOGIC;
            in_sop      : in  STD_LOGIC;
            in_eop      : in  STD_LOGIC;
            in_ready    : out STD_LOGIC;
            out_data    : out STD_LOGIC_VECTOR(7 downto 0);
            out_valid   : out STD_LOGIC;
            out_sop     : out STD_LOGIC;
            out_eop     : out STD_LOGIC;
            out_ready   : in  STD_LOGIC;
            state   : out STD_LOGIC_VECTOR(2 downto 0);
	    error_internal : out STD_LOGIC
        );
    end component;
    
    -- Clock period definition
    constant CLK_PERIOD : time := 10 ns;
    
    -- Signals
    signal clock       : STD_LOGIC := '1';
    signal reset       : STD_LOGIC := '0';
    signal resolve     : STD_LOGIC := '0';
    signal ip_address  : STD_LOGIC_VECTOR(31 downto 0) := (others => '0');
    signal done        : STD_LOGIC;
    signal mac_address : STD_LOGIC_VECTOR(47 downto 0);
    signal busy        : STD_LOGIC;
    signal in_data     : STD_LOGIC_VECTOR(7 downto 0) := (others => '0');
    signal in_valid    : STD_LOGIC := '0';
    signal in_sop      : STD_LOGIC := '0';
    signal in_eop      : STD_LOGIC := '0';
    signal in_ready    : STD_LOGIC;
    signal out_data    : STD_LOGIC_VECTOR(7 downto 0);
    signal out_valid   : STD_LOGIC;
    signal out_sop     : STD_LOGIC;
    signal out_eop     : STD_LOGIC;
    signal out_ready   : STD_LOGIC := '0';
    signal state   : STD_LOGIC_VECTOR(2 downto 0);
    signal error_internal : STD_LOGIC;
    
    -- Simulation control
   	signal sim_done    : boolean := false;
    
    -- ARP Reply packet data (42 bytes total)
    type byte_array is array (0 to 41) of STD_LOGIC_VECTOR(7 downto 0);
    constant ARP_REPLY_PACKET : byte_array := (
        -- Ethernet Header
        x"00", x"1A", x"2B", x"3C", x"4D", x"5E",  -- Destination MAC
        x"8C", x"EC", x"2B", x"B1", x"0D", x"3A",  -- Source MAC
        x"08", x"06",                               -- EtherType (ARP)
        
        -- ARP Header
        x"00", x"01",                               -- HTYPE (Ethernet)
        x"08", x"00",                               -- PTYPE (IPv4)
        x"06",                                      -- HLEN
        x"04",                                      -- PLEN
        x"00", x"03",                               -- OPER (Reply)
        
        -- ARP Data
        x"8C", x"EC", x"2B", x"B1", x"0D", x"3A",  -- Sender MAC
        x"C0", x"A8", x"01", x"01",                 -- Sender IP (192.168.1.1)
        x"00", x"1A", x"2B", x"3C", x"4D", x"5E",  -- Target MAC
        x"C0", x"A8", x"01", x"0A"                  -- Target IP (192.168.1.10)
    );
    
begin

    -- Instantiate the Unit Under Test (UUT)
    uut: ARP_Resolver
        Port map (
            clock       => clock,
            reset       => reset,
            resolve     => resolve,
            ip_address  => ip_address,
            done        => done,
            mac_address => mac_address,
            busy        => busy,
            in_data     => in_data,
            in_valid    => in_valid,
            in_sop      => in_sop,
            in_eop      => in_eop,
            in_ready    => in_ready,
            out_data    => out_data,
            out_valid   => out_valid,
            out_sop     => out_sop,
            out_eop     => out_eop,
            out_ready   => out_ready,
            state   => state,
	    error_internal => error_internal
        );

    -- Clock process
    clk_process: process
    begin
        while not sim_done loop
            clock <= '1';
            wait for CLK_PERIOD/2;
            clock <= '0';
            wait for CLK_PERIOD/2;
        end loop;
        wait;
    end process;

    -- State monitor process (for console output)
    state_monitor: process(clock)
        variable last_state : STD_LOGIC_VECTOR(2 downto 0) := "111";
    begin
        if rising_edge(clock) then
            if state /= last_state then
                case state is
                    when "000" => report "State: IDLE" severity note;
                    when "001" => report "State: ARP_REQUEST" severity note;
                    when "010" => report "State: WAITING_FOR_REPLY" severity note;
                    when "011" => report "State: RECEIVING_REPLY" severity note;
                    when "100" => report "State: DONE_STATE" severity note;
                    when "101" => report "State: IGNORE" severity note;
                    when others => report "State: UNKNOWN" severity warning;
                end case;
                last_state := state;
            end if;
        end if;
    end process;

    -- Stimulus process
    stim_proc: process
    begin
        -- Initialize
        reset <= '1';
        resolve <= '0';
        ip_address <= (others => '0');
        out_ready <= '0';
        in_valid <= '0';
        in_sop <= '0';
        in_eop <= '0';
        in_data <= (others => '0');
        
        wait for CLK_PERIOD * 2;
        
        -- Release reset AND apply resolve + ip_address + out_ready at the SAME TIME
        reset <= '0';
        ip_address <= x"C0A80101";  -- 192.168.1.1
        resolve <= '1';
        out_ready <= '1';
        
        wait for CLK_PERIOD;
        
        -- Deassert resolve after 1 clock cycle
        resolve <= '0';
        
        -- Wait for ARP Request transmission to complete (42 bytes)
        wait until out_eop = '1';
        wait for CLK_PERIOD;
        
        -- Deassert out_ready after request is sent
        out_ready <= '0';
        
        -- Wait some time before sending ARP Reply (simulating network delay)
        wait for CLK_PERIOD * 5;
        
        -- Send ARP Reply packet
        for i in 0 to 41 loop
            -- Setup signals BEFORE the clock edge
            in_data <= ARP_REPLY_PACKET(i);
            in_valid <= '1';
            
            -- Assert in_sop on first byte
            if i = 0  then
                in_sop <= '1';
            end if;

	    if i = 2  then
                in_sop <= '0';
            end if;
            
            -- Assert in_eop on last byte
            if i = 41 then
                in_eop <= '1';
            else
                in_eop <= '0';
            end if;
            
            -- Wait for clock edge to sample these signals
            wait until rising_edge(clock);
        end loop;
        
	
        -- Deassert input signals
	in_data <= (others => '0');
        in_valid <= '0';
        in_sop <= '0';
        in_eop <= '0';
        
        -- Wait for done signal
        wait for CLK_PERIOD * 2;
        
        -- Check results
        assert done = '1' 
            report "ERROR: done signal not asserted!" 
            severity error;
            
        assert mac_address = x"8CEC2BB10D3A" 
            report "ERROR: MAC address mismatch!" 
            severity error;
            
        assert busy = '0' 
            report "ERROR: busy signal still asserted after completion!" 
            severity error;
        
        -- Wait a bit more
        wait for CLK_PERIOD * 3;
        
        -- Verify return to IDLE state
        assert busy = '0' 
            report "ERROR: Module did not return to IDLE state!" 
            severity error;
        
        -- Simulation complete
        report "=== Scenario 1 (Successful Resolution) Test Completed ===" 
            severity note;
        
            
        sim_done <= true;
        wait;
        
    end process;

end Behavioral;