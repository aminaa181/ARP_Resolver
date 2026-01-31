library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity ARP_Resolver is
    Port (
        clock : in STD_LOGIC;
        reset : in STD_LOGIC;
 
        resolve : in STD_LOGIC;
        ip_address : in STD_LOGIC_VECTOR(31 downto 0);
        done : out STD_LOGIC;
        mac_address : out STD_LOGIC_VECTOR(47 downto 0);
        busy : out STD_LOGIC;
        in_data : in STD_LOGIC_VECTOR(7 downto 0);
        in_valid : in STD_LOGIC;
        in_sop : in STD_LOGIC;
        in_eop : in STD_LOGIC;
        in_ready : out STD_LOGIC;
        out_data : out STD_LOGIC_VECTOR(7 downto 0);
        out_valid : out STD_LOGIC;
        out_sop : out STD_LOGIC;
        out_eop : out STD_LOGIC;
        out_ready : in STD_LOGIC;
       
        -- Debug signal to monitor FSM state
        state : out STD_LOGIC_VECTOR(2 downto 0);
		  
		  -- Internal error signal
		  error_internal : out STD_LOGIC
    );
end ARP_Resolver;

architecture Behavioral of ARP_Resolver is
    type state_type is (IDLE, ARP_REQUEST, WAITING_FOR_REPLY, RECEIVING_REPLY, DONE_STATE, IGNORE);
    signal current_state : state_type;
	 
    signal byte_counter : unsigned(7 downto 0);
    signal stored_ip : STD_LOGIC_VECTOR(31 downto 0);
    signal received_mac : STD_LOGIC_VECTOR(47 downto 0);
    signal error : STD_LOGIC;
    signal sender_mac : STD_LOGIC_VECTOR(47 downto 0) := x"001A2B3C4D5E";
	
	 
    constant ARP_PACKET_SIZE : integer := 42;
    constant ETHERTYPE_ARP : STD_LOGIC_VECTOR(15 downto 0) := x"0806";
    constant ARP_HTYPE : STD_LOGIC_VECTOR(15 downto 0) := x"0001";
    constant ARP_PTYPE : STD_LOGIC_VECTOR(15 downto 0) := x"0800";
    constant ARP_HLEN : STD_LOGIC_VECTOR(7 downto 0) := x"06";
    constant ARP_PLEN : STD_LOGIC_VECTOR(7 downto 0) := x"04";
    constant ARP_OPER_REQ : STD_LOGIC_VECTOR(15 downto 0) := x"0001";
    constant OUR_IP : STD_LOGIC_VECTOR(31 downto 0) := x"C0A8010A";
    
    -- Signal for detecting last byte sent
    signal last_byte_sent : STD_LOGIC := '0';

begin
    ------------------------------------------------------------------
    -- SINGLE-PROCESS FSM (State + Outputs together)
    ------------------------------------------------------------------
    process(clock, reset)
    begin
        if reset = '1' then
            current_state   <= IDLE;
            byte_counter    <= (others => '0');
            stored_ip       <= (others => '0');
            received_mac    <= (others => '0');
            error           <= '0';
            out_data        <= (others => '0');
            out_valid       <= '0';
            out_sop         <= '0';
            out_eop         <= '0';
            in_ready        <= '0';
            busy            <= '0';
            done            <= '0';
            mac_address     <= (others => '0');
            last_byte_sent  <= '0';
           
        elsif rising_edge(clock) then
            -- Default values
            out_sop   <= '0';
            out_eop   <= '0';
            done      <= '0';
            last_byte_sent <= '0';
           
            case current_state is
                -----------------------------------------------
                when IDLE =>
                    byte_counter <= (others => '0');
                    out_valid    <= '0';
                    in_ready     <= '0';
                    busy         <= '0';
                    error        <= '0';
                    mac_address  <= (others => '0');
                   
                    if resolve = '1' then
                        current_state <= ARP_REQUEST;
                        stored_ip     <= ip_address;
                        busy          <= '1';
                        out_valid     <= '1';
                        out_sop       <= '1';
                       
                        if out_ready = '1' then
                            out_data     <= x"FF";
                            byte_counter <= to_unsigned(1, 8);
                        else
                            byte_counter <= (others => '0');
                        end if;
                    end if;
               
                -----------------------------------------------
                when ARP_REQUEST =>
                    busy      <= '1';
                    in_ready  <= '0';
                    out_valid <= '1';

                    if byte_counter = 0 then
                        out_sop <= '1';
                    end if;

                    if byte_counter = ARP_PACKET_SIZE - 1 then
                        out_eop <= '1';
                    end if;

                    if out_ready = '1' then
                        case to_integer(byte_counter) is
                            when 0 to 5 => out_data <= x"FF";
                            when 6  => out_data <= sender_mac(47 downto 40);
                            when 7  => out_data <= sender_mac(39 downto 32);
                            when 8  => out_data <= sender_mac(31 downto 24);
                            when 9  => out_data <= sender_mac(23 downto 16);
                            when 10 => out_data <= sender_mac(15 downto 8);
                            when 11 => out_data <= sender_mac(7 downto 0);
                            when 12 => out_data <= ETHERTYPE_ARP(15 downto 8);
                            when 13 => out_data <= ETHERTYPE_ARP(7 downto 0);
                            when 14 => out_data <= ARP_HTYPE(15 downto 8);
                            when 15 => out_data <= ARP_HTYPE(7 downto 0);
                            when 16 => out_data <= ARP_PTYPE(15 downto 8);
                            when 17 => out_data <= ARP_PTYPE(7 downto 0);
                            when 18 => out_data <= ARP_HLEN;
                            when 19 => out_data <= ARP_PLEN;
                            when 20 => out_data <= ARP_OPER_REQ(15 downto 8);
                            when 21 => out_data <= ARP_OPER_REQ(7 downto 0);
                            when 22 => out_data <= sender_mac(47 downto 40);
                            when 23 => out_data <= sender_mac(39 downto 32);
                            when 24 => out_data <= sender_mac(31 downto 24);
                            when 25 => out_data <= sender_mac(23 downto 16);
                            when 26 => out_data <= sender_mac(15 downto 8);
                            when 27 => out_data <= sender_mac(7 downto 0);
                            when 28 => out_data <= OUR_IP(31 downto 24);
                            when 29 => out_data <= OUR_IP(23 downto 16);
                            when 30 => out_data <= OUR_IP(15 downto 8);
                            when 31 => out_data <= OUR_IP(7 downto 0);
                            when 32 to 37 => out_data <= x"00";
                            when 38 => out_data <= stored_ip(31 downto 24);
                            when 39 => out_data <= stored_ip(23 downto 16);
                            when 40 => out_data <= stored_ip(15 downto 8);
                            when 41 => out_data <= stored_ip(7 downto 0);
                            when others => out_data <= x"00";
                        end case;
                       
                        if byte_counter = ARP_PACKET_SIZE - 1 then
                            last_byte_sent <= '1';
                        else
                            byte_counter <= byte_counter + 1;
                        end if;
                    end if;
                   
                    if last_byte_sent = '1' then
                        out_valid <= '0';
                        out_eop <= '0';
                        current_state <= WAITING_FOR_REPLY;
                        byte_counter  <= (others => '0');
								--ovo 
								out_data        <= (others => '0');
								
                    end if;
               
                -----------------------------------------------
                when WAITING_FOR_REPLY =>
                    out_valid <= '0';
                    in_ready  <= '0';  
                    busy      <= '1';
                    error     <= '0';
						  
                    mac_address <= (others => '0');
                   
                    if in_valid = '1' and in_sop = '1' then
                        current_state <= RECEIVING_REPLY;
								in_ready  <= '1';
                        byte_counter  <= to_unsigned(1, 8);  -- SET TO 1, not 0!
                        received_mac <= (others => '0');
                        
                        -- Process the FIRST byte immediately (byte 0)
                        if in_data /= sender_mac(47 downto 40) then
                            error <= '1';
                            report "Error at byte 0 (in WAITING): expected " & 
                                   integer'image(to_integer(unsigned(sender_mac(47 downto 40)))) & 
                                   " got " & integer'image(to_integer(unsigned(in_data))) severity warning;
                        end if;
                    end if;
               
                -----------------------------------------------
                when RECEIVING_REPLY =>
                    in_ready  <= '1';
                    busy      <= '1';
                    out_valid <= '0';
                    mac_address <= received_mac;  -- Show MAC as it's being built

                    if in_valid = '1' then
                        -- Validate and extract data based on current byte position
                        case to_integer(byte_counter) is
                            -- Ethernet header: Destination MAC (should match sender_mac)
                            when 0  => 
                                if in_data /= sender_mac(47 downto 40) then 
                                    error <= '1';
                                    report "Error at byte 0: expected " & integer'image(to_integer(unsigned(sender_mac(47 downto 40)))) & 
                                           " got " & integer'image(to_integer(unsigned(in_data))) severity warning;
                                end if;
                            when 1  => 
                                if in_data /= sender_mac(39 downto 32) then 
                                    error <= '1';
                                    report "Error at byte 1" severity warning;
                                end if;
                            when 2  => 
                                if in_data /= sender_mac(31 downto 24) then 
                                    error <= '1';
                                    report "Error at byte 2" severity warning;
                                end if;
                            when 3  => 
                                if in_data /= sender_mac(23 downto 16) then 
                                    error <= '1';
                                    report "Error at byte 3" severity warning;
                                end if;
                            when 4  => 
                                if in_data /= sender_mac(15 downto 8) then 
                                    error <= '1';
                                    report "Error at byte 4" severity warning;
                                end if;
                            when 5  => 
                                if in_data /= sender_mac(7 downto 0) then 
                                    error <= '1';
                                    report "Error at byte 5" severity warning;
                                end if;

                            -- Ethertype ARP
                            when 12 => 
                                if in_data /= ETHERTYPE_ARP(15 downto 8) then 
                                    error <= '1';
                                    report "Error at byte 12: Ethertype high" severity warning;
                                end if;
                            when 13 => 
                                if in_data /= ETHERTYPE_ARP(7 downto 0) then 
                                    error <= '1';
                                    report "Error at byte 13: Ethertype low" severity warning;
                                end if;

                            -- ARP header
                            when 14 => 
                                if in_data /= ARP_HTYPE(15 downto 8) then 
                                    error <= '1';
                                    report "Error at byte 14: HTYPE high" severity warning;
                                end if;
                            when 15 => 
                                if in_data /= ARP_HTYPE(7 downto 0) then 
                                    error <= '1';
                                    report "Error at byte 15: HTYPE low" severity warning;
                                end if;
                            when 16 => 
                                if in_data /= ARP_PTYPE(15 downto 8) then 
                                    error <= '1';
                                    report "Error at byte 16: PTYPE high" severity warning;
                                end if;
                            when 17 => 
                                if in_data /= ARP_PTYPE(7 downto 0) then 
                                    error <= '1';
                                    report "Error at byte 17: PTYPE low" severity warning;
                                end if;
                            when 18 => 
                                if in_data /= ARP_HLEN then 
                                    error <= '1';
                                    report "Error at byte 18: HLEN" severity warning;
                                end if;
                            when 19 => 
                                if in_data /= ARP_PLEN then 
                                    error <= '1';
                                    report "Error at byte 19: PLEN" severity warning;
                                end if;
                            when 20 => 
                                if in_data /= x"00" then 
                                    error <= '1';
                                    report "Error at byte 20: OPER high" severity warning;
                                end if;
                            when 21 => 
                                if in_data /= x"02" then 
                                    error <= '1';
												current_state <= IGNORE;
                                    report "Error at byte 21: OPER low (should be 0x02 for reply)" severity warning;
                                end if;

                            -- Sender MAC (SHA) – extract into received_mac
                            when 22 => 
                                received_mac(47 downto 40) <= in_data;
                                report "Byte 22: MAC[47:40] = " & integer'image(to_integer(unsigned(in_data))) severity note;
                            when 23 => 
                                received_mac(39 downto 32) <= in_data;
                                report "Byte 23: MAC[39:32] = " & integer'image(to_integer(unsigned(in_data))) severity note;
                            when 24 => 
                                received_mac(31 downto 24) <= in_data;
                                report "Byte 24: MAC[31:24] = " & integer'image(to_integer(unsigned(in_data))) severity note;
                            when 25 => 
                                received_mac(23 downto 16) <= in_data;
                                report "Byte 25: MAC[23:16] = " & integer'image(to_integer(unsigned(in_data))) severity note;
                            when 26 => 
                                received_mac(15 downto 8) <= in_data;
                                report "Byte 26: MAC[15:8] = " & integer'image(to_integer(unsigned(in_data))) severity note;
                            when 27 => 
                                received_mac(7 downto 0) <= in_data;
                                report "Byte 27: MAC[7:0] = " & integer'image(to_integer(unsigned(in_data))) severity note;

                            -- Sender IP (SPA) – must match stored_ip
                            when 28 => 
                                if in_data /= stored_ip(31 downto 24) then 
                                    error <= '1';
                                    report "Error at byte 28: SPA mismatch" severity warning;
                                end if;
                            when 29 => 
                                if in_data /= stored_ip(23 downto 16) then 
                                    error <= '1';
                                    report "Error at byte 29: SPA mismatch" severity warning;
                                end if;
                            when 30 => 
                                if in_data /= stored_ip(15 downto 8) then 
                                    error <= '1';
                                    report "Error at byte 30: SPA mismatch" severity warning;
                                end if;
                            when 31 => 
                                if in_data /= stored_ip(7 downto 0) then 
                                    error <= '1';
                                    report "Error at byte 31: SPA mismatch" severity warning;
                                end if;

                            -- Target IP (TPA) – must match OUR_IP
                            when 38 => 
                                if in_data /= OUR_IP(31 downto 24) then 
                                    error <= '1';
                                    report "Error at byte 38: TPA mismatch" severity warning;
                                end if;
                            when 39 => 
                                if in_data /= OUR_IP(23 downto 16) then 
                                    error <= '1';
                                    report "Error at byte 39: TPA mismatch" severity warning;
                                end if;
                            when 40 => 
                                if in_data /= OUR_IP(15 downto 8) then 
                                    error <= '1';
                                    report "Error at byte 40: TPA mismatch" severity warning;
                                end if;
                            when 41 => 
                                if in_data /= OUR_IP(7 downto 0) then 
                                    error <= '1';
                                    report "Error at byte 41: TPA mismatch" severity warning;
                                end if;

                            when others => null;
                        end case;

                        -- Increment byte counter
                        byte_counter <= byte_counter + 1;

                        -- Check for end of packet
                        if in_eop = '1' then
                            in_ready <= '0';
                            byte_counter <= (others => '0');
                            
                            -- Only transition to DONE if no error occurred
                            if error = '1' then
                                current_state <= IDLE;
                                report "Packet ended with ERROR - going to IDLE" severity warning;
                            else
                                current_state <= DONE_STATE;
										  busy        <= '0';
										  done        <= '1';
										  mac_address <= (others => '0');
                                report "Packet completed successfully - going to DONE_STATE" severity note;
                            end if;
                        elsif error = '1' then
                            -- Error occurred but packet not finished, go to IGNORE
                            current_state <= IGNORE;
                            report "Error detected mid-packet - going to IGNORE" severity warning;
                        end if;
								
                    end if;
               
                -----------------------------------------------
                when DONE_STATE =>
                    --done        <= '1';
                    --mac_address <= (others => '0');
                   -- busy        <= '0';
                    out_valid   <= '0';
                    in_ready    <= '0';
                    current_state <= IDLE;
               
                -----------------------------------------------
                when IGNORE =>
                    in_ready  <= '1';
                    out_valid <= '0';
                    busy      <= '0';
                    error     <= '0';
                    mac_address <= (others => '0');
                   
                    if in_valid = '1' then
                        if in_eop = '1' then
                            current_state <= IDLE;
                            in_ready      <= '0';
                            byte_counter  <= (others => '0');
                        else
                            byte_counter <= byte_counter + 1;
                        end if;
                    end if;
               
                -----------------------------------------------
                when others =>
                    current_state <= IDLE;
            end case;
        end if;
    end process;

    ------------------------------------------------------------------
    -- STATE DEBUG OUTPUT (for simulation monitoring)
    ------------------------------------------------------------------
    process(current_state)
    begin
        case current_state is
            when IDLE             => state <= "000";
            when ARP_REQUEST      => state <= "001";
            when WAITING_FOR_REPLY=> state <= "010";
            when RECEIVING_REPLY  => state <= "011";
            when DONE_STATE       => state <= "100";
            when IGNORE           => state <= "101";
            when others           => state <= "111";
        end case;
    end process;
	 
	 error_internal <= error;

end Behavioral;