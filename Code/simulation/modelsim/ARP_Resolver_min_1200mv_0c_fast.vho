-- Copyright (C) 2020  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 20.1.0 Build 711 06/05/2020 SJ Lite Edition"

-- DATE "01/29/2026 22:59:22"

-- 
-- Device: Altera EP4CE6F17C6 Package FBGA256
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_F16,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	ARP_Resolver IS
    PORT (
	clock : IN std_logic;
	reset : IN std_logic;
	resolve : IN std_logic;
	ip_address : IN std_logic_vector(31 DOWNTO 0);
	done : BUFFER std_logic;
	mac_address : BUFFER std_logic_vector(47 DOWNTO 0);
	busy : BUFFER std_logic;
	in_data : IN std_logic_vector(7 DOWNTO 0);
	in_valid : IN std_logic;
	in_sop : IN std_logic;
	in_eop : IN std_logic;
	in_ready : BUFFER std_logic;
	out_data : BUFFER std_logic_vector(7 DOWNTO 0);
	out_valid : BUFFER std_logic;
	out_sop : BUFFER std_logic;
	out_eop : BUFFER std_logic;
	out_ready : IN std_logic;
	state : BUFFER std_logic_vector(2 DOWNTO 0);
	error_internal : BUFFER std_logic
	);
END ARP_Resolver;

-- Design Ports Information
-- done	=>  Location: PIN_T6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mac_address[0]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mac_address[1]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mac_address[2]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mac_address[3]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mac_address[4]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mac_address[5]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mac_address[6]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mac_address[7]	=>  Location: PIN_B9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mac_address[8]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mac_address[9]	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mac_address[10]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mac_address[11]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mac_address[12]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mac_address[13]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mac_address[14]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mac_address[15]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mac_address[16]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mac_address[17]	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mac_address[18]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mac_address[19]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mac_address[20]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mac_address[21]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mac_address[22]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mac_address[23]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mac_address[24]	=>  Location: PIN_R8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mac_address[25]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mac_address[26]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mac_address[27]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mac_address[28]	=>  Location: PIN_L9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mac_address[29]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mac_address[30]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mac_address[31]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mac_address[32]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mac_address[33]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mac_address[34]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mac_address[35]	=>  Location: PIN_T5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mac_address[36]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mac_address[37]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mac_address[38]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mac_address[39]	=>  Location: PIN_D5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mac_address[40]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mac_address[41]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mac_address[42]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mac_address[43]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mac_address[44]	=>  Location: PIN_T3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mac_address[45]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mac_address[46]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mac_address[47]	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- busy	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_ready	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_data[0]	=>  Location: PIN_N2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_data[1]	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_data[2]	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_data[3]	=>  Location: PIN_D4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_data[4]	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_data[5]	=>  Location: PIN_L6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_data[6]	=>  Location: PIN_E5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_data[7]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_valid	=>  Location: PIN_N1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_sop	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_eop	=>  Location: PIN_L3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- state[0]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- state[1]	=>  Location: PIN_F6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- state[2]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- error_internal	=>  Location: PIN_F3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_eop	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_valid	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- resolve	=>  Location: PIN_T4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_sop	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_ready	=>  Location: PIN_N3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_data[2]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_data[1]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_data[5]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_data[6]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_data[7]	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_data[3]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_data[4]	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_data[0]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ip_address[0]	=>  Location: PIN_F5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ip_address[8]	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ip_address[16]	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ip_address[24]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ip_address[1]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ip_address[17]	=>  Location: PIN_N5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ip_address[9]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ip_address[25]	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ip_address[10]	=>  Location: PIN_P2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ip_address[2]	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ip_address[26]	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ip_address[18]	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ip_address[11]	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ip_address[3]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ip_address[27]	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ip_address[19]	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ip_address[12]	=>  Location: PIN_A2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ip_address[4]	=>  Location: PIN_E6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ip_address[28]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ip_address[20]	=>  Location: PIN_D3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ip_address[13]	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ip_address[5]	=>  Location: PIN_R4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ip_address[29]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ip_address[21]	=>  Location: PIN_K6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ip_address[14]	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ip_address[6]	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ip_address[30]	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ip_address[22]	=>  Location: PIN_K5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ip_address[15]	=>  Location: PIN_T2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ip_address[7]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ip_address[31]	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ip_address[23]	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ARP_Resolver IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clock : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_resolve : std_logic;
SIGNAL ww_ip_address : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_done : std_logic;
SIGNAL ww_mac_address : std_logic_vector(47 DOWNTO 0);
SIGNAL ww_busy : std_logic;
SIGNAL ww_in_data : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_in_valid : std_logic;
SIGNAL ww_in_sop : std_logic;
SIGNAL ww_in_eop : std_logic;
SIGNAL ww_in_ready : std_logic;
SIGNAL ww_out_data : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_out_valid : std_logic;
SIGNAL ww_out_sop : std_logic;
SIGNAL ww_out_eop : std_logic;
SIGNAL ww_out_ready : std_logic;
SIGNAL ww_state : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_error_internal : std_logic;
SIGNAL \reset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clock~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \done~output_o\ : std_logic;
SIGNAL \mac_address[0]~output_o\ : std_logic;
SIGNAL \mac_address[1]~output_o\ : std_logic;
SIGNAL \mac_address[2]~output_o\ : std_logic;
SIGNAL \mac_address[3]~output_o\ : std_logic;
SIGNAL \mac_address[4]~output_o\ : std_logic;
SIGNAL \mac_address[5]~output_o\ : std_logic;
SIGNAL \mac_address[6]~output_o\ : std_logic;
SIGNAL \mac_address[7]~output_o\ : std_logic;
SIGNAL \mac_address[8]~output_o\ : std_logic;
SIGNAL \mac_address[9]~output_o\ : std_logic;
SIGNAL \mac_address[10]~output_o\ : std_logic;
SIGNAL \mac_address[11]~output_o\ : std_logic;
SIGNAL \mac_address[12]~output_o\ : std_logic;
SIGNAL \mac_address[13]~output_o\ : std_logic;
SIGNAL \mac_address[14]~output_o\ : std_logic;
SIGNAL \mac_address[15]~output_o\ : std_logic;
SIGNAL \mac_address[16]~output_o\ : std_logic;
SIGNAL \mac_address[17]~output_o\ : std_logic;
SIGNAL \mac_address[18]~output_o\ : std_logic;
SIGNAL \mac_address[19]~output_o\ : std_logic;
SIGNAL \mac_address[20]~output_o\ : std_logic;
SIGNAL \mac_address[21]~output_o\ : std_logic;
SIGNAL \mac_address[22]~output_o\ : std_logic;
SIGNAL \mac_address[23]~output_o\ : std_logic;
SIGNAL \mac_address[24]~output_o\ : std_logic;
SIGNAL \mac_address[25]~output_o\ : std_logic;
SIGNAL \mac_address[26]~output_o\ : std_logic;
SIGNAL \mac_address[27]~output_o\ : std_logic;
SIGNAL \mac_address[28]~output_o\ : std_logic;
SIGNAL \mac_address[29]~output_o\ : std_logic;
SIGNAL \mac_address[30]~output_o\ : std_logic;
SIGNAL \mac_address[31]~output_o\ : std_logic;
SIGNAL \mac_address[32]~output_o\ : std_logic;
SIGNAL \mac_address[33]~output_o\ : std_logic;
SIGNAL \mac_address[34]~output_o\ : std_logic;
SIGNAL \mac_address[35]~output_o\ : std_logic;
SIGNAL \mac_address[36]~output_o\ : std_logic;
SIGNAL \mac_address[37]~output_o\ : std_logic;
SIGNAL \mac_address[38]~output_o\ : std_logic;
SIGNAL \mac_address[39]~output_o\ : std_logic;
SIGNAL \mac_address[40]~output_o\ : std_logic;
SIGNAL \mac_address[41]~output_o\ : std_logic;
SIGNAL \mac_address[42]~output_o\ : std_logic;
SIGNAL \mac_address[43]~output_o\ : std_logic;
SIGNAL \mac_address[44]~output_o\ : std_logic;
SIGNAL \mac_address[45]~output_o\ : std_logic;
SIGNAL \mac_address[46]~output_o\ : std_logic;
SIGNAL \mac_address[47]~output_o\ : std_logic;
SIGNAL \busy~output_o\ : std_logic;
SIGNAL \in_ready~output_o\ : std_logic;
SIGNAL \out_data[0]~output_o\ : std_logic;
SIGNAL \out_data[1]~output_o\ : std_logic;
SIGNAL \out_data[2]~output_o\ : std_logic;
SIGNAL \out_data[3]~output_o\ : std_logic;
SIGNAL \out_data[4]~output_o\ : std_logic;
SIGNAL \out_data[5]~output_o\ : std_logic;
SIGNAL \out_data[6]~output_o\ : std_logic;
SIGNAL \out_data[7]~output_o\ : std_logic;
SIGNAL \out_valid~output_o\ : std_logic;
SIGNAL \out_sop~output_o\ : std_logic;
SIGNAL \out_eop~output_o\ : std_logic;
SIGNAL \state[0]~output_o\ : std_logic;
SIGNAL \state[1]~output_o\ : std_logic;
SIGNAL \state[2]~output_o\ : std_logic;
SIGNAL \error_internal~output_o\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \clock~inputclkctrl_outclk\ : std_logic;
SIGNAL \in_data[2]~input_o\ : std_logic;
SIGNAL \in_data[4]~input_o\ : std_logic;
SIGNAL \in_data[0]~input_o\ : std_logic;
SIGNAL \in_data[5]~input_o\ : std_logic;
SIGNAL \in_data[6]~input_o\ : std_logic;
SIGNAL \in_data[7]~input_o\ : std_logic;
SIGNAL \Mux0~18_combout\ : std_logic;
SIGNAL \in_data[3]~input_o\ : std_logic;
SIGNAL \Equal31~0_combout\ : std_logic;
SIGNAL \in_sop~input_o\ : std_logic;
SIGNAL \in_valid~input_o\ : std_logic;
SIGNAL \in_eop~input_o\ : std_logic;
SIGNAL \Selector72~1_combout\ : std_logic;
SIGNAL \in_data[1]~input_o\ : std_logic;
SIGNAL \Selector15~2_combout\ : std_logic;
SIGNAL \resolve~input_o\ : std_logic;
SIGNAL \Selector18~2_combout\ : std_logic;
SIGNAL \Selector69~7_combout\ : std_logic;
SIGNAL \Selector69~8_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \current_state.ARP_REQUEST~q\ : std_logic;
SIGNAL \Selector16~1_combout\ : std_logic;
SIGNAL \out_ready~input_o\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Selector15~3_combout\ : std_logic;
SIGNAL \Selector17~5_combout\ : std_logic;
SIGNAL \Selector15~0_combout\ : std_logic;
SIGNAL \Selector15~1_combout\ : std_logic;
SIGNAL \Selector15~4_combout\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \Selector13~0_combout\ : std_logic;
SIGNAL \byte_counter[1]~2_combout\ : std_logic;
SIGNAL \byte_counter[1]~3_combout\ : std_logic;
SIGNAL \byte_counter[1]~4_combout\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Selector12~0_combout\ : std_logic;
SIGNAL \Equal3~0_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \Selector11~0_combout\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Selector10~0_combout\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \Selector9~0_combout\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \Selector8~0_combout\ : std_logic;
SIGNAL \Equal27~0_combout\ : std_logic;
SIGNAL \Equal30~0_combout\ : std_logic;
SIGNAL \last_byte_sent~0_combout\ : std_logic;
SIGNAL \last_byte_sent~q\ : std_logic;
SIGNAL \Selector69~4_combout\ : std_logic;
SIGNAL \byte_counter[1]~0_combout\ : std_logic;
SIGNAL \byte_counter[1]~1_combout\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \Selector14~0_combout\ : std_logic;
SIGNAL \Equal2~2_combout\ : std_logic;
SIGNAL \Equal24~0_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Selector69~5_combout\ : std_logic;
SIGNAL \Selector69~6_combout\ : std_logic;
SIGNAL \Selector73~0_combout\ : std_logic;
SIGNAL \Selector73~1_combout\ : std_logic;
SIGNAL \current_state.IGNORE~q\ : std_logic;
SIGNAL \Selector72~3_combout\ : std_logic;
SIGNAL \Selector69~9_combout\ : std_logic;
SIGNAL \Selector71~0_combout\ : std_logic;
SIGNAL \current_state.RECEIVING_REPLY~q\ : std_logic;
SIGNAL \Selector19~0_combout\ : std_logic;
SIGNAL \Selector72~2_combout\ : std_logic;
SIGNAL \current_state.DONE_STATE~q\ : std_logic;
SIGNAL \Selector68~4_combout\ : std_logic;
SIGNAL \Selector68~0_combout\ : std_logic;
SIGNAL \Selector68~1_combout\ : std_logic;
SIGNAL \Selector68~2_combout\ : std_logic;
SIGNAL \Selector68~3_combout\ : std_logic;
SIGNAL \Selector68~5_combout\ : std_logic;
SIGNAL \current_state.IDLE~q\ : std_logic;
SIGNAL \Selector69~10_combout\ : std_logic;
SIGNAL \Selector70~0_combout\ : std_logic;
SIGNAL \current_state.WAITING_FOR_REPLY~q\ : std_logic;
SIGNAL \Selector17~4_combout\ : std_logic;
SIGNAL \Selector19~1_combout\ : std_logic;
SIGNAL \Selector19~4_combout\ : std_logic;
SIGNAL \Selector19~2_combout\ : std_logic;
SIGNAL \Selector19~3_combout\ : std_logic;
SIGNAL \Mux0~35_combout\ : std_logic;
SIGNAL \Equal37~0_combout\ : std_logic;
SIGNAL \Mux0~36_combout\ : std_logic;
SIGNAL \Mux0~37_combout\ : std_logic;
SIGNAL \Mux0~38_combout\ : std_logic;
SIGNAL \Mux0~39_combout\ : std_logic;
SIGNAL \Equal47~0_combout\ : std_logic;
SIGNAL \Mux0~19_combout\ : std_logic;
SIGNAL \Mux0~20_combout\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \Mux0~21_combout\ : std_logic;
SIGNAL \Mux0~43_combout\ : std_logic;
SIGNAL \Mux0~44_combout\ : std_logic;
SIGNAL \Mux0~3_combout\ : std_logic;
SIGNAL \Mux0~42_combout\ : std_logic;
SIGNAL \error~34_combout\ : std_logic;
SIGNAL \error~27_combout\ : std_logic;
SIGNAL \error~28_combout\ : std_logic;
SIGNAL \error~35_combout\ : std_logic;
SIGNAL \error~36_combout\ : std_logic;
SIGNAL \error~31_combout\ : std_logic;
SIGNAL \error~37_combout\ : std_logic;
SIGNAL \Mux0~30_combout\ : std_logic;
SIGNAL \Mux0~31_combout\ : std_logic;
SIGNAL \Mux0~32_combout\ : std_logic;
SIGNAL \error~0_combout\ : std_logic;
SIGNAL \error~33_combout\ : std_logic;
SIGNAL \error~29_combout\ : std_logic;
SIGNAL \error~30_combout\ : std_logic;
SIGNAL \error~32_combout\ : std_logic;
SIGNAL \Mux0~28_combout\ : std_logic;
SIGNAL \Mux0~29_combout\ : std_logic;
SIGNAL \Mux0~33_combout\ : std_logic;
SIGNAL \error~4_combout\ : std_logic;
SIGNAL \error~5_combout\ : std_logic;
SIGNAL \error~1_combout\ : std_logic;
SIGNAL \error~2_combout\ : std_logic;
SIGNAL \error~3_combout\ : std_logic;
SIGNAL \Mux0~22_combout\ : std_logic;
SIGNAL \Mux0~23_combout\ : std_logic;
SIGNAL \Mux0~24_combout\ : std_logic;
SIGNAL \ip_address[5]~input_o\ : std_logic;
SIGNAL \ip_address[4]~input_o\ : std_logic;
SIGNAL \error~24_combout\ : std_logic;
SIGNAL \ip_address[6]~input_o\ : std_logic;
SIGNAL \ip_address[7]~input_o\ : std_logic;
SIGNAL \error~25_combout\ : std_logic;
SIGNAL \ip_address[3]~input_o\ : std_logic;
SIGNAL \ip_address[2]~input_o\ : std_logic;
SIGNAL \error~22_combout\ : std_logic;
SIGNAL \ip_address[0]~input_o\ : std_logic;
SIGNAL \ip_address[1]~input_o\ : std_logic;
SIGNAL \error~21_combout\ : std_logic;
SIGNAL \error~23_combout\ : std_logic;
SIGNAL \error~26_combout\ : std_logic;
SIGNAL \ip_address[13]~input_o\ : std_logic;
SIGNAL \ip_address[10]~input_o\ : std_logic;
SIGNAL \error~8_combout\ : std_logic;
SIGNAL \ip_address[11]~input_o\ : std_logic;
SIGNAL \ip_address[9]~input_o\ : std_logic;
SIGNAL \error~7_combout\ : std_logic;
SIGNAL \ip_address[14]~input_o\ : std_logic;
SIGNAL \ip_address[15]~input_o\ : std_logic;
SIGNAL \error~6_combout\ : std_logic;
SIGNAL \ip_address[12]~input_o\ : std_logic;
SIGNAL \ip_address[8]~input_o\ : std_logic;
SIGNAL \Equal43~0_combout\ : std_logic;
SIGNAL \error~9_combout\ : std_logic;
SIGNAL \error~10_combout\ : std_logic;
SIGNAL \ip_address[20]~input_o\ : std_logic;
SIGNAL \ip_address[21]~input_o\ : std_logic;
SIGNAL \stored_ip[21]~feeder_combout\ : std_logic;
SIGNAL \error~13_combout\ : std_logic;
SIGNAL \ip_address[23]~input_o\ : std_logic;
SIGNAL \ip_address[22]~input_o\ : std_logic;
SIGNAL \error~14_combout\ : std_logic;
SIGNAL \ip_address[16]~input_o\ : std_logic;
SIGNAL \Equal42~0_combout\ : std_logic;
SIGNAL \ip_address[17]~input_o\ : std_logic;
SIGNAL \ip_address[18]~input_o\ : std_logic;
SIGNAL \ip_address[19]~input_o\ : std_logic;
SIGNAL \error~11_combout\ : std_logic;
SIGNAL \error~12_combout\ : std_logic;
SIGNAL \error~15_combout\ : std_logic;
SIGNAL \ip_address[29]~input_o\ : std_logic;
SIGNAL \ip_address[28]~input_o\ : std_logic;
SIGNAL \error~18_combout\ : std_logic;
SIGNAL \ip_address[31]~input_o\ : std_logic;
SIGNAL \ip_address[30]~input_o\ : std_logic;
SIGNAL \error~19_combout\ : std_logic;
SIGNAL \ip_address[24]~input_o\ : std_logic;
SIGNAL \Equal41~0_combout\ : std_logic;
SIGNAL \ip_address[25]~input_o\ : std_logic;
SIGNAL \ip_address[26]~input_o\ : std_logic;
SIGNAL \ip_address[27]~input_o\ : std_logic;
SIGNAL \error~16_combout\ : std_logic;
SIGNAL \error~17_combout\ : std_logic;
SIGNAL \error~20_combout\ : std_logic;
SIGNAL \Mux0~25_combout\ : std_logic;
SIGNAL \Mux0~26_combout\ : std_logic;
SIGNAL \Mux0~27_combout\ : std_logic;
SIGNAL \Mux0~34_combout\ : std_logic;
SIGNAL \Mux0~40_combout\ : std_logic;
SIGNAL \Selector19~5_combout\ : std_logic;
SIGNAL \error~q\ : std_logic;
SIGNAL \Selector72~0_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \done~reg0_q\ : std_logic;
SIGNAL \mac_address~0_combout\ : std_logic;
SIGNAL \Selector130~0_combout\ : std_logic;
SIGNAL \Mux0~41_combout\ : std_logic;
SIGNAL \Equal5~0_combout\ : std_logic;
SIGNAL \received_mac[1]~2_combout\ : std_logic;
SIGNAL \Selector20~0_combout\ : std_logic;
SIGNAL \Selector67~0_combout\ : std_logic;
SIGNAL \mac_address[0]~reg0_q\ : std_logic;
SIGNAL \Selector129~0_combout\ : std_logic;
SIGNAL \received_mac[1]~feeder_combout\ : std_logic;
SIGNAL \Selector66~0_combout\ : std_logic;
SIGNAL \mac_address[1]~reg0_q\ : std_logic;
SIGNAL \Selector128~0_combout\ : std_logic;
SIGNAL \received_mac[2]~feeder_combout\ : std_logic;
SIGNAL \Selector65~0_combout\ : std_logic;
SIGNAL \mac_address[2]~reg0_q\ : std_logic;
SIGNAL \Selector127~0_combout\ : std_logic;
SIGNAL \received_mac[3]~feeder_combout\ : std_logic;
SIGNAL \Selector64~0_combout\ : std_logic;
SIGNAL \mac_address[3]~reg0_q\ : std_logic;
SIGNAL \Selector126~0_combout\ : std_logic;
SIGNAL \received_mac[4]~feeder_combout\ : std_logic;
SIGNAL \Selector63~0_combout\ : std_logic;
SIGNAL \mac_address[4]~reg0_q\ : std_logic;
SIGNAL \Selector125~0_combout\ : std_logic;
SIGNAL \received_mac[5]~feeder_combout\ : std_logic;
SIGNAL \Selector62~0_combout\ : std_logic;
SIGNAL \mac_address[5]~reg0_q\ : std_logic;
SIGNAL \Selector124~0_combout\ : std_logic;
SIGNAL \received_mac[6]~feeder_combout\ : std_logic;
SIGNAL \Selector61~0_combout\ : std_logic;
SIGNAL \mac_address[6]~reg0_q\ : std_logic;
SIGNAL \Selector123~0_combout\ : std_logic;
SIGNAL \received_mac[7]~feeder_combout\ : std_logic;
SIGNAL \Selector60~0_combout\ : std_logic;
SIGNAL \mac_address[7]~reg0_q\ : std_logic;
SIGNAL \received_mac[8]~feeder_combout\ : std_logic;
SIGNAL \Equal23~1_combout\ : std_logic;
SIGNAL \received_mac[12]~3_combout\ : std_logic;
SIGNAL \Selector59~0_combout\ : std_logic;
SIGNAL \mac_address[8]~reg0_q\ : std_logic;
SIGNAL \received_mac[9]~feeder_combout\ : std_logic;
SIGNAL \Selector58~0_combout\ : std_logic;
SIGNAL \mac_address[9]~reg0_q\ : std_logic;
SIGNAL \received_mac[10]~feeder_combout\ : std_logic;
SIGNAL \Selector57~0_combout\ : std_logic;
SIGNAL \mac_address[10]~reg0_q\ : std_logic;
SIGNAL \Selector56~0_combout\ : std_logic;
SIGNAL \mac_address[11]~reg0_q\ : std_logic;
SIGNAL \received_mac[12]~feeder_combout\ : std_logic;
SIGNAL \Selector55~0_combout\ : std_logic;
SIGNAL \mac_address[12]~reg0_q\ : std_logic;
SIGNAL \received_mac[13]~feeder_combout\ : std_logic;
SIGNAL \Selector54~0_combout\ : std_logic;
SIGNAL \mac_address[13]~reg0_q\ : std_logic;
SIGNAL \received_mac[14]~feeder_combout\ : std_logic;
SIGNAL \Selector53~0_combout\ : std_logic;
SIGNAL \mac_address[14]~reg0_q\ : std_logic;
SIGNAL \received_mac[15]~feeder_combout\ : std_logic;
SIGNAL \Selector52~0_combout\ : std_logic;
SIGNAL \mac_address[15]~reg0_q\ : std_logic;
SIGNAL \received_mac[16]~feeder_combout\ : std_logic;
SIGNAL \Equal4~2_combout\ : std_logic;
SIGNAL \received_mac[21]~4_combout\ : std_logic;
SIGNAL \Selector51~0_combout\ : std_logic;
SIGNAL \mac_address[16]~reg0_q\ : std_logic;
SIGNAL \received_mac[17]~feeder_combout\ : std_logic;
SIGNAL \Selector50~0_combout\ : std_logic;
SIGNAL \mac_address[17]~reg0_q\ : std_logic;
SIGNAL \received_mac[18]~feeder_combout\ : std_logic;
SIGNAL \Selector49~0_combout\ : std_logic;
SIGNAL \mac_address[18]~reg0_q\ : std_logic;
SIGNAL \received_mac[19]~feeder_combout\ : std_logic;
SIGNAL \Selector48~0_combout\ : std_logic;
SIGNAL \mac_address[19]~reg0_q\ : std_logic;
SIGNAL \received_mac[20]~feeder_combout\ : std_logic;
SIGNAL \Selector47~0_combout\ : std_logic;
SIGNAL \mac_address[20]~reg0_q\ : std_logic;
SIGNAL \received_mac[21]~feeder_combout\ : std_logic;
SIGNAL \Selector46~0_combout\ : std_logic;
SIGNAL \mac_address[21]~reg0_q\ : std_logic;
SIGNAL \received_mac[22]~feeder_combout\ : std_logic;
SIGNAL \Selector45~0_combout\ : std_logic;
SIGNAL \mac_address[22]~reg0_q\ : std_logic;
SIGNAL \received_mac[23]~feeder_combout\ : std_logic;
SIGNAL \Selector44~0_combout\ : std_logic;
SIGNAL \mac_address[23]~reg0_q\ : std_logic;
SIGNAL \received_mac[24]~feeder_combout\ : std_logic;
SIGNAL \received_mac[28]~5_combout\ : std_logic;
SIGNAL \Selector43~0_combout\ : std_logic;
SIGNAL \mac_address[24]~reg0_q\ : std_logic;
SIGNAL \received_mac[25]~feeder_combout\ : std_logic;
SIGNAL \Selector42~0_combout\ : std_logic;
SIGNAL \mac_address[25]~reg0_q\ : std_logic;
SIGNAL \received_mac[26]~feeder_combout\ : std_logic;
SIGNAL \Selector41~0_combout\ : std_logic;
SIGNAL \mac_address[26]~reg0_q\ : std_logic;
SIGNAL \received_mac[27]~feeder_combout\ : std_logic;
SIGNAL \Selector40~0_combout\ : std_logic;
SIGNAL \mac_address[27]~reg0_q\ : std_logic;
SIGNAL \received_mac[28]~feeder_combout\ : std_logic;
SIGNAL \Selector39~0_combout\ : std_logic;
SIGNAL \mac_address[28]~reg0_q\ : std_logic;
SIGNAL \received_mac[29]~feeder_combout\ : std_logic;
SIGNAL \Selector38~0_combout\ : std_logic;
SIGNAL \mac_address[29]~reg0_q\ : std_logic;
SIGNAL \received_mac[30]~feeder_combout\ : std_logic;
SIGNAL \Selector37~0_combout\ : std_logic;
SIGNAL \mac_address[30]~reg0_q\ : std_logic;
SIGNAL \received_mac[31]~feeder_combout\ : std_logic;
SIGNAL \Selector36~0_combout\ : std_logic;
SIGNAL \mac_address[31]~reg0_q\ : std_logic;
SIGNAL \received_mac[32]~feeder_combout\ : std_logic;
SIGNAL \Equal13~0_combout\ : std_logic;
SIGNAL \Equal18~0_combout\ : std_logic;
SIGNAL \received_mac[39]~8_combout\ : std_logic;
SIGNAL \Selector35~0_combout\ : std_logic;
SIGNAL \mac_address[32]~reg0_q\ : std_logic;
SIGNAL \received_mac[33]~feeder_combout\ : std_logic;
SIGNAL \Selector34~0_combout\ : std_logic;
SIGNAL \mac_address[33]~reg0_q\ : std_logic;
SIGNAL \received_mac[34]~feeder_combout\ : std_logic;
SIGNAL \Selector33~0_combout\ : std_logic;
SIGNAL \mac_address[34]~reg0_q\ : std_logic;
SIGNAL \Selector32~0_combout\ : std_logic;
SIGNAL \mac_address[35]~reg0_q\ : std_logic;
SIGNAL \Selector31~0_combout\ : std_logic;
SIGNAL \mac_address[36]~reg0_q\ : std_logic;
SIGNAL \received_mac[37]~feeder_combout\ : std_logic;
SIGNAL \Selector30~0_combout\ : std_logic;
SIGNAL \mac_address[37]~reg0_q\ : std_logic;
SIGNAL \Selector29~0_combout\ : std_logic;
SIGNAL \mac_address[38]~reg0_q\ : std_logic;
SIGNAL \Selector28~0_combout\ : std_logic;
SIGNAL \mac_address[39]~reg0_q\ : std_logic;
SIGNAL \received_mac[40]~feeder_combout\ : std_logic;
SIGNAL \received_mac[42]~6_combout\ : std_logic;
SIGNAL \received_mac[42]~7_combout\ : std_logic;
SIGNAL \Selector27~0_combout\ : std_logic;
SIGNAL \mac_address[40]~reg0_q\ : std_logic;
SIGNAL \received_mac[41]~feeder_combout\ : std_logic;
SIGNAL \Selector26~0_combout\ : std_logic;
SIGNAL \mac_address[41]~reg0_q\ : std_logic;
SIGNAL \received_mac[42]~feeder_combout\ : std_logic;
SIGNAL \Selector25~0_combout\ : std_logic;
SIGNAL \mac_address[42]~reg0_q\ : std_logic;
SIGNAL \received_mac[43]~feeder_combout\ : std_logic;
SIGNAL \Selector24~0_combout\ : std_logic;
SIGNAL \mac_address[43]~reg0_q\ : std_logic;
SIGNAL \Selector23~0_combout\ : std_logic;
SIGNAL \mac_address[44]~reg0_q\ : std_logic;
SIGNAL \received_mac[45]~feeder_combout\ : std_logic;
SIGNAL \Selector22~0_combout\ : std_logic;
SIGNAL \mac_address[45]~reg0_q\ : std_logic;
SIGNAL \received_mac[46]~feeder_combout\ : std_logic;
SIGNAL \Selector21~0_combout\ : std_logic;
SIGNAL \mac_address[46]~reg0_q\ : std_logic;
SIGNAL \received_mac[47]~feeder_combout\ : std_logic;
SIGNAL \Selector20~1_combout\ : std_logic;
SIGNAL \mac_address[47]~reg0_q\ : std_logic;
SIGNAL \Selector18~0_combout\ : std_logic;
SIGNAL \Selector18~1_combout\ : std_logic;
SIGNAL \busy~reg0_q\ : std_logic;
SIGNAL \Selector17~6_combout\ : std_logic;
SIGNAL \in_ready~reg0_q\ : std_logic;
SIGNAL \Equal3~1_combout\ : std_logic;
SIGNAL \Selector4~0_combout\ : std_logic;
SIGNAL \Equal2~1_combout\ : std_logic;
SIGNAL \LessThan1~2_combout\ : std_logic;
SIGNAL \Selector7~0_combout\ : std_logic;
SIGNAL \Selector6~0_combout\ : std_logic;
SIGNAL \Selector7~2_combout\ : std_logic;
SIGNAL \Selector7~3_combout\ : std_logic;
SIGNAL \Equal27~1_combout\ : std_logic;
SIGNAL \Selector82~0_combout\ : std_logic;
SIGNAL \Equal29~0_combout\ : std_logic;
SIGNAL \Equal28~0_combout\ : std_logic;
SIGNAL \Selector7~1_combout\ : std_logic;
SIGNAL \Selector82~1_combout\ : std_logic;
SIGNAL \Selector82~2_combout\ : std_logic;
SIGNAL \Selector75~2_combout\ : std_logic;
SIGNAL \Selector75~8_combout\ : std_logic;
SIGNAL \out_data[0]~reg0_q\ : std_logic;
SIGNAL \Selector6~2_combout\ : std_logic;
SIGNAL \Selector6~3_combout\ : std_logic;
SIGNAL \Equal24~1_combout\ : std_logic;
SIGNAL \Equal8~0_combout\ : std_logic;
SIGNAL \Selector5~0_combout\ : std_logic;
SIGNAL \Equal26~0_combout\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \Selector3~1_combout\ : std_logic;
SIGNAL \Selector4~1_combout\ : std_logic;
SIGNAL \Selector6~1_combout\ : std_logic;
SIGNAL \Selector81~0_combout\ : std_logic;
SIGNAL \out_data[1]~reg0_q\ : std_logic;
SIGNAL \Selector80~4_combout\ : std_logic;
SIGNAL \Selector3~2_combout\ : std_logic;
SIGNAL \Selector5~2_combout\ : std_logic;
SIGNAL \Selector5~1_combout\ : std_logic;
SIGNAL \Selector1~1_combout\ : std_logic;
SIGNAL \Selector80~2_combout\ : std_logic;
SIGNAL \Selector80~3_combout\ : std_logic;
SIGNAL \out_data[2]~reg0_q\ : std_logic;
SIGNAL \Selector4~3_combout\ : std_logic;
SIGNAL \Selector4~4_combout\ : std_logic;
SIGNAL \Selector4~5_combout\ : std_logic;
SIGNAL \Selector4~6_combout\ : std_logic;
SIGNAL \Selector4~7_combout\ : std_logic;
SIGNAL \Selector4~2_combout\ : std_logic;
SIGNAL \Selector4~8_combout\ : std_logic;
SIGNAL \Selector79~0_combout\ : std_logic;
SIGNAL \out_data[3]~reg0_q\ : std_logic;
SIGNAL \Selector3~4_combout\ : std_logic;
SIGNAL \Selector3~3_combout\ : std_logic;
SIGNAL \Selector3~5_combout\ : std_logic;
SIGNAL \Selector78~0_combout\ : std_logic;
SIGNAL \out_data[4]~reg0_q\ : std_logic;
SIGNAL \Selector2~1_combout\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \Selector2~2_combout\ : std_logic;
SIGNAL \Selector77~0_combout\ : std_logic;
SIGNAL \out_data[5]~reg0_q\ : std_logic;
SIGNAL \Equal23~0_combout\ : std_logic;
SIGNAL \Selector1~2_combout\ : std_logic;
SIGNAL \Selector1~3_combout\ : std_logic;
SIGNAL \Selector1~4_combout\ : std_logic;
SIGNAL \Selector76~0_combout\ : std_logic;
SIGNAL \out_data[6]~reg0_q\ : std_logic;
SIGNAL \Selector75~5_combout\ : std_logic;
SIGNAL \Selector75~3_combout\ : std_logic;
SIGNAL \Selector75~4_combout\ : std_logic;
SIGNAL \Selector75~6_combout\ : std_logic;
SIGNAL \Selector75~7_combout\ : std_logic;
SIGNAL \out_data[7]~reg0_q\ : std_logic;
SIGNAL \Selector16~0_combout\ : std_logic;
SIGNAL \out_valid~reg0_q\ : std_logic;
SIGNAL \Selector74~0_combout\ : std_logic;
SIGNAL \Selector74~1_combout\ : std_logic;
SIGNAL \out_sop~reg0_q\ : std_logic;
SIGNAL \out_eop~0_combout\ : std_logic;
SIGNAL \out_eop~reg0_q\ : std_logic;
SIGNAL \WideOr20~combout\ : std_logic;
SIGNAL \state~0_combout\ : std_logic;
SIGNAL \state~1_combout\ : std_logic;
SIGNAL received_mac : std_logic_vector(47 DOWNTO 0);
SIGNAL stored_ip : std_logic_vector(31 DOWNTO 0);
SIGNAL byte_counter : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_in_valid~input_o\ : std_logic;
SIGNAL \ALT_INV_current_state.ARP_REQUEST~q\ : std_logic;
SIGNAL \ALT_INV_state~1_combout\ : std_logic;
SIGNAL \ALT_INV_state~0_combout\ : std_logic;
SIGNAL \ALT_INV_current_state.RECEIVING_REPLY~q\ : std_logic;
SIGNAL \ALT_INV_WideOr20~combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clock <= clock;
ww_reset <= reset;
ww_resolve <= resolve;
ww_ip_address <= ip_address;
done <= ww_done;
mac_address <= ww_mac_address;
busy <= ww_busy;
ww_in_data <= in_data;
ww_in_valid <= in_valid;
ww_in_sop <= in_sop;
ww_in_eop <= in_eop;
in_ready <= ww_in_ready;
out_data <= ww_out_data;
out_valid <= ww_out_valid;
out_sop <= ww_out_sop;
out_eop <= ww_out_eop;
ww_out_ready <= out_ready;
state <= ww_state;
error_internal <= ww_error_internal;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\reset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reset~input_o\);

\clock~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clock~input_o\);
\ALT_INV_reset~inputclkctrl_outclk\ <= NOT \reset~inputclkctrl_outclk\;
\ALT_INV_in_valid~input_o\ <= NOT \in_valid~input_o\;
\ALT_INV_current_state.ARP_REQUEST~q\ <= NOT \current_state.ARP_REQUEST~q\;
\ALT_INV_state~1_combout\ <= NOT \state~1_combout\;
\ALT_INV_state~0_combout\ <= NOT \state~0_combout\;
\ALT_INV_current_state.RECEIVING_REPLY~q\ <= NOT \current_state.RECEIVING_REPLY~q\;
\ALT_INV_WideOr20~combout\ <= NOT \WideOr20~combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X11_Y0_N16
\done~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \done~reg0_q\,
	devoe => ww_devoe,
	o => \done~output_o\);

-- Location: IOOBUF_X7_Y0_N9
\mac_address[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mac_address[0]~reg0_q\,
	devoe => ww_devoe,
	o => \mac_address[0]~output_o\);

-- Location: IOOBUF_X34_Y20_N9
\mac_address[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mac_address[1]~reg0_q\,
	devoe => ww_devoe,
	o => \mac_address[1]~output_o\);

-- Location: IOOBUF_X16_Y0_N2
\mac_address[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mac_address[2]~reg0_q\,
	devoe => ww_devoe,
	o => \mac_address[2]~output_o\);

-- Location: IOOBUF_X16_Y24_N23
\mac_address[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mac_address[3]~reg0_q\,
	devoe => ww_devoe,
	o => \mac_address[3]~output_o\);

-- Location: IOOBUF_X13_Y0_N16
\mac_address[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mac_address[4]~reg0_q\,
	devoe => ww_devoe,
	o => \mac_address[4]~output_o\);

-- Location: IOOBUF_X34_Y18_N2
\mac_address[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mac_address[5]~reg0_q\,
	devoe => ww_devoe,
	o => \mac_address[5]~output_o\);

-- Location: IOOBUF_X11_Y0_N23
\mac_address[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mac_address[6]~reg0_q\,
	devoe => ww_devoe,
	o => \mac_address[6]~output_o\);

-- Location: IOOBUF_X16_Y24_N9
\mac_address[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mac_address[7]~reg0_q\,
	devoe => ww_devoe,
	o => \mac_address[7]~output_o\);

-- Location: IOOBUF_X18_Y24_N16
\mac_address[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mac_address[8]~reg0_q\,
	devoe => ww_devoe,
	o => \mac_address[8]~output_o\);

-- Location: IOOBUF_X34_Y20_N16
\mac_address[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mac_address[9]~reg0_q\,
	devoe => ww_devoe,
	o => \mac_address[9]~output_o\);

-- Location: IOOBUF_X23_Y24_N2
\mac_address[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mac_address[10]~reg0_q\,
	devoe => ww_devoe,
	o => \mac_address[10]~output_o\);

-- Location: IOOBUF_X28_Y24_N23
\mac_address[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mac_address[11]~reg0_q\,
	devoe => ww_devoe,
	o => \mac_address[11]~output_o\);

-- Location: IOOBUF_X34_Y20_N2
\mac_address[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mac_address[12]~reg0_q\,
	devoe => ww_devoe,
	o => \mac_address[12]~output_o\);

-- Location: IOOBUF_X11_Y24_N9
\mac_address[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mac_address[13]~reg0_q\,
	devoe => ww_devoe,
	o => \mac_address[13]~output_o\);

-- Location: IOOBUF_X11_Y0_N9
\mac_address[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mac_address[14]~reg0_q\,
	devoe => ww_devoe,
	o => \mac_address[14]~output_o\);

-- Location: IOOBUF_X16_Y24_N16
\mac_address[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mac_address[15]~reg0_q\,
	devoe => ww_devoe,
	o => \mac_address[15]~output_o\);

-- Location: IOOBUF_X18_Y0_N23
\mac_address[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mac_address[16]~reg0_q\,
	devoe => ww_devoe,
	o => \mac_address[16]~output_o\);

-- Location: IOOBUF_X18_Y0_N16
\mac_address[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mac_address[17]~reg0_q\,
	devoe => ww_devoe,
	o => \mac_address[17]~output_o\);

-- Location: IOOBUF_X21_Y24_N2
\mac_address[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mac_address[18]~reg0_q\,
	devoe => ww_devoe,
	o => \mac_address[18]~output_o\);

-- Location: IOOBUF_X28_Y24_N9
\mac_address[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mac_address[19]~reg0_q\,
	devoe => ww_devoe,
	o => \mac_address[19]~output_o\);

-- Location: IOOBUF_X16_Y24_N2
\mac_address[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mac_address[20]~reg0_q\,
	devoe => ww_devoe,
	o => \mac_address[20]~output_o\);

-- Location: IOOBUF_X21_Y24_N16
\mac_address[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mac_address[21]~reg0_q\,
	devoe => ww_devoe,
	o => \mac_address[21]~output_o\);

-- Location: IOOBUF_X21_Y24_N9
\mac_address[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mac_address[22]~reg0_q\,
	devoe => ww_devoe,
	o => \mac_address[22]~output_o\);

-- Location: IOOBUF_X25_Y24_N23
\mac_address[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mac_address[23]~reg0_q\,
	devoe => ww_devoe,
	o => \mac_address[23]~output_o\);

-- Location: IOOBUF_X16_Y0_N9
\mac_address[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mac_address[24]~reg0_q\,
	devoe => ww_devoe,
	o => \mac_address[24]~output_o\);

-- Location: IOOBUF_X9_Y0_N16
\mac_address[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mac_address[25]~reg0_q\,
	devoe => ww_devoe,
	o => \mac_address[25]~output_o\);

-- Location: IOOBUF_X16_Y0_N16
\mac_address[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mac_address[26]~reg0_q\,
	devoe => ww_devoe,
	o => \mac_address[26]~output_o\);

-- Location: IOOBUF_X16_Y0_N23
\mac_address[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mac_address[27]~reg0_q\,
	devoe => ww_devoe,
	o => \mac_address[27]~output_o\);

-- Location: IOOBUF_X18_Y0_N2
\mac_address[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mac_address[28]~reg0_q\,
	devoe => ww_devoe,
	o => \mac_address[28]~output_o\);

-- Location: IOOBUF_X25_Y24_N16
\mac_address[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mac_address[29]~reg0_q\,
	devoe => ww_devoe,
	o => \mac_address[29]~output_o\);

-- Location: IOOBUF_X13_Y0_N2
\mac_address[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mac_address[30]~reg0_q\,
	devoe => ww_devoe,
	o => \mac_address[30]~output_o\);

-- Location: IOOBUF_X25_Y24_N9
\mac_address[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mac_address[31]~reg0_q\,
	devoe => ww_devoe,
	o => \mac_address[31]~output_o\);

-- Location: IOOBUF_X11_Y24_N2
\mac_address[32]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mac_address[32]~reg0_q\,
	devoe => ww_devoe,
	o => \mac_address[32]~output_o\);

-- Location: IOOBUF_X32_Y24_N16
\mac_address[33]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mac_address[33]~reg0_q\,
	devoe => ww_devoe,
	o => \mac_address[33]~output_o\);

-- Location: IOOBUF_X18_Y24_N9
\mac_address[34]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mac_address[34]~reg0_q\,
	devoe => ww_devoe,
	o => \mac_address[34]~output_o\);

-- Location: IOOBUF_X9_Y0_N2
\mac_address[35]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mac_address[35]~reg0_q\,
	devoe => ww_devoe,
	o => \mac_address[35]~output_o\);

-- Location: IOOBUF_X11_Y0_N2
\mac_address[36]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mac_address[36]~reg0_q\,
	devoe => ww_devoe,
	o => \mac_address[36]~output_o\);

-- Location: IOOBUF_X23_Y24_N23
\mac_address[37]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mac_address[37]~reg0_q\,
	devoe => ww_devoe,
	o => \mac_address[37]~output_o\);

-- Location: IOOBUF_X13_Y24_N2
\mac_address[38]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mac_address[38]~reg0_q\,
	devoe => ww_devoe,
	o => \mac_address[38]~output_o\);

-- Location: IOOBUF_X3_Y24_N2
\mac_address[39]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mac_address[39]~reg0_q\,
	devoe => ww_devoe,
	o => \mac_address[39]~output_o\);

-- Location: IOOBUF_X18_Y24_N23
\mac_address[40]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mac_address[40]~reg0_q\,
	devoe => ww_devoe,
	o => \mac_address[40]~output_o\);

-- Location: IOOBUF_X34_Y19_N9
\mac_address[41]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mac_address[41]~reg0_q\,
	devoe => ww_devoe,
	o => \mac_address[41]~output_o\);

-- Location: IOOBUF_X9_Y0_N9
\mac_address[42]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mac_address[42]~reg0_q\,
	devoe => ww_devoe,
	o => \mac_address[42]~output_o\);

-- Location: IOOBUF_X23_Y24_N9
\mac_address[43]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mac_address[43]~reg0_q\,
	devoe => ww_devoe,
	o => \mac_address[43]~output_o\);

-- Location: IOOBUF_X1_Y0_N2
\mac_address[44]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mac_address[44]~reg0_q\,
	devoe => ww_devoe,
	o => \mac_address[44]~output_o\);

-- Location: IOOBUF_X13_Y24_N9
\mac_address[45]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mac_address[45]~reg0_q\,
	devoe => ww_devoe,
	o => \mac_address[45]~output_o\);

-- Location: IOOBUF_X13_Y0_N23
\mac_address[46]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mac_address[46]~reg0_q\,
	devoe => ww_devoe,
	o => \mac_address[46]~output_o\);

-- Location: IOOBUF_X13_Y24_N16
\mac_address[47]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mac_address[47]~reg0_q\,
	devoe => ww_devoe,
	o => \mac_address[47]~output_o\);

-- Location: IOOBUF_X34_Y19_N2
\busy~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \busy~reg0_q\,
	devoe => ww_devoe,
	o => \busy~output_o\);

-- Location: IOOBUF_X23_Y24_N16
\in_ready~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \in_ready~reg0_q\,
	devoe => ww_devoe,
	o => \in_ready~output_o\);

-- Location: IOOBUF_X0_Y7_N16
\out_data[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out_data[0]~reg0_q\,
	devoe => ww_devoe,
	o => \out_data[0]~output_o\);

-- Location: IOOBUF_X0_Y8_N16
\out_data[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out_data[1]~reg0_q\,
	devoe => ww_devoe,
	o => \out_data[1]~output_o\);

-- Location: IOOBUF_X0_Y8_N9
\out_data[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out_data[2]~reg0_q\,
	devoe => ww_devoe,
	o => \out_data[2]~output_o\);

-- Location: IOOBUF_X0_Y23_N2
\out_data[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out_data[3]~reg0_q\,
	devoe => ww_devoe,
	o => \out_data[3]~output_o\);

-- Location: IOOBUF_X0_Y6_N23
\out_data[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out_data[4]~reg0_q\,
	devoe => ww_devoe,
	o => \out_data[4]~output_o\);

-- Location: IOOBUF_X0_Y9_N9
\out_data[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out_data[5]~reg0_q\,
	devoe => ww_devoe,
	o => \out_data[5]~output_o\);

-- Location: IOOBUF_X0_Y23_N9
\out_data[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out_data[6]~reg0_q\,
	devoe => ww_devoe,
	o => \out_data[6]~output_o\);

-- Location: IOOBUF_X3_Y24_N9
\out_data[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out_data[7]~reg0_q\,
	devoe => ww_devoe,
	o => \out_data[7]~output_o\);

-- Location: IOOBUF_X0_Y7_N23
\out_valid~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out_valid~reg0_q\,
	devoe => ww_devoe,
	o => \out_valid~output_o\);

-- Location: IOOBUF_X0_Y19_N16
\out_sop~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out_sop~reg0_q\,
	devoe => ww_devoe,
	o => \out_sop~output_o\);

-- Location: IOOBUF_X0_Y7_N2
\out_eop~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out_eop~reg0_q\,
	devoe => ww_devoe,
	o => \out_eop~output_o\);

-- Location: IOOBUF_X34_Y19_N16
\state[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_WideOr20~combout\,
	devoe => ww_devoe,
	o => \state[0]~output_o\);

-- Location: IOOBUF_X11_Y24_N16
\state[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_state~0_combout\,
	devoe => ww_devoe,
	o => \state[1]~output_o\);

-- Location: IOOBUF_X7_Y0_N2
\state[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_state~1_combout\,
	devoe => ww_devoe,
	o => \state[2]~output_o\);

-- Location: IOOBUF_X0_Y21_N9
\error_internal~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \error~q\,
	devoe => ww_devoe,
	o => \error_internal~output_o\);

-- Location: IOIBUF_X0_Y11_N8
\clock~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock,
	o => \clock~input_o\);

-- Location: CLKCTRL_G2
\clock~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clock~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clock~inputclkctrl_outclk\);

-- Location: IOIBUF_X5_Y24_N15
\in_data[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_data(2),
	o => \in_data[2]~input_o\);

-- Location: IOIBUF_X13_Y24_N22
\in_data[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_data(4),
	o => \in_data[4]~input_o\);

-- Location: IOIBUF_X7_Y24_N15
\in_data[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_data(0),
	o => \in_data[0]~input_o\);

-- Location: IOIBUF_X9_Y24_N22
\in_data[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_data(5),
	o => \in_data[5]~input_o\);

-- Location: IOIBUF_X9_Y24_N8
\in_data[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_data(6),
	o => \in_data[6]~input_o\);

-- Location: IOIBUF_X0_Y18_N15
\in_data[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_data(7),
	o => \in_data[7]~input_o\);

-- Location: LCCOMB_X6_Y20_N2
\Mux0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~18_combout\ = (!\in_data[5]~input_o\ & (!\in_data[6]~input_o\ & !\in_data[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_data[5]~input_o\,
	datab => \in_data[6]~input_o\,
	datad => \in_data[7]~input_o\,
	combout => \Mux0~18_combout\);

-- Location: IOIBUF_X7_Y24_N1
\in_data[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_data(3),
	o => \in_data[3]~input_o\);

-- Location: LCCOMB_X6_Y20_N22
\Equal31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal31~0_combout\ = (!\in_data[4]~input_o\ & (!\in_data[0]~input_o\ & (\Mux0~18_combout\ & !\in_data[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_data[4]~input_o\,
	datab => \in_data[0]~input_o\,
	datac => \Mux0~18_combout\,
	datad => \in_data[3]~input_o\,
	combout => \Equal31~0_combout\);

-- Location: IOIBUF_X0_Y10_N15
\in_sop~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_sop,
	o => \in_sop~input_o\);

-- Location: IOIBUF_X11_Y24_N22
\in_valid~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_valid,
	o => \in_valid~input_o\);

-- Location: IOIBUF_X7_Y0_N15
\in_eop~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_eop,
	o => \in_eop~input_o\);

-- Location: LCCOMB_X10_Y19_N14
\Selector72~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector72~1_combout\ = (\in_eop~input_o\ & \in_valid~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \in_eop~input_o\,
	datad => \in_valid~input_o\,
	combout => \Selector72~1_combout\);

-- Location: IOIBUF_X9_Y24_N15
\in_data[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_data(1),
	o => \in_data[1]~input_o\);

-- Location: LCCOMB_X11_Y19_N28
\Selector15~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector15~2_combout\ = (\Selector17~4_combout\) # ((byte_counter(0) & ((\current_state.WAITING_FOR_REPLY~q\) # (\current_state.DONE_STATE~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.WAITING_FOR_REPLY~q\,
	datab => \Selector17~4_combout\,
	datac => byte_counter(0),
	datad => \current_state.DONE_STATE~q\,
	combout => \Selector15~2_combout\);

-- Location: IOIBUF_X5_Y0_N15
\resolve~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_resolve,
	o => \resolve~input_o\);

-- Location: LCCOMB_X5_Y19_N10
\Selector18~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector18~2_combout\ = (\resolve~input_o\ & !\current_state.IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \resolve~input_o\,
	datad => \current_state.IDLE~q\,
	combout => \Selector18~2_combout\);

-- Location: LCCOMB_X10_Y19_N18
\Selector69~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector69~7_combout\ = (!\current_state.DONE_STATE~q\ & (!\Selector17~4_combout\ & (!\Selector69~4_combout\ & !\Selector69~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.DONE_STATE~q\,
	datab => \Selector17~4_combout\,
	datac => \Selector69~4_combout\,
	datad => \Selector69~6_combout\,
	combout => \Selector69~7_combout\);

-- Location: LCCOMB_X10_Y19_N28
\Selector69~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector69~8_combout\ = (!\Selector72~3_combout\ & (\Selector69~7_combout\ & ((\Selector18~2_combout\) # (\current_state.ARP_REQUEST~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector18~2_combout\,
	datab => \Selector72~3_combout\,
	datac => \current_state.ARP_REQUEST~q\,
	datad => \Selector69~7_combout\,
	combout => \Selector69~8_combout\);

-- Location: IOIBUF_X0_Y11_N15
\reset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: CLKCTRL_G4
\reset~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \reset~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \reset~inputclkctrl_outclk\);

-- Location: FF_X10_Y19_N29
\current_state.ARP_REQUEST\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector69~8_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.ARP_REQUEST~q\);

-- Location: LCCOMB_X9_Y19_N0
\Selector16~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector16~1_combout\ = (!\last_byte_sent~q\ & \current_state.ARP_REQUEST~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \last_byte_sent~q\,
	datad => \current_state.ARP_REQUEST~q\,
	combout => \Selector16~1_combout\);

-- Location: IOIBUF_X1_Y0_N22
\out_ready~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_out_ready,
	o => \out_ready~input_o\);

-- Location: LCCOMB_X7_Y18_N0
\Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = byte_counter(0) $ (VCC)
-- \Add0~1\ = CARRY(byte_counter(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => byte_counter(0),
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: LCCOMB_X8_Y19_N30
\Selector15~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector15~3_combout\ = (\Equal30~0_combout\ & (byte_counter(0))) # (!\Equal30~0_combout\ & ((\out_ready~input_o\ & ((\Add0~0_combout\))) # (!\out_ready~input_o\ & (byte_counter(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal30~0_combout\,
	datab => byte_counter(0),
	datac => \out_ready~input_o\,
	datad => \Add0~0_combout\,
	combout => \Selector15~3_combout\);

-- Location: LCCOMB_X9_Y19_N6
\Selector17~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector17~5_combout\ = (\current_state.RECEIVING_REPLY~q\) # (\current_state.IGNORE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \current_state.RECEIVING_REPLY~q\,
	datad => \current_state.IGNORE~q\,
	combout => \Selector17~5_combout\);

-- Location: LCCOMB_X8_Y19_N6
\Selector15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector15~0_combout\ = (\in_valid~input_o\ & (!\in_eop~input_o\ & ((\Add0~0_combout\)))) # (!\in_valid~input_o\ & (((byte_counter(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_eop~input_o\,
	datab => byte_counter(0),
	datac => \in_valid~input_o\,
	datad => \Add0~0_combout\,
	combout => \Selector15~0_combout\);

-- Location: LCCOMB_X8_Y19_N16
\Selector15~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector15~1_combout\ = (\Selector17~5_combout\ & ((\Selector15~0_combout\) # ((\out_ready~input_o\ & \Selector18~2_combout\)))) # (!\Selector17~5_combout\ & (\out_ready~input_o\ & (\Selector18~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector17~5_combout\,
	datab => \out_ready~input_o\,
	datac => \Selector18~2_combout\,
	datad => \Selector15~0_combout\,
	combout => \Selector15~1_combout\);

-- Location: LCCOMB_X8_Y19_N0
\Selector15~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector15~4_combout\ = (\Selector15~2_combout\) # ((\Selector15~1_combout\) # ((\Selector16~1_combout\ & \Selector15~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector15~2_combout\,
	datab => \Selector16~1_combout\,
	datac => \Selector15~3_combout\,
	datad => \Selector15~1_combout\,
	combout => \Selector15~4_combout\);

-- Location: FF_X8_Y19_N1
\byte_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector15~4_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => byte_counter(0));

-- Location: LCCOMB_X7_Y18_N2
\Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (byte_counter(1) & (!\Add0~1\)) # (!byte_counter(1) & ((\Add0~1\) # (GND)))
-- \Add0~3\ = CARRY((!\Add0~1\) # (!byte_counter(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => byte_counter(1),
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: LCCOMB_X7_Y18_N4
\Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (byte_counter(2) & (\Add0~3\ $ (GND))) # (!byte_counter(2) & (!\Add0~3\ & VCC))
-- \Add0~5\ = CARRY((byte_counter(2) & !\Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => byte_counter(2),
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: LCCOMB_X7_Y19_N30
\Selector13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector13~0_combout\ = (!\byte_counter[1]~1_combout\ & \Add0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \byte_counter[1]~1_combout\,
	datad => \Add0~4_combout\,
	combout => \Selector13~0_combout\);

-- Location: LCCOMB_X10_Y19_N2
\byte_counter[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \byte_counter[1]~2_combout\ = (!\in_valid~input_o\ & ((\current_state.RECEIVING_REPLY~q\) # ((\current_state.WAITING_FOR_REPLY~q\) # (\current_state.IGNORE~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.RECEIVING_REPLY~q\,
	datab => \in_valid~input_o\,
	datac => \current_state.WAITING_FOR_REPLY~q\,
	datad => \current_state.IGNORE~q\,
	combout => \byte_counter[1]~2_combout\);

-- Location: LCCOMB_X9_Y19_N26
\byte_counter[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \byte_counter[1]~3_combout\ = (\byte_counter[1]~2_combout\) # ((\current_state.DONE_STATE~q\) # ((!\in_sop~input_o\ & \current_state.WAITING_FOR_REPLY~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \byte_counter[1]~2_combout\,
	datab => \in_sop~input_o\,
	datac => \current_state.WAITING_FOR_REPLY~q\,
	datad => \current_state.DONE_STATE~q\,
	combout => \byte_counter[1]~3_combout\);

-- Location: LCCOMB_X8_Y19_N12
\byte_counter[1]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \byte_counter[1]~4_combout\ = (!\byte_counter[1]~3_combout\ & (((!\Equal30~0_combout\ & \out_ready~input_o\)) # (!\Selector16~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal30~0_combout\,
	datab => \Selector16~1_combout\,
	datac => \out_ready~input_o\,
	datad => \byte_counter[1]~3_combout\,
	combout => \byte_counter[1]~4_combout\);

-- Location: FF_X7_Y19_N31
\byte_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector13~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \byte_counter[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => byte_counter(2));

-- Location: LCCOMB_X7_Y18_N6
\Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (byte_counter(3) & (!\Add0~5\)) # (!byte_counter(3) & ((\Add0~5\) # (GND)))
-- \Add0~7\ = CARRY((!\Add0~5\) # (!byte_counter(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => byte_counter(3),
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X7_Y19_N28
\Selector12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector12~0_combout\ = (!\byte_counter[1]~1_combout\ & \Add0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \byte_counter[1]~1_combout\,
	datad => \Add0~6_combout\,
	combout => \Selector12~0_combout\);

-- Location: FF_X7_Y19_N29
\byte_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector12~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \byte_counter[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => byte_counter(3));

-- Location: LCCOMB_X6_Y19_N4
\Equal3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal3~0_combout\ = (!byte_counter(2) & byte_counter(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_counter(2),
	datad => byte_counter(3),
	combout => \Equal3~0_combout\);

-- Location: LCCOMB_X7_Y18_N8
\Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = (byte_counter(4) & (\Add0~7\ $ (GND))) # (!byte_counter(4) & (!\Add0~7\ & VCC))
-- \Add0~9\ = CARRY((byte_counter(4) & !\Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => byte_counter(4),
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: LCCOMB_X8_Y19_N22
\Selector11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector11~0_combout\ = (!\byte_counter[1]~1_combout\ & \Add0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \byte_counter[1]~1_combout\,
	datad => \Add0~8_combout\,
	combout => \Selector11~0_combout\);

-- Location: FF_X8_Y19_N23
\byte_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector11~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \byte_counter[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => byte_counter(4));

-- Location: LCCOMB_X7_Y18_N10
\Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (byte_counter(5) & (!\Add0~9\)) # (!byte_counter(5) & ((\Add0~9\) # (GND)))
-- \Add0~11\ = CARRY((!\Add0~9\) # (!byte_counter(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => byte_counter(5),
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: LCCOMB_X7_Y19_N16
\Selector10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector10~0_combout\ = (!\byte_counter[1]~1_combout\ & \Add0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \byte_counter[1]~1_combout\,
	datad => \Add0~10_combout\,
	combout => \Selector10~0_combout\);

-- Location: FF_X7_Y19_N17
\byte_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector10~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \byte_counter[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => byte_counter(5));

-- Location: LCCOMB_X7_Y18_N12
\Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = (byte_counter(6) & (\Add0~11\ $ (GND))) # (!byte_counter(6) & (!\Add0~11\ & VCC))
-- \Add0~13\ = CARRY((byte_counter(6) & !\Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => byte_counter(6),
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: LCCOMB_X7_Y19_N8
\Selector9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector9~0_combout\ = (!\byte_counter[1]~1_combout\ & \Add0~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \byte_counter[1]~1_combout\,
	datad => \Add0~12_combout\,
	combout => \Selector9~0_combout\);

-- Location: FF_X7_Y19_N9
\byte_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector9~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \byte_counter[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => byte_counter(6));

-- Location: LCCOMB_X7_Y18_N14
\Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = \Add0~13\ $ (byte_counter(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => byte_counter(7),
	cin => \Add0~13\,
	combout => \Add0~14_combout\);

-- Location: LCCOMB_X7_Y19_N22
\Selector8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector8~0_combout\ = (\Add0~14_combout\ & !\byte_counter[1]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~14_combout\,
	datad => \byte_counter[1]~1_combout\,
	combout => \Selector8~0_combout\);

-- Location: FF_X7_Y19_N23
\byte_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector8~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \byte_counter[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => byte_counter(7));

-- Location: LCCOMB_X7_Y19_N6
\Equal27~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal27~0_combout\ = (!byte_counter(7) & (byte_counter(5) & (!byte_counter(6) & !byte_counter(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_counter(7),
	datab => byte_counter(5),
	datac => byte_counter(6),
	datad => byte_counter(4),
	combout => \Equal27~0_combout\);

-- Location: LCCOMB_X6_Y19_N18
\Equal30~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal30~0_combout\ = (!byte_counter(1) & (byte_counter(0) & (\Equal3~0_combout\ & \Equal27~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_counter(1),
	datab => byte_counter(0),
	datac => \Equal3~0_combout\,
	datad => \Equal27~0_combout\,
	combout => \Equal30~0_combout\);

-- Location: LCCOMB_X8_Y19_N4
\last_byte_sent~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \last_byte_sent~0_combout\ = (\Equal30~0_combout\ & \out_ready~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal30~0_combout\,
	datac => \out_ready~input_o\,
	combout => \last_byte_sent~0_combout\);

-- Location: FF_X8_Y19_N5
last_byte_sent : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \last_byte_sent~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \ALT_INV_current_state.ARP_REQUEST~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \last_byte_sent~q\);

-- Location: LCCOMB_X9_Y19_N18
\Selector69~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector69~4_combout\ = (\last_byte_sent~q\ & \current_state.ARP_REQUEST~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \last_byte_sent~q\,
	datad => \current_state.ARP_REQUEST~q\,
	combout => \Selector69~4_combout\);

-- Location: LCCOMB_X11_Y19_N12
\byte_counter[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \byte_counter[1]~0_combout\ = (\in_eop~input_o\ & ((\current_state.IGNORE~q\) # (\current_state.RECEIVING_REPLY~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_eop~input_o\,
	datac => \current_state.IGNORE~q\,
	datad => \current_state.RECEIVING_REPLY~q\,
	combout => \byte_counter[1]~0_combout\);

-- Location: LCCOMB_X11_Y19_N2
\byte_counter[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \byte_counter[1]~1_combout\ = (\current_state.WAITING_FOR_REPLY~q\) # ((\Selector69~4_combout\) # ((\byte_counter[1]~0_combout\) # (!\current_state.IDLE~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.WAITING_FOR_REPLY~q\,
	datab => \Selector69~4_combout\,
	datac => \current_state.IDLE~q\,
	datad => \byte_counter[1]~0_combout\,
	combout => \byte_counter[1]~1_combout\);

-- Location: LCCOMB_X7_Y19_N4
\Selector14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector14~0_combout\ = (!\byte_counter[1]~1_combout\ & \Add0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \byte_counter[1]~1_combout\,
	datad => \Add0~2_combout\,
	combout => \Selector14~0_combout\);

-- Location: FF_X7_Y19_N5
\byte_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector14~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \byte_counter[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => byte_counter(1));

-- Location: LCCOMB_X7_Y19_N24
\Equal2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~2_combout\ = (!byte_counter(7) & (!byte_counter(6) & !byte_counter(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_counter(7),
	datac => byte_counter(6),
	datad => byte_counter(5),
	combout => \Equal2~2_combout\);

-- Location: LCCOMB_X6_Y19_N12
\Equal24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal24~0_combout\ = (byte_counter(4) & (byte_counter(0) & \Equal2~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_counter(4),
	datac => byte_counter(0),
	datad => \Equal2~2_combout\,
	combout => \Equal24~0_combout\);

-- Location: LCCOMB_X6_Y19_N2
\Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (!byte_counter(1) & (!byte_counter(3) & (byte_counter(2) & \Equal24~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_counter(1),
	datab => byte_counter(3),
	datac => byte_counter(2),
	datad => \Equal24~0_combout\,
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X6_Y19_N10
\Selector69~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector69~5_combout\ = (\Mux1~0_combout\ & (((\in_data[2]~input_o\) # (!\in_data[1]~input_o\)) # (!\Equal31~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal31~0_combout\,
	datab => \in_data[2]~input_o\,
	datac => \in_data[1]~input_o\,
	datad => \Mux1~0_combout\,
	combout => \Selector69~5_combout\);

-- Location: LCCOMB_X6_Y19_N28
\Selector69~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector69~6_combout\ = (\Selector19~0_combout\ & ((\in_eop~input_o\) # ((\error~q\) # (\Selector69~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_eop~input_o\,
	datab => \Selector19~0_combout\,
	datac => \error~q\,
	datad => \Selector69~5_combout\,
	combout => \Selector69~6_combout\);

-- Location: LCCOMB_X10_Y19_N16
\Selector73~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector73~0_combout\ = (\current_state.IGNORE~q\ & (!\Selector72~3_combout\ & (!\Selector18~2_combout\ & \Selector69~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.IGNORE~q\,
	datab => \Selector72~3_combout\,
	datac => \Selector18~2_combout\,
	datad => \Selector69~7_combout\,
	combout => \Selector73~0_combout\);

-- Location: LCCOMB_X10_Y19_N6
\Selector73~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector73~1_combout\ = (\Selector73~0_combout\) # ((!\in_eop~input_o\ & (\Selector69~6_combout\ & !\Selector69~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_eop~input_o\,
	datab => \Selector69~6_combout\,
	datac => \Selector69~10_combout\,
	datad => \Selector73~0_combout\,
	combout => \Selector73~1_combout\);

-- Location: FF_X10_Y19_N7
\current_state.IGNORE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector73~1_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.IGNORE~q\);

-- Location: LCCOMB_X10_Y19_N0
\Selector72~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector72~3_combout\ = (\current_state.IGNORE~q\ & (\in_eop~input_o\ & \in_valid~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.IGNORE~q\,
	datac => \in_eop~input_o\,
	datad => \in_valid~input_o\,
	combout => \Selector72~3_combout\);

-- Location: LCCOMB_X10_Y19_N20
\Selector69~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector69~9_combout\ = (\Selector72~3_combout\) # (((!\current_state.IDLE~q\ & \resolve~input_o\)) # (!\Selector69~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.IDLE~q\,
	datab => \Selector72~3_combout\,
	datac => \resolve~input_o\,
	datad => \Selector69~7_combout\,
	combout => \Selector69~9_combout\);

-- Location: LCCOMB_X10_Y19_N12
\Selector71~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector71~0_combout\ = (\Selector69~10_combout\ & (((\current_state.RECEIVING_REPLY~q\ & !\Selector69~9_combout\)))) # (!\Selector69~10_combout\ & ((\Selector17~4_combout\) # ((\current_state.RECEIVING_REPLY~q\ & !\Selector69~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector69~10_combout\,
	datab => \Selector17~4_combout\,
	datac => \current_state.RECEIVING_REPLY~q\,
	datad => \Selector69~9_combout\,
	combout => \Selector71~0_combout\);

-- Location: FF_X10_Y19_N13
\current_state.RECEIVING_REPLY\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector71~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.RECEIVING_REPLY~q\);

-- Location: LCCOMB_X11_Y19_N20
\Selector19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector19~0_combout\ = (\in_valid~input_o\ & \current_state.RECEIVING_REPLY~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_valid~input_o\,
	datad => \current_state.RECEIVING_REPLY~q\,
	combout => \Selector19~0_combout\);

-- Location: LCCOMB_X11_Y19_N18
\Selector72~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector72~2_combout\ = (\Selector19~0_combout\ & (!\current_state.IGNORE~q\ & (!\current_state.DONE_STATE~q\ & \Selector72~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector19~0_combout\,
	datab => \current_state.IGNORE~q\,
	datac => \current_state.DONE_STATE~q\,
	datad => \Selector72~0_combout\,
	combout => \Selector72~2_combout\);

-- Location: FF_X11_Y19_N19
\current_state.DONE_STATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector72~2_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.DONE_STATE~q\);

-- Location: LCCOMB_X11_Y19_N26
\Selector68~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector68~4_combout\ = (\current_state.IGNORE~q\) # ((\current_state.RECEIVING_REPLY~q\ & \error~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.RECEIVING_REPLY~q\,
	datab => \current_state.IGNORE~q\,
	datad => \error~q\,
	combout => \Selector68~4_combout\);

-- Location: LCCOMB_X10_Y19_N4
\Selector68~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector68~0_combout\ = ((!\in_eop~input_o\ & !\error~q\)) # (!\current_state.RECEIVING_REPLY~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_eop~input_o\,
	datac => \error~q\,
	datad => \current_state.RECEIVING_REPLY~q\,
	combout => \Selector68~0_combout\);

-- Location: LCCOMB_X10_Y19_N10
\Selector68~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector68~1_combout\ = (\Selector68~0_combout\ & ((\current_state.IGNORE~q\) # ((\current_state.IDLE~q\) # (!\resolve~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.IGNORE~q\,
	datab => \resolve~input_o\,
	datac => \Selector68~0_combout\,
	datad => \current_state.IDLE~q\,
	combout => \Selector68~1_combout\);

-- Location: LCCOMB_X11_Y19_N6
\Selector68~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector68~2_combout\ = ((!\error~q\ & (!\in_eop~input_o\ & !\Mux1~0_combout\))) # (!\in_valid~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_valid~input_o\,
	datab => \error~q\,
	datac => \in_eop~input_o\,
	datad => \Mux1~0_combout\,
	combout => \Selector68~2_combout\);

-- Location: LCCOMB_X11_Y19_N16
\Selector68~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector68~3_combout\ = (!\current_state.IDLE~q\ & ((\Selector68~1_combout\) # ((\current_state.RECEIVING_REPLY~q\ & \Selector68~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector68~1_combout\,
	datab => \current_state.RECEIVING_REPLY~q\,
	datac => \current_state.IDLE~q\,
	datad => \Selector68~2_combout\,
	combout => \Selector68~3_combout\);

-- Location: LCCOMB_X11_Y19_N4
\Selector68~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector68~5_combout\ = (!\current_state.DONE_STATE~q\ & (!\Selector68~3_combout\ & ((!\Selector68~4_combout\) # (!\Selector72~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector72~1_combout\,
	datab => \current_state.DONE_STATE~q\,
	datac => \Selector68~4_combout\,
	datad => \Selector68~3_combout\,
	combout => \Selector68~5_combout\);

-- Location: FF_X11_Y19_N5
\current_state.IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector68~5_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.IDLE~q\);

-- Location: LCCOMB_X10_Y19_N22
\Selector69~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector69~10_combout\ = (\Selector72~3_combout\) # ((\Selector69~7_combout\ & ((\current_state.IDLE~q\) # (!\resolve~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.IDLE~q\,
	datab => \Selector72~3_combout\,
	datac => \resolve~input_o\,
	datad => \Selector69~7_combout\,
	combout => \Selector69~10_combout\);

-- Location: LCCOMB_X10_Y19_N26
\Selector70~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector70~0_combout\ = (\Selector69~10_combout\ & (((\current_state.WAITING_FOR_REPLY~q\ & !\Selector69~9_combout\)))) # (!\Selector69~10_combout\ & ((\Selector69~4_combout\) # ((\current_state.WAITING_FOR_REPLY~q\ & !\Selector69~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector69~10_combout\,
	datab => \Selector69~4_combout\,
	datac => \current_state.WAITING_FOR_REPLY~q\,
	datad => \Selector69~9_combout\,
	combout => \Selector70~0_combout\);

-- Location: FF_X10_Y19_N27
\current_state.WAITING_FOR_REPLY\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector70~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.WAITING_FOR_REPLY~q\);

-- Location: LCCOMB_X10_Y19_N24
\Selector17~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector17~4_combout\ = (\in_sop~input_o\ & (\in_valid~input_o\ & \current_state.WAITING_FOR_REPLY~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_sop~input_o\,
	datab => \in_valid~input_o\,
	datac => \current_state.WAITING_FOR_REPLY~q\,
	combout => \Selector17~4_combout\);

-- Location: LCCOMB_X10_Y20_N12
\Selector19~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector19~1_combout\ = (\Selector17~4_combout\ & ((\in_data[2]~input_o\) # ((\in_data[1]~input_o\) # (!\Equal31~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_data[2]~input_o\,
	datab => \Equal31~0_combout\,
	datac => \Selector17~4_combout\,
	datad => \in_data[1]~input_o\,
	combout => \Selector19~1_combout\);

-- Location: LCCOMB_X9_Y19_N2
\Selector19~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector19~4_combout\ = (\in_valid~input_o\ & (\current_state.RECEIVING_REPLY~q\ & (!byte_counter(7) & !byte_counter(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_valid~input_o\,
	datab => \current_state.RECEIVING_REPLY~q\,
	datac => byte_counter(7),
	datad => byte_counter(6),
	combout => \Selector19~4_combout\);

-- Location: LCCOMB_X10_Y20_N18
\Selector19~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector19~2_combout\ = (\current_state.RECEIVING_REPLY~q\ & (((byte_counter(6)) # (byte_counter(7))) # (!\in_valid~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_valid~input_o\,
	datab => byte_counter(6),
	datac => byte_counter(7),
	datad => \current_state.RECEIVING_REPLY~q\,
	combout => \Selector19~2_combout\);

-- Location: LCCOMB_X10_Y20_N0
\Selector19~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector19~3_combout\ = (\error~q\ & ((\current_state.DONE_STATE~q\) # ((\current_state.ARP_REQUEST~q\) # (\Selector19~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.DONE_STATE~q\,
	datab => \current_state.ARP_REQUEST~q\,
	datac => \error~q\,
	datad => \Selector19~2_combout\,
	combout => \Selector19~3_combout\);

-- Location: LCCOMB_X6_Y20_N14
\Mux0~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~35_combout\ = (\in_data[1]~input_o\ & (\in_data[3]~input_o\ & (!\in_data[2]~input_o\ & byte_counter(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_data[1]~input_o\,
	datab => \in_data[3]~input_o\,
	datac => \in_data[2]~input_o\,
	datad => byte_counter(0),
	combout => \Mux0~35_combout\);

-- Location: LCCOMB_X6_Y20_N6
\Equal37~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal37~0_combout\ = (!\in_data[0]~input_o\ & (\Mux0~18_combout\ & !\in_data[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_data[0]~input_o\,
	datab => \Mux0~18_combout\,
	datad => \in_data[4]~input_o\,
	combout => \Equal37~0_combout\);

-- Location: LCCOMB_X7_Y20_N12
\Mux0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~36_combout\ = (\in_data[2]~input_o\) # ((\in_data[4]~input_o\) # ((\in_data[1]~input_o\) # (byte_counter(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_data[2]~input_o\,
	datab => \in_data[4]~input_o\,
	datac => \in_data[1]~input_o\,
	datad => byte_counter(0),
	combout => \Mux0~36_combout\);

-- Location: LCCOMB_X7_Y20_N18
\Mux0~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~37_combout\ = (\Mux0~18_combout\ & (!\in_data[3]~input_o\ & (\in_data[0]~input_o\ & !\Mux0~36_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~18_combout\,
	datab => \in_data[3]~input_o\,
	datac => \in_data[0]~input_o\,
	datad => \Mux0~36_combout\,
	combout => \Mux0~37_combout\);

-- Location: LCCOMB_X7_Y20_N8
\Mux0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~38_combout\ = (byte_counter(2)) # ((byte_counter(1)) # ((byte_counter(4)) # (\Mux0~37_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_counter(2),
	datab => byte_counter(1),
	datac => byte_counter(4),
	datad => \Mux0~37_combout\,
	combout => \Mux0~38_combout\);

-- Location: LCCOMB_X7_Y20_N14
\Mux0~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~39_combout\ = (\error~q\) # ((!\Mux0~38_combout\ & ((!\Equal37~0_combout\) # (!\Mux0~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~35_combout\,
	datab => \Equal37~0_combout\,
	datac => \Mux0~38_combout\,
	datad => \error~q\,
	combout => \Mux0~39_combout\);

-- Location: LCCOMB_X10_Y20_N26
\Equal47~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal47~0_combout\ = (!\in_data[1]~input_o\ & (!\in_data[4]~input_o\ & !\in_data[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_data[1]~input_o\,
	datab => \in_data[4]~input_o\,
	datad => \in_data[2]~input_o\,
	combout => \Equal47~0_combout\);

-- Location: LCCOMB_X9_Y20_N14
\Mux0~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~19_combout\ = (\in_data[3]~input_o\ & (((\in_data[6]~input_o\) # (!\in_data[5]~input_o\)) # (!byte_counter(0)))) # (!\in_data[3]~input_o\ & ((byte_counter(0)) # ((\in_data[5]~input_o\) # (!\in_data[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_data[3]~input_o\,
	datab => byte_counter(0),
	datac => \in_data[6]~input_o\,
	datad => \in_data[5]~input_o\,
	combout => \Mux0~19_combout\);

-- Location: LCCOMB_X9_Y20_N0
\Mux0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~20_combout\ = (\in_data[0]~input_o\) # (((\Mux0~19_combout\) # (!\in_data[7]~input_o\)) # (!\Equal47~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_data[0]~input_o\,
	datab => \Equal47~0_combout\,
	datac => \Mux0~19_combout\,
	datad => \in_data[7]~input_o\,
	combout => \Mux0~20_combout\);

-- Location: LCCOMB_X7_Y19_N14
\Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~0_combout\ = (byte_counter(1) & byte_counter(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => byte_counter(1),
	datad => byte_counter(2),
	combout => \Equal2~0_combout\);

-- Location: LCCOMB_X9_Y20_N10
\Mux0~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~21_combout\ = (\error~q\) # ((!byte_counter(4) & (\Mux0~20_combout\ & \Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_counter(4),
	datab => \Mux0~20_combout\,
	datac => \error~q\,
	datad => \Equal2~0_combout\,
	combout => \Mux0~21_combout\);

-- Location: LCCOMB_X8_Y19_N18
\Mux0~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~43_combout\ = (\in_data[4]~input_o\ & (((byte_counter(4)) # (!byte_counter(0))) # (!\in_data[3]~input_o\))) # (!\in_data[4]~input_o\ & ((\in_data[3]~input_o\ & ((byte_counter(0)) # (!byte_counter(4)))) # (!\in_data[3]~input_o\ & (byte_counter(4) $ 
-- (byte_counter(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011110111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_data[4]~input_o\,
	datab => \in_data[3]~input_o\,
	datac => byte_counter(4),
	datad => byte_counter(0),
	combout => \Mux0~43_combout\);

-- Location: LCCOMB_X8_Y20_N26
\Mux0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~44_combout\ = (\Mux0~43_combout\) # ((\in_data[1]~input_o\ & ((!\in_data[4]~input_o\))) # (!\in_data[1]~input_o\ & (byte_counter(0) & \in_data[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_data[1]~input_o\,
	datab => byte_counter(0),
	datac => \in_data[4]~input_o\,
	datad => \Mux0~43_combout\,
	combout => \Mux0~44_combout\);

-- Location: LCCOMB_X8_Y20_N16
\Mux0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~3_combout\ = (\in_data[2]~input_o\) # ((\in_data[7]~input_o\) # ((\Mux0~44_combout\) # (\in_data[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_data[2]~input_o\,
	datab => \in_data[7]~input_o\,
	datac => \Mux0~44_combout\,
	datad => \in_data[0]~input_o\,
	combout => \Mux0~3_combout\);

-- Location: LCCOMB_X8_Y20_N30
\Mux0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~42_combout\ = (\in_data[6]~input_o\) # ((\error~q\) # ((\in_data[5]~input_o\) # (\Mux0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_data[6]~input_o\,
	datab => \error~q\,
	datac => \in_data[5]~input_o\,
	datad => \Mux0~3_combout\,
	combout => \Mux0~42_combout\);

-- Location: LCCOMB_X7_Y20_N0
\error~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \error~34_combout\ = (\in_data[2]~input_o\ & (\Equal31~0_combout\ & !\error~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_data[2]~input_o\,
	datab => \Equal31~0_combout\,
	datad => \error~q\,
	combout => \error~34_combout\);

-- Location: LCCOMB_X9_Y20_N8
\error~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \error~27_combout\ = (\in_data[3]~input_o\ & (!\in_data[7]~input_o\ & !\in_data[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_data[3]~input_o\,
	datab => \in_data[7]~input_o\,
	datad => \in_data[0]~input_o\,
	combout => \error~27_combout\);

-- Location: LCCOMB_X9_Y20_N28
\error~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \error~28_combout\ = (\in_data[2]~input_o\ & (\in_data[4]~input_o\ & (!\error~q\ & \error~27_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_data[2]~input_o\,
	datab => \in_data[4]~input_o\,
	datac => \error~q\,
	datad => \error~27_combout\,
	combout => \error~28_combout\);

-- Location: LCCOMB_X9_Y20_N30
\error~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \error~35_combout\ = ((\in_data[1]~input_o\) # ((\in_data[6]~input_o\) # (!\error~28_combout\))) # (!\in_data[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_data[5]~input_o\,
	datab => \in_data[1]~input_o\,
	datac => \in_data[6]~input_o\,
	datad => \error~28_combout\,
	combout => \error~35_combout\);

-- Location: LCCOMB_X9_Y19_N4
\error~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \error~36_combout\ = ((\in_data[6]~input_o\) # ((\in_data[2]~input_o\) # (!\in_data[1]~input_o\))) # (!\in_data[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_data[5]~input_o\,
	datab => \in_data[6]~input_o\,
	datac => \in_data[2]~input_o\,
	datad => \in_data[1]~input_o\,
	combout => \error~36_combout\);

-- Location: LCCOMB_X9_Y20_N24
\error~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \error~31_combout\ = (\in_data[3]~input_o\ & (!\in_data[7]~input_o\ & !\error~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_data[3]~input_o\,
	datab => \in_data[7]~input_o\,
	datac => \error~q\,
	combout => \error~31_combout\);

-- Location: LCCOMB_X9_Y20_N16
\error~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \error~37_combout\ = ((\in_data[4]~input_o\) # ((\error~36_combout\) # (!\error~31_combout\))) # (!\in_data[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_data[0]~input_o\,
	datab => \in_data[4]~input_o\,
	datac => \error~36_combout\,
	datad => \error~31_combout\,
	combout => \error~37_combout\);

-- Location: LCCOMB_X9_Y20_N2
\Mux0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~30_combout\ = (byte_counter(4) & (byte_counter(0))) # (!byte_counter(4) & ((byte_counter(0) & (\error~35_combout\)) # (!byte_counter(0) & ((\error~37_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_counter(4),
	datab => byte_counter(0),
	datac => \error~35_combout\,
	datad => \error~37_combout\,
	combout => \Mux0~30_combout\);

-- Location: LCCOMB_X8_Y20_N28
\Mux0~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~31_combout\ = (byte_counter(4) & ((\in_data[1]~input_o\ $ (!\Mux0~30_combout\)) # (!\error~34_combout\))) # (!byte_counter(4) & (((\Mux0~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_data[1]~input_o\,
	datab => byte_counter(4),
	datac => \error~34_combout\,
	datad => \Mux0~30_combout\,
	combout => \Mux0~31_combout\);

-- Location: LCCOMB_X8_Y20_N22
\Mux0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~32_combout\ = (byte_counter(2) & (byte_counter(1))) # (!byte_counter(2) & ((byte_counter(1) & ((\Mux0~31_combout\))) # (!byte_counter(1) & (\Mux0~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_counter(2),
	datab => byte_counter(1),
	datac => \Mux0~42_combout\,
	datad => \Mux0~31_combout\,
	combout => \Mux0~32_combout\);

-- Location: LCCOMB_X9_Y20_N20
\error~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \error~0_combout\ = ((\in_data[1]~input_o\) # ((\error~q\) # (\in_data[2]~input_o\))) # (!\Equal31~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal31~0_combout\,
	datab => \in_data[1]~input_o\,
	datac => \error~q\,
	datad => \in_data[2]~input_o\,
	combout => \error~0_combout\);

-- Location: LCCOMB_X9_Y20_N26
\error~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \error~33_combout\ = (\in_data[2]~input_o\) # ((\error~q\) # ((!\in_data[1]~input_o\) # (!\Equal31~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_data[2]~input_o\,
	datab => \error~q\,
	datac => \Equal31~0_combout\,
	datad => \in_data[1]~input_o\,
	combout => \error~33_combout\);

-- Location: LCCOMB_X9_Y20_N22
\error~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \error~29_combout\ = (\in_data[5]~input_o\) # (((!\error~28_combout\) # (!\in_data[6]~input_o\)) # (!\in_data[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_data[5]~input_o\,
	datab => \in_data[1]~input_o\,
	datac => \in_data[6]~input_o\,
	datad => \error~28_combout\,
	combout => \error~29_combout\);

-- Location: LCCOMB_X10_Y20_N2
\error~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \error~30_combout\ = (\in_data[1]~input_o\) # (((\in_data[5]~input_o\) # (!\in_data[2]~input_o\)) # (!\in_data[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_data[1]~input_o\,
	datab => \in_data[6]~input_o\,
	datac => \in_data[5]~input_o\,
	datad => \in_data[2]~input_o\,
	combout => \error~30_combout\);

-- Location: LCCOMB_X9_Y20_N6
\error~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \error~32_combout\ = (\error~30_combout\) # ((\in_data[4]~input_o\) # ((!\error~31_combout\) # (!\in_data[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \error~30_combout\,
	datab => \in_data[4]~input_o\,
	datac => \in_data[0]~input_o\,
	datad => \error~31_combout\,
	combout => \error~32_combout\);

-- Location: LCCOMB_X9_Y20_N12
\Mux0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~28_combout\ = (byte_counter(4) & (byte_counter(0))) # (!byte_counter(4) & ((byte_counter(0) & (\error~29_combout\)) # (!byte_counter(0) & ((\error~32_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_counter(4),
	datab => byte_counter(0),
	datac => \error~29_combout\,
	datad => \error~32_combout\,
	combout => \Mux0~28_combout\);

-- Location: LCCOMB_X9_Y20_N4
\Mux0~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~29_combout\ = (byte_counter(4) & ((\Mux0~28_combout\ & ((\error~33_combout\))) # (!\Mux0~28_combout\ & (\error~0_combout\)))) # (!byte_counter(4) & (((\Mux0~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_counter(4),
	datab => \error~0_combout\,
	datac => \error~33_combout\,
	datad => \Mux0~28_combout\,
	combout => \Mux0~29_combout\);

-- Location: LCCOMB_X8_Y20_N8
\Mux0~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~33_combout\ = (byte_counter(2) & ((\Mux0~32_combout\ & (\error~q\)) # (!\Mux0~32_combout\ & ((\Mux0~29_combout\))))) # (!byte_counter(2) & (((\Mux0~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_counter(2),
	datab => \error~q\,
	datac => \Mux0~32_combout\,
	datad => \Mux0~29_combout\,
	combout => \Mux0~33_combout\);

-- Location: LCCOMB_X7_Y20_N22
\error~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \error~4_combout\ = (\in_data[2]~input_o\) # ((\in_data[4]~input_o\) # ((\in_data[3]~input_o\) # (\error~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_data[2]~input_o\,
	datab => \in_data[4]~input_o\,
	datac => \in_data[3]~input_o\,
	datad => \error~q\,
	combout => \error~4_combout\);

-- Location: LCCOMB_X7_Y20_N4
\error~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \error~5_combout\ = (\in_data[1]~input_o\) # (((\error~4_combout\) # (!\Mux0~18_combout\)) # (!\in_data[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_data[1]~input_o\,
	datab => \in_data[0]~input_o\,
	datac => \error~4_combout\,
	datad => \Mux0~18_combout\,
	combout => \error~5_combout\);

-- Location: LCCOMB_X7_Y20_N30
\error~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \error~1_combout\ = (((\error~q\) # (!\in_data[1]~input_o\)) # (!\Equal31~0_combout\)) # (!\in_data[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_data[2]~input_o\,
	datab => \Equal31~0_combout\,
	datac => \in_data[1]~input_o\,
	datad => \error~q\,
	combout => \error~1_combout\);

-- Location: LCCOMB_X7_Y20_N24
\error~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \error~2_combout\ = (\in_data[2]~input_o\) # ((\in_data[4]~input_o\) # ((\in_data[0]~input_o\) # (\error~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_data[2]~input_o\,
	datab => \in_data[4]~input_o\,
	datac => \in_data[0]~input_o\,
	datad => \error~q\,
	combout => \error~2_combout\);

-- Location: LCCOMB_X7_Y20_N10
\error~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \error~3_combout\ = (((\in_data[1]~input_o\) # (\error~2_combout\)) # (!\in_data[3]~input_o\)) # (!\Mux0~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~18_combout\,
	datab => \in_data[3]~input_o\,
	datac => \in_data[1]~input_o\,
	datad => \error~2_combout\,
	combout => \error~3_combout\);

-- Location: LCCOMB_X7_Y20_N28
\Mux0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~22_combout\ = (byte_counter(0) & ((\error~1_combout\) # ((byte_counter(1))))) # (!byte_counter(0) & (((!byte_counter(1) & \error~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \error~1_combout\,
	datab => byte_counter(0),
	datac => byte_counter(1),
	datad => \error~3_combout\,
	combout => \Mux0~22_combout\);

-- Location: LCCOMB_X7_Y20_N2
\Mux0~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~23_combout\ = (byte_counter(1) & ((\Mux0~22_combout\ & ((\error~5_combout\))) # (!\Mux0~22_combout\ & (\error~0_combout\)))) # (!byte_counter(1) & (((\Mux0~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \error~0_combout\,
	datab => byte_counter(1),
	datac => \error~5_combout\,
	datad => \Mux0~22_combout\,
	combout => \Mux0~23_combout\);

-- Location: LCCOMB_X7_Y20_N16
\Mux0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~24_combout\ = (byte_counter(2) & (((!byte_counter(4) & \Mux0~23_combout\)))) # (!byte_counter(2) & (\error~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \error~q\,
	datab => byte_counter(4),
	datac => byte_counter(2),
	datad => \Mux0~23_combout\,
	combout => \Mux0~24_combout\);

-- Location: IOIBUF_X5_Y0_N22
\ip_address[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ip_address(5),
	o => \ip_address[5]~input_o\);

-- Location: FF_X6_Y20_N1
\stored_ip[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ip_address[5]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Selector18~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => stored_ip(5));

-- Location: IOIBUF_X7_Y24_N8
\ip_address[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ip_address(4),
	o => \ip_address[4]~input_o\);

-- Location: FF_X6_Y20_N13
\stored_ip[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ip_address[4]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Selector18~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => stored_ip(4));

-- Location: LCCOMB_X6_Y20_N0
\error~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \error~24_combout\ = (\in_data[5]~input_o\ & ((\in_data[4]~input_o\ $ (stored_ip(4))) # (!stored_ip(5)))) # (!\in_data[5]~input_o\ & ((stored_ip(5)) # (\in_data[4]~input_o\ $ (stored_ip(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_data[5]~input_o\,
	datab => \in_data[4]~input_o\,
	datac => stored_ip(5),
	datad => stored_ip(4),
	combout => \error~24_combout\);

-- Location: IOIBUF_X0_Y10_N1
\ip_address[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ip_address(6),
	o => \ip_address[6]~input_o\);

-- Location: FF_X6_Y19_N27
\stored_ip[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ip_address[6]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Selector18~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => stored_ip(6));

-- Location: IOIBUF_X25_Y24_N1
\ip_address[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ip_address(7),
	o => \ip_address[7]~input_o\);

-- Location: FF_X6_Y19_N5
\stored_ip[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ip_address[7]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Selector18~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => stored_ip(7));

-- Location: LCCOMB_X6_Y19_N26
\error~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \error~25_combout\ = (\in_data[7]~input_o\ & ((\in_data[6]~input_o\ $ (stored_ip(6))) # (!stored_ip(7)))) # (!\in_data[7]~input_o\ & ((stored_ip(7)) # (\in_data[6]~input_o\ $ (stored_ip(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110110111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_data[7]~input_o\,
	datab => \in_data[6]~input_o\,
	datac => stored_ip(6),
	datad => stored_ip(7),
	combout => \error~25_combout\);

-- Location: IOIBUF_X28_Y24_N1
\ip_address[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ip_address(3),
	o => \ip_address[3]~input_o\);

-- Location: FF_X6_Y20_N9
\stored_ip[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ip_address[3]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Selector18~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => stored_ip(3));

-- Location: IOIBUF_X3_Y24_N22
\ip_address[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ip_address(2),
	o => \ip_address[2]~input_o\);

-- Location: FF_X6_Y20_N29
\stored_ip[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ip_address[2]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Selector18~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => stored_ip(2));

-- Location: LCCOMB_X6_Y20_N8
\error~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \error~22_combout\ = (\in_data[3]~input_o\ & ((\in_data[2]~input_o\ $ (stored_ip(2))) # (!stored_ip(3)))) # (!\in_data[3]~input_o\ & ((stored_ip(3)) # (\in_data[2]~input_o\ $ (stored_ip(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_data[3]~input_o\,
	datab => \in_data[2]~input_o\,
	datac => stored_ip(3),
	datad => stored_ip(2),
	combout => \error~22_combout\);

-- Location: IOIBUF_X0_Y23_N15
\ip_address[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ip_address(0),
	o => \ip_address[0]~input_o\);

-- Location: FF_X6_Y20_N5
\stored_ip[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ip_address[0]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Selector18~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => stored_ip(0));

-- Location: IOIBUF_X28_Y24_N15
\ip_address[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ip_address(1),
	o => \ip_address[1]~input_o\);

-- Location: FF_X6_Y20_N7
\stored_ip[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ip_address[1]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Selector18~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => stored_ip(1));

-- Location: LCCOMB_X6_Y20_N20
\error~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \error~21_combout\ = (\in_data[1]~input_o\ & ((\in_data[0]~input_o\ $ (stored_ip(0))) # (!stored_ip(1)))) # (!\in_data[1]~input_o\ & ((stored_ip(1)) # (\in_data[0]~input_o\ $ (stored_ip(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110110111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_data[1]~input_o\,
	datab => \in_data[0]~input_o\,
	datac => stored_ip(0),
	datad => stored_ip(1),
	combout => \error~21_combout\);

-- Location: LCCOMB_X6_Y20_N4
\error~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \error~23_combout\ = (\error~22_combout\) # (\error~21_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \error~22_combout\,
	datad => \error~21_combout\,
	combout => \error~23_combout\);

-- Location: LCCOMB_X7_Y20_N26
\error~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \error~26_combout\ = (\error~24_combout\) # ((\error~25_combout\) # ((\error~23_combout\) # (\error~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \error~24_combout\,
	datab => \error~25_combout\,
	datac => \error~23_combout\,
	datad => \error~q\,
	combout => \error~26_combout\);

-- Location: IOIBUF_X3_Y24_N15
\ip_address[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ip_address(13),
	o => \ip_address[13]~input_o\);

-- Location: FF_X6_Y20_N27
\stored_ip[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ip_address[13]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Selector18~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => stored_ip(13));

-- Location: IOIBUF_X0_Y4_N15
\ip_address[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ip_address(10),
	o => \ip_address[10]~input_o\);

-- Location: FF_X6_Y20_N11
\stored_ip[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ip_address[10]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Selector18~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => stored_ip(10));

-- Location: LCCOMB_X6_Y20_N10
\error~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \error~8_combout\ = (stored_ip(13) & ((\in_data[2]~input_o\ $ (stored_ip(10))) # (!\in_data[5]~input_o\))) # (!stored_ip(13) & ((\in_data[5]~input_o\) # (\in_data[2]~input_o\ $ (stored_ip(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110110111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => stored_ip(13),
	datab => \in_data[2]~input_o\,
	datac => stored_ip(10),
	datad => \in_data[5]~input_o\,
	combout => \error~8_combout\);

-- Location: IOIBUF_X5_Y24_N8
\ip_address[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ip_address(11),
	o => \ip_address[11]~input_o\);

-- Location: FF_X6_Y20_N31
\stored_ip[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ip_address[11]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Selector18~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => stored_ip(11));

-- Location: IOIBUF_X32_Y24_N22
\ip_address[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ip_address(9),
	o => \ip_address[9]~input_o\);

-- Location: FF_X6_Y20_N17
\stored_ip[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ip_address[9]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Selector18~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => stored_ip(9));

-- Location: LCCOMB_X6_Y20_N30
\error~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \error~7_combout\ = (\in_data[1]~input_o\ & ((\in_data[3]~input_o\ $ (stored_ip(11))) # (!stored_ip(9)))) # (!\in_data[1]~input_o\ & ((stored_ip(9)) # (\in_data[3]~input_o\ $ (stored_ip(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110110111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_data[1]~input_o\,
	datab => \in_data[3]~input_o\,
	datac => stored_ip(11),
	datad => stored_ip(9),
	combout => \error~7_combout\);

-- Location: IOIBUF_X1_Y24_N1
\ip_address[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ip_address(14),
	o => \ip_address[14]~input_o\);

-- Location: FF_X6_Y19_N9
\stored_ip[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ip_address[14]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Selector18~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => stored_ip(14));

-- Location: IOIBUF_X3_Y0_N1
\ip_address[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ip_address(15),
	o => \ip_address[15]~input_o\);

-- Location: FF_X6_Y19_N17
\stored_ip[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ip_address[15]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Selector18~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => stored_ip(15));

-- Location: LCCOMB_X6_Y19_N22
\error~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \error~6_combout\ = (\in_data[7]~input_o\ & ((\in_data[6]~input_o\ $ (stored_ip(14))) # (!stored_ip(15)))) # (!\in_data[7]~input_o\ & ((stored_ip(15)) # (\in_data[6]~input_o\ $ (stored_ip(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110110111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_data[7]~input_o\,
	datab => \in_data[6]~input_o\,
	datac => stored_ip(14),
	datad => stored_ip(15),
	combout => \error~6_combout\);

-- Location: IOIBUF_X5_Y24_N1
\ip_address[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ip_address(12),
	o => \ip_address[12]~input_o\);

-- Location: FF_X6_Y20_N19
\stored_ip[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ip_address[12]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Selector18~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => stored_ip(12));

-- Location: IOIBUF_X0_Y21_N22
\ip_address[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ip_address(8),
	o => \ip_address[8]~input_o\);

-- Location: FF_X6_Y20_N3
\stored_ip[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ip_address[8]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Selector18~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => stored_ip(8));

-- Location: LCCOMB_X6_Y20_N16
\Equal43~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal43~0_combout\ = \in_data[0]~input_o\ $ (stored_ip(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \in_data[0]~input_o\,
	datad => stored_ip(8),
	combout => \Equal43~0_combout\);

-- Location: LCCOMB_X6_Y20_N18
\error~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \error~9_combout\ = (\error~q\) # ((\Equal43~0_combout\) # (\in_data[4]~input_o\ $ (stored_ip(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \error~q\,
	datab => \in_data[4]~input_o\,
	datac => stored_ip(12),
	datad => \Equal43~0_combout\,
	combout => \error~9_combout\);

-- Location: LCCOMB_X7_Y20_N6
\error~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \error~10_combout\ = (\error~8_combout\) # ((\error~7_combout\) # ((\error~6_combout\) # (\error~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \error~8_combout\,
	datab => \error~7_combout\,
	datac => \error~6_combout\,
	datad => \error~9_combout\,
	combout => \error~10_combout\);

-- Location: IOIBUF_X1_Y24_N8
\ip_address[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ip_address(20),
	o => \ip_address[20]~input_o\);

-- Location: FF_X5_Y20_N31
\stored_ip[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ip_address[20]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Selector18~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => stored_ip(20));

-- Location: IOIBUF_X0_Y9_N1
\ip_address[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ip_address(21),
	o => \ip_address[21]~input_o\);

-- Location: LCCOMB_X5_Y20_N26
\stored_ip[21]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \stored_ip[21]~feeder_combout\ = \ip_address[21]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ip_address[21]~input_o\,
	combout => \stored_ip[21]~feeder_combout\);

-- Location: FF_X5_Y20_N27
\stored_ip[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \stored_ip[21]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \Selector18~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => stored_ip(21));

-- Location: LCCOMB_X5_Y20_N20
\error~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \error~13_combout\ = (\in_data[4]~input_o\ & ((\in_data[5]~input_o\ $ (stored_ip(21))) # (!stored_ip(20)))) # (!\in_data[4]~input_o\ & ((stored_ip(20)) # (\in_data[5]~input_o\ $ (stored_ip(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_data[4]~input_o\,
	datab => \in_data[5]~input_o\,
	datac => stored_ip(20),
	datad => stored_ip(21),
	combout => \error~13_combout\);

-- Location: IOIBUF_X0_Y22_N1
\ip_address[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ip_address(23),
	o => \ip_address[23]~input_o\);

-- Location: FF_X5_Y20_N15
\stored_ip[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ip_address[23]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Selector18~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => stored_ip(23));

-- Location: IOIBUF_X0_Y6_N15
\ip_address[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ip_address(22),
	o => \ip_address[22]~input_o\);

-- Location: FF_X5_Y20_N29
\stored_ip[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ip_address[22]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Selector18~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => stored_ip(22));

-- Location: LCCOMB_X5_Y20_N10
\error~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \error~14_combout\ = (\in_data[7]~input_o\ & ((\in_data[6]~input_o\ $ (stored_ip(22))) # (!stored_ip(23)))) # (!\in_data[7]~input_o\ & ((stored_ip(23)) # (\in_data[6]~input_o\ $ (stored_ip(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_data[7]~input_o\,
	datab => \in_data[6]~input_o\,
	datac => stored_ip(23),
	datad => stored_ip(22),
	combout => \error~14_combout\);

-- Location: IOIBUF_X1_Y0_N15
\ip_address[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ip_address(16),
	o => \ip_address[16]~input_o\);

-- Location: FF_X7_Y20_N1
\stored_ip[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ip_address[16]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Selector18~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => stored_ip(16));

-- Location: LCCOMB_X7_Y20_N20
\Equal42~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal42~0_combout\ = \in_data[0]~input_o\ $ (stored_ip(16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \in_data[0]~input_o\,
	datad => stored_ip(16),
	combout => \Equal42~0_combout\);

-- Location: IOIBUF_X7_Y0_N22
\ip_address[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ip_address(17),
	o => \ip_address[17]~input_o\);

-- Location: FF_X8_Y20_N7
\stored_ip[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ip_address[17]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Selector18~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => stored_ip(17));

-- Location: IOIBUF_X0_Y8_N22
\ip_address[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ip_address(18),
	o => \ip_address[18]~input_o\);

-- Location: FF_X6_Y19_N31
\stored_ip[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ip_address[18]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Selector18~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => stored_ip(18));

-- Location: IOIBUF_X0_Y19_N22
\ip_address[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ip_address(19),
	o => \ip_address[19]~input_o\);

-- Location: FF_X6_Y19_N7
\stored_ip[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ip_address[19]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Selector18~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => stored_ip(19));

-- Location: LCCOMB_X6_Y19_N30
\error~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \error~11_combout\ = (\in_data[3]~input_o\ & ((\in_data[2]~input_o\ $ (stored_ip(18))) # (!stored_ip(19)))) # (!\in_data[3]~input_o\ & ((stored_ip(19)) # (\in_data[2]~input_o\ $ (stored_ip(18)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110110111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_data[3]~input_o\,
	datab => \in_data[2]~input_o\,
	datac => stored_ip(18),
	datad => stored_ip(19),
	combout => \error~11_combout\);

-- Location: LCCOMB_X8_Y20_N6
\error~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \error~12_combout\ = (\Equal42~0_combout\) # ((\error~11_combout\) # (\in_data[1]~input_o\ $ (stored_ip(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_data[1]~input_o\,
	datab => \Equal42~0_combout\,
	datac => stored_ip(17),
	datad => \error~11_combout\,
	combout => \error~12_combout\);

-- Location: LCCOMB_X8_Y20_N14
\error~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \error~15_combout\ = (\error~13_combout\) # ((\error~q\) # ((\error~14_combout\) # (\error~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \error~13_combout\,
	datab => \error~q\,
	datac => \error~14_combout\,
	datad => \error~12_combout\,
	combout => \error~15_combout\);

-- Location: IOIBUF_X0_Y22_N15
\ip_address[29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ip_address(29),
	o => \ip_address[29]~input_o\);

-- Location: FF_X5_Y20_N5
\stored_ip[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ip_address[29]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Selector18~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => stored_ip(29));

-- Location: IOIBUF_X0_Y10_N22
\ip_address[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ip_address(28),
	o => \ip_address[28]~input_o\);

-- Location: FF_X5_Y20_N25
\stored_ip[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ip_address[28]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Selector18~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => stored_ip(28));

-- Location: LCCOMB_X5_Y20_N8
\error~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \error~18_combout\ = (\in_data[4]~input_o\ & ((\in_data[5]~input_o\ $ (stored_ip(29))) # (!stored_ip(28)))) # (!\in_data[4]~input_o\ & ((stored_ip(28)) # (\in_data[5]~input_o\ $ (stored_ip(29)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110110111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_data[4]~input_o\,
	datab => \in_data[5]~input_o\,
	datac => stored_ip(29),
	datad => stored_ip(28),
	combout => \error~18_combout\);

-- Location: IOIBUF_X5_Y24_N22
\ip_address[31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ip_address(31),
	o => \ip_address[31]~input_o\);

-- Location: FF_X5_Y20_N13
\stored_ip[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ip_address[31]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Selector18~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => stored_ip(31));

-- Location: IOIBUF_X0_Y18_N22
\ip_address[30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ip_address(30),
	o => \ip_address[30]~input_o\);

-- Location: FF_X5_Y20_N19
\stored_ip[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ip_address[30]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Selector18~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => stored_ip(30));

-- Location: LCCOMB_X5_Y20_N2
\error~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \error~19_combout\ = (\in_data[7]~input_o\ & ((\in_data[6]~input_o\ $ (stored_ip(30))) # (!stored_ip(31)))) # (!\in_data[7]~input_o\ & ((stored_ip(31)) # (\in_data[6]~input_o\ $ (stored_ip(30)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_data[7]~input_o\,
	datab => \in_data[6]~input_o\,
	datac => stored_ip(31),
	datad => stored_ip(30),
	combout => \error~19_combout\);

-- Location: IOIBUF_X9_Y0_N22
\ip_address[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ip_address(24),
	o => \ip_address[24]~input_o\);

-- Location: FF_X9_Y20_N9
\stored_ip[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ip_address[24]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Selector18~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => stored_ip(24));

-- Location: LCCOMB_X9_Y20_N18
\Equal41~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal41~0_combout\ = \in_data[0]~input_o\ $ (stored_ip(24))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_data[0]~input_o\,
	datac => stored_ip(24),
	combout => \Equal41~0_combout\);

-- Location: IOIBUF_X0_Y4_N22
\ip_address[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ip_address(25),
	o => \ip_address[25]~input_o\);

-- Location: FF_X8_Y20_N1
\stored_ip[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ip_address[25]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Selector18~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => stored_ip(25));

-- Location: IOIBUF_X0_Y8_N1
\ip_address[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ip_address(26),
	o => \ip_address[26]~input_o\);

-- Location: FF_X5_Y19_N9
\stored_ip[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ip_address[26]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Selector18~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => stored_ip(26));

-- Location: IOIBUF_X0_Y19_N1
\ip_address[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ip_address(27),
	o => \ip_address[27]~input_o\);

-- Location: FF_X5_Y19_N3
\stored_ip[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ip_address[27]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Selector18~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => stored_ip(27));

-- Location: LCCOMB_X5_Y19_N26
\error~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \error~16_combout\ = (\in_data[2]~input_o\ & ((\in_data[3]~input_o\ $ (stored_ip(27))) # (!stored_ip(26)))) # (!\in_data[2]~input_o\ & ((stored_ip(26)) # (\in_data[3]~input_o\ $ (stored_ip(27)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_data[2]~input_o\,
	datab => \in_data[3]~input_o\,
	datac => stored_ip(26),
	datad => stored_ip(27),
	combout => \error~16_combout\);

-- Location: LCCOMB_X8_Y20_N0
\error~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \error~17_combout\ = (\Equal41~0_combout\) # ((\error~16_combout\) # (\in_data[1]~input_o\ $ (stored_ip(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_data[1]~input_o\,
	datab => \Equal41~0_combout\,
	datac => stored_ip(25),
	datad => \error~16_combout\,
	combout => \error~17_combout\);

-- Location: LCCOMB_X8_Y20_N20
\error~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \error~20_combout\ = (\error~18_combout\) # ((\error~q\) # ((\error~19_combout\) # (\error~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \error~18_combout\,
	datab => \error~q\,
	datac => \error~19_combout\,
	datad => \error~17_combout\,
	combout => \error~20_combout\);

-- Location: LCCOMB_X8_Y20_N18
\Mux0~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~25_combout\ = (byte_counter(0) & ((byte_counter(1)) # ((\error~15_combout\)))) # (!byte_counter(0) & (!byte_counter(1) & ((\error~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_counter(0),
	datab => byte_counter(1),
	datac => \error~15_combout\,
	datad => \error~20_combout\,
	combout => \Mux0~25_combout\);

-- Location: LCCOMB_X8_Y20_N12
\Mux0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~26_combout\ = (byte_counter(1) & ((\Mux0~25_combout\ & (\error~26_combout\)) # (!\Mux0~25_combout\ & ((\error~10_combout\))))) # (!byte_counter(1) & (((\Mux0~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \error~26_combout\,
	datab => byte_counter(1),
	datac => \error~10_combout\,
	datad => \Mux0~25_combout\,
	combout => \Mux0~26_combout\);

-- Location: LCCOMB_X8_Y20_N2
\Mux0~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~27_combout\ = (\Mux0~24_combout\) # ((byte_counter(2) & (byte_counter(4) & \Mux0~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_counter(2),
	datab => byte_counter(4),
	datac => \Mux0~24_combout\,
	datad => \Mux0~26_combout\,
	combout => \Mux0~27_combout\);

-- Location: LCCOMB_X8_Y20_N10
\Mux0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~34_combout\ = (byte_counter(3) & ((byte_counter(5)) # ((\Mux0~27_combout\)))) # (!byte_counter(3) & (!byte_counter(5) & (\Mux0~33_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_counter(3),
	datab => byte_counter(5),
	datac => \Mux0~33_combout\,
	datad => \Mux0~27_combout\,
	combout => \Mux0~34_combout\);

-- Location: LCCOMB_X8_Y20_N24
\Mux0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~40_combout\ = (byte_counter(5) & ((\Mux0~34_combout\ & (\Mux0~39_combout\)) # (!\Mux0~34_combout\ & ((\Mux0~21_combout\))))) # (!byte_counter(5) & (((\Mux0~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~39_combout\,
	datab => byte_counter(5),
	datac => \Mux0~21_combout\,
	datad => \Mux0~34_combout\,
	combout => \Mux0~40_combout\);

-- Location: LCCOMB_X8_Y20_N4
\Selector19~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector19~5_combout\ = (\Selector19~1_combout\) # ((\Selector19~3_combout\) # ((\Selector19~4_combout\ & \Mux0~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector19~1_combout\,
	datab => \Selector19~4_combout\,
	datac => \Selector19~3_combout\,
	datad => \Mux0~40_combout\,
	combout => \Selector19~5_combout\);

-- Location: FF_X8_Y20_N5
error : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector19~5_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \error~q\);

-- Location: LCCOMB_X11_Y19_N0
\Selector72~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector72~0_combout\ = (!\error~q\ & \in_eop~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \error~q\,
	datad => \in_eop~input_o\,
	combout => \Selector72~0_combout\);

-- Location: LCCOMB_X11_Y19_N14
\~GND\ : cycloneive_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: FF_X11_Y19_N1
\done~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector72~0_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \ALT_INV_current_state.RECEIVING_REPLY~q\,
	sload => \ALT_INV_in_valid~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \done~reg0_q\);

-- Location: LCCOMB_X11_Y19_N10
\mac_address~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mac_address~0_combout\ = (\current_state.ARP_REQUEST~q\) # (\current_state.DONE_STATE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \current_state.ARP_REQUEST~q\,
	datad => \current_state.DONE_STATE~q\,
	combout => \mac_address~0_combout\);

-- Location: LCCOMB_X10_Y20_N8
\Selector130~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector130~0_combout\ = (\in_data[0]~input_o\ & \current_state.RECEIVING_REPLY~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \in_data[0]~input_o\,
	datad => \current_state.RECEIVING_REPLY~q\,
	combout => \Selector130~0_combout\);

-- Location: LCCOMB_X12_Y19_N16
\Mux0~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~41_combout\ = (byte_counter(0) & byte_counter(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_counter(0),
	datad => byte_counter(4),
	combout => \Mux0~41_combout\);

-- Location: LCCOMB_X7_Y19_N2
\Equal5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal5~0_combout\ = (!byte_counter(2) & (byte_counter(3) & (byte_counter(1) & \Equal2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_counter(2),
	datab => byte_counter(3),
	datac => byte_counter(1),
	datad => \Equal2~2_combout\,
	combout => \Equal5~0_combout\);

-- Location: LCCOMB_X12_Y19_N20
\received_mac[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \received_mac[1]~2_combout\ = (\Selector17~4_combout\) # ((\Mux0~41_combout\ & (\Selector19~0_combout\ & \Equal5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~41_combout\,
	datab => \Selector19~0_combout\,
	datac => \Equal5~0_combout\,
	datad => \Selector17~4_combout\,
	combout => \received_mac[1]~2_combout\);

-- Location: FF_X12_Y19_N17
\received_mac[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Selector130~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \received_mac[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => received_mac(0));

-- Location: LCCOMB_X11_Y19_N8
\Selector20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector20~0_combout\ = (\current_state.RECEIVING_REPLY~q\ & ((\error~q\) # ((!\in_valid~input_o\) # (!\in_eop~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.RECEIVING_REPLY~q\,
	datab => \error~q\,
	datac => \in_eop~input_o\,
	datad => \in_valid~input_o\,
	combout => \Selector20~0_combout\);

-- Location: LCCOMB_X13_Y19_N8
\Selector67~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector67~0_combout\ = (\mac_address~0_combout\ & ((\mac_address[0]~reg0_q\) # ((received_mac(0) & \Selector20~0_combout\)))) # (!\mac_address~0_combout\ & (received_mac(0) & ((\Selector20~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mac_address~0_combout\,
	datab => received_mac(0),
	datac => \mac_address[0]~reg0_q\,
	datad => \Selector20~0_combout\,
	combout => \Selector67~0_combout\);

-- Location: FF_X13_Y19_N9
\mac_address[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector67~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mac_address[0]~reg0_q\);

-- Location: LCCOMB_X10_Y20_N20
\Selector129~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector129~0_combout\ = (\in_data[1]~input_o\ & \current_state.RECEIVING_REPLY~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_data[1]~input_o\,
	datad => \current_state.RECEIVING_REPLY~q\,
	combout => \Selector129~0_combout\);

-- Location: LCCOMB_X12_Y19_N10
\received_mac[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \received_mac[1]~feeder_combout\ = \Selector129~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Selector129~0_combout\,
	combout => \received_mac[1]~feeder_combout\);

-- Location: FF_X12_Y19_N11
\received_mac[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \received_mac[1]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \received_mac[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => received_mac(1));

-- Location: LCCOMB_X12_Y20_N8
\Selector66~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector66~0_combout\ = (\mac_address~0_combout\ & ((\mac_address[1]~reg0_q\) # ((received_mac(1) & \Selector20~0_combout\)))) # (!\mac_address~0_combout\ & (received_mac(1) & ((\Selector20~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mac_address~0_combout\,
	datab => received_mac(1),
	datac => \mac_address[1]~reg0_q\,
	datad => \Selector20~0_combout\,
	combout => \Selector66~0_combout\);

-- Location: FF_X12_Y20_N9
\mac_address[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector66~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mac_address[1]~reg0_q\);

-- Location: LCCOMB_X10_Y20_N10
\Selector128~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector128~0_combout\ = (\in_data[2]~input_o\ & \current_state.RECEIVING_REPLY~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_data[2]~input_o\,
	datad => \current_state.RECEIVING_REPLY~q\,
	combout => \Selector128~0_combout\);

-- Location: LCCOMB_X12_Y19_N8
\received_mac[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \received_mac[2]~feeder_combout\ = \Selector128~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Selector128~0_combout\,
	combout => \received_mac[2]~feeder_combout\);

-- Location: FF_X12_Y19_N9
\received_mac[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \received_mac[2]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \received_mac[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => received_mac(2));

-- Location: LCCOMB_X13_Y19_N22
\Selector65~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector65~0_combout\ = (\mac_address~0_combout\ & ((\mac_address[2]~reg0_q\) # ((received_mac(2) & \Selector20~0_combout\)))) # (!\mac_address~0_combout\ & (received_mac(2) & ((\Selector20~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mac_address~0_combout\,
	datab => received_mac(2),
	datac => \mac_address[2]~reg0_q\,
	datad => \Selector20~0_combout\,
	combout => \Selector65~0_combout\);

-- Location: FF_X13_Y19_N23
\mac_address[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector65~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mac_address[2]~reg0_q\);

-- Location: LCCOMB_X10_Y20_N16
\Selector127~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector127~0_combout\ = (\in_data[3]~input_o\ & \current_state.RECEIVING_REPLY~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \in_data[3]~input_o\,
	datad => \current_state.RECEIVING_REPLY~q\,
	combout => \Selector127~0_combout\);

-- Location: LCCOMB_X12_Y19_N14
\received_mac[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \received_mac[3]~feeder_combout\ = \Selector127~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Selector127~0_combout\,
	combout => \received_mac[3]~feeder_combout\);

-- Location: FF_X12_Y19_N15
\received_mac[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \received_mac[3]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \received_mac[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => received_mac(3));

-- Location: LCCOMB_X12_Y20_N14
\Selector64~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector64~0_combout\ = (\mac_address~0_combout\ & ((\mac_address[3]~reg0_q\) # ((received_mac(3) & \Selector20~0_combout\)))) # (!\mac_address~0_combout\ & (received_mac(3) & ((\Selector20~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mac_address~0_combout\,
	datab => received_mac(3),
	datac => \mac_address[3]~reg0_q\,
	datad => \Selector20~0_combout\,
	combout => \Selector64~0_combout\);

-- Location: FF_X12_Y20_N15
\mac_address[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector64~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mac_address[3]~reg0_q\);

-- Location: LCCOMB_X13_Y19_N10
\Selector126~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector126~0_combout\ = (\in_data[4]~input_o\ & \current_state.RECEIVING_REPLY~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \in_data[4]~input_o\,
	datad => \current_state.RECEIVING_REPLY~q\,
	combout => \Selector126~0_combout\);

-- Location: LCCOMB_X12_Y19_N28
\received_mac[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \received_mac[4]~feeder_combout\ = \Selector126~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Selector126~0_combout\,
	combout => \received_mac[4]~feeder_combout\);

-- Location: FF_X12_Y19_N29
\received_mac[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \received_mac[4]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \received_mac[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => received_mac(4));

-- Location: LCCOMB_X13_Y19_N28
\Selector63~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector63~0_combout\ = (\mac_address~0_combout\ & ((\mac_address[4]~reg0_q\) # ((received_mac(4) & \Selector20~0_combout\)))) # (!\mac_address~0_combout\ & (received_mac(4) & ((\Selector20~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mac_address~0_combout\,
	datab => received_mac(4),
	datac => \mac_address[4]~reg0_q\,
	datad => \Selector20~0_combout\,
	combout => \Selector63~0_combout\);

-- Location: FF_X13_Y19_N29
\mac_address[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector63~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mac_address[4]~reg0_q\);

-- Location: LCCOMB_X11_Y20_N12
\Selector125~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector125~0_combout\ = (\in_data[5]~input_o\ & \current_state.RECEIVING_REPLY~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \in_data[5]~input_o\,
	datad => \current_state.RECEIVING_REPLY~q\,
	combout => \Selector125~0_combout\);

-- Location: LCCOMB_X12_Y19_N18
\received_mac[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \received_mac[5]~feeder_combout\ = \Selector125~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Selector125~0_combout\,
	combout => \received_mac[5]~feeder_combout\);

-- Location: FF_X12_Y19_N19
\received_mac[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \received_mac[5]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \received_mac[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => received_mac(5));

-- Location: LCCOMB_X13_Y19_N30
\Selector62~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector62~0_combout\ = (\mac_address~0_combout\ & ((\mac_address[5]~reg0_q\) # ((received_mac(5) & \Selector20~0_combout\)))) # (!\mac_address~0_combout\ & (received_mac(5) & ((\Selector20~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mac_address~0_combout\,
	datab => received_mac(5),
	datac => \mac_address[5]~reg0_q\,
	datad => \Selector20~0_combout\,
	combout => \Selector62~0_combout\);

-- Location: FF_X13_Y19_N31
\mac_address[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector62~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mac_address[5]~reg0_q\);

-- Location: LCCOMB_X10_Y20_N6
\Selector124~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector124~0_combout\ = (\in_data[6]~input_o\ & \current_state.RECEIVING_REPLY~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \in_data[6]~input_o\,
	datad => \current_state.RECEIVING_REPLY~q\,
	combout => \Selector124~0_combout\);

-- Location: LCCOMB_X12_Y19_N0
\received_mac[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \received_mac[6]~feeder_combout\ = \Selector124~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Selector124~0_combout\,
	combout => \received_mac[6]~feeder_combout\);

-- Location: FF_X12_Y19_N1
\received_mac[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \received_mac[6]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \received_mac[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => received_mac(6));

-- Location: LCCOMB_X12_Y20_N4
\Selector61~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector61~0_combout\ = (\mac_address~0_combout\ & ((\mac_address[6]~reg0_q\) # ((received_mac(6) & \Selector20~0_combout\)))) # (!\mac_address~0_combout\ & (received_mac(6) & ((\Selector20~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mac_address~0_combout\,
	datab => received_mac(6),
	datac => \mac_address[6]~reg0_q\,
	datad => \Selector20~0_combout\,
	combout => \Selector61~0_combout\);

-- Location: FF_X12_Y20_N5
\mac_address[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector61~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mac_address[6]~reg0_q\);

-- Location: LCCOMB_X10_Y20_N4
\Selector123~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector123~0_combout\ = (\in_data[7]~input_o\ & \current_state.RECEIVING_REPLY~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \in_data[7]~input_o\,
	datad => \current_state.RECEIVING_REPLY~q\,
	combout => \Selector123~0_combout\);

-- Location: LCCOMB_X12_Y19_N26
\received_mac[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \received_mac[7]~feeder_combout\ = \Selector123~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Selector123~0_combout\,
	combout => \received_mac[7]~feeder_combout\);

-- Location: FF_X12_Y19_N27
\received_mac[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \received_mac[7]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \received_mac[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => received_mac(7));

-- Location: LCCOMB_X12_Y20_N22
\Selector60~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector60~0_combout\ = (\mac_address~0_combout\ & ((\mac_address[7]~reg0_q\) # ((received_mac(7) & \Selector20~0_combout\)))) # (!\mac_address~0_combout\ & (received_mac(7) & ((\Selector20~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mac_address~0_combout\,
	datab => received_mac(7),
	datac => \mac_address[7]~reg0_q\,
	datad => \Selector20~0_combout\,
	combout => \Selector60~0_combout\);

-- Location: FF_X12_Y20_N23
\mac_address[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector60~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mac_address[7]~reg0_q\);

-- Location: LCCOMB_X12_Y20_N20
\received_mac[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \received_mac[8]~feeder_combout\ = \Selector130~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Selector130~0_combout\,
	combout => \received_mac[8]~feeder_combout\);

-- Location: LCCOMB_X12_Y19_N6
\Equal23~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal23~1_combout\ = (!byte_counter(0) & byte_counter(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_counter(0),
	datad => byte_counter(4),
	combout => \Equal23~1_combout\);

-- Location: LCCOMB_X12_Y19_N22
\received_mac[12]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \received_mac[12]~3_combout\ = (\Selector17~4_combout\) # ((\Equal23~1_combout\ & (\Equal5~0_combout\ & \Selector19~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal23~1_combout\,
	datab => \Selector17~4_combout\,
	datac => \Equal5~0_combout\,
	datad => \Selector19~0_combout\,
	combout => \received_mac[12]~3_combout\);

-- Location: FF_X12_Y20_N21
\received_mac[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \received_mac[8]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \received_mac[12]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => received_mac(8));

-- Location: LCCOMB_X12_Y20_N24
\Selector59~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector59~0_combout\ = (\mac_address~0_combout\ & ((\mac_address[8]~reg0_q\) # ((received_mac(8) & \Selector20~0_combout\)))) # (!\mac_address~0_combout\ & (received_mac(8) & ((\Selector20~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mac_address~0_combout\,
	datab => received_mac(8),
	datac => \mac_address[8]~reg0_q\,
	datad => \Selector20~0_combout\,
	combout => \Selector59~0_combout\);

-- Location: FF_X12_Y20_N25
\mac_address[8]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector59~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mac_address[8]~reg0_q\);

-- Location: LCCOMB_X12_Y20_N18
\received_mac[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \received_mac[9]~feeder_combout\ = \Selector129~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Selector129~0_combout\,
	combout => \received_mac[9]~feeder_combout\);

-- Location: FF_X12_Y20_N19
\received_mac[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \received_mac[9]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \received_mac[12]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => received_mac(9));

-- Location: LCCOMB_X12_Y20_N10
\Selector58~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector58~0_combout\ = (\mac_address~0_combout\ & ((\mac_address[9]~reg0_q\) # ((received_mac(9) & \Selector20~0_combout\)))) # (!\mac_address~0_combout\ & (received_mac(9) & ((\Selector20~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mac_address~0_combout\,
	datab => received_mac(9),
	datac => \mac_address[9]~reg0_q\,
	datad => \Selector20~0_combout\,
	combout => \Selector58~0_combout\);

-- Location: FF_X12_Y20_N11
\mac_address[9]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector58~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mac_address[9]~reg0_q\);

-- Location: LCCOMB_X12_Y19_N4
\received_mac[10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \received_mac[10]~feeder_combout\ = \Selector128~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Selector128~0_combout\,
	combout => \received_mac[10]~feeder_combout\);

-- Location: FF_X12_Y19_N5
\received_mac[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \received_mac[10]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \received_mac[12]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => received_mac(10));

-- Location: LCCOMB_X12_Y20_N0
\Selector57~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector57~0_combout\ = (\mac_address~0_combout\ & ((\mac_address[10]~reg0_q\) # ((received_mac(10) & \Selector20~0_combout\)))) # (!\mac_address~0_combout\ & (received_mac(10) & ((\Selector20~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mac_address~0_combout\,
	datab => received_mac(10),
	datac => \mac_address[10]~reg0_q\,
	datad => \Selector20~0_combout\,
	combout => \Selector57~0_combout\);

-- Location: FF_X12_Y20_N1
\mac_address[10]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector57~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mac_address[10]~reg0_q\);

-- Location: FF_X12_Y19_N7
\received_mac[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Selector127~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \received_mac[12]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => received_mac(11));

-- Location: LCCOMB_X12_Y20_N6
\Selector56~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector56~0_combout\ = (received_mac(11) & ((\Selector20~0_combout\) # ((\mac_address[11]~reg0_q\ & \mac_address~0_combout\)))) # (!received_mac(11) & (((\mac_address[11]~reg0_q\ & \mac_address~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => received_mac(11),
	datab => \Selector20~0_combout\,
	datac => \mac_address[11]~reg0_q\,
	datad => \mac_address~0_combout\,
	combout => \Selector56~0_combout\);

-- Location: FF_X12_Y20_N7
\mac_address[11]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector56~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mac_address[11]~reg0_q\);

-- Location: LCCOMB_X12_Y20_N16
\received_mac[12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \received_mac[12]~feeder_combout\ = \Selector126~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Selector126~0_combout\,
	combout => \received_mac[12]~feeder_combout\);

-- Location: FF_X12_Y20_N17
\received_mac[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \received_mac[12]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \received_mac[12]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => received_mac(12));

-- Location: LCCOMB_X12_Y20_N12
\Selector55~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector55~0_combout\ = (\mac_address~0_combout\ & ((\mac_address[12]~reg0_q\) # ((received_mac(12) & \Selector20~0_combout\)))) # (!\mac_address~0_combout\ & (received_mac(12) & ((\Selector20~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mac_address~0_combout\,
	datab => received_mac(12),
	datac => \mac_address[12]~reg0_q\,
	datad => \Selector20~0_combout\,
	combout => \Selector55~0_combout\);

-- Location: FF_X12_Y20_N13
\mac_address[12]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector55~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mac_address[12]~reg0_q\);

-- Location: LCCOMB_X12_Y20_N2
\received_mac[13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \received_mac[13]~feeder_combout\ = \Selector125~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Selector125~0_combout\,
	combout => \received_mac[13]~feeder_combout\);

-- Location: FF_X12_Y20_N3
\received_mac[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \received_mac[13]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \received_mac[12]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => received_mac(13));

-- Location: LCCOMB_X12_Y20_N26
\Selector54~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector54~0_combout\ = (\mac_address~0_combout\ & ((\mac_address[13]~reg0_q\) # ((received_mac(13) & \Selector20~0_combout\)))) # (!\mac_address~0_combout\ & (received_mac(13) & ((\Selector20~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mac_address~0_combout\,
	datab => received_mac(13),
	datac => \mac_address[13]~reg0_q\,
	datad => \Selector20~0_combout\,
	combout => \Selector54~0_combout\);

-- Location: FF_X12_Y20_N27
\mac_address[13]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector54~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mac_address[13]~reg0_q\);

-- Location: LCCOMB_X12_Y19_N24
\received_mac[14]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \received_mac[14]~feeder_combout\ = \Selector124~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Selector124~0_combout\,
	combout => \received_mac[14]~feeder_combout\);

-- Location: FF_X12_Y19_N25
\received_mac[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \received_mac[14]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \received_mac[12]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => received_mac(14));

-- Location: LCCOMB_X12_Y20_N28
\Selector53~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector53~0_combout\ = (\mac_address~0_combout\ & ((\mac_address[14]~reg0_q\) # ((received_mac(14) & \Selector20~0_combout\)))) # (!\mac_address~0_combout\ & (received_mac(14) & ((\Selector20~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mac_address~0_combout\,
	datab => received_mac(14),
	datac => \mac_address[14]~reg0_q\,
	datad => \Selector20~0_combout\,
	combout => \Selector53~0_combout\);

-- Location: FF_X12_Y20_N29
\mac_address[14]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector53~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mac_address[14]~reg0_q\);

-- Location: LCCOMB_X12_Y19_N30
\received_mac[15]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \received_mac[15]~feeder_combout\ = \Selector123~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Selector123~0_combout\,
	combout => \received_mac[15]~feeder_combout\);

-- Location: FF_X12_Y19_N31
\received_mac[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \received_mac[15]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \received_mac[12]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => received_mac(15));

-- Location: LCCOMB_X11_Y20_N8
\Selector52~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector52~0_combout\ = (\mac_address~0_combout\ & ((\mac_address[15]~reg0_q\) # ((\Selector20~0_combout\ & received_mac(15))))) # (!\mac_address~0_combout\ & (\Selector20~0_combout\ & ((received_mac(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mac_address~0_combout\,
	datab => \Selector20~0_combout\,
	datac => \mac_address[15]~reg0_q\,
	datad => received_mac(15),
	combout => \Selector52~0_combout\);

-- Location: FF_X11_Y20_N9
\mac_address[15]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector52~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mac_address[15]~reg0_q\);

-- Location: LCCOMB_X13_Y20_N24
\received_mac[16]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \received_mac[16]~feeder_combout\ = \Selector130~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Selector130~0_combout\,
	combout => \received_mac[16]~feeder_combout\);

-- Location: LCCOMB_X7_Y19_N26
\Equal4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal4~2_combout\ = (!byte_counter(2) & (byte_counter(3) & (!byte_counter(1) & \Equal2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_counter(2),
	datab => byte_counter(3),
	datac => byte_counter(1),
	datad => \Equal2~2_combout\,
	combout => \Equal4~2_combout\);

-- Location: LCCOMB_X13_Y20_N30
\received_mac[21]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \received_mac[21]~4_combout\ = (\Selector17~4_combout\) # ((\Mux0~41_combout\ & (\Selector19~0_combout\ & \Equal4~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~41_combout\,
	datab => \Selector19~0_combout\,
	datac => \Selector17~4_combout\,
	datad => \Equal4~2_combout\,
	combout => \received_mac[21]~4_combout\);

-- Location: FF_X13_Y20_N25
\received_mac[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \received_mac[16]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \received_mac[21]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => received_mac(16));

-- Location: LCCOMB_X14_Y20_N24
\Selector51~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector51~0_combout\ = (\mac_address~0_combout\ & ((\mac_address[16]~reg0_q\) # ((\Selector20~0_combout\ & received_mac(16))))) # (!\mac_address~0_combout\ & (\Selector20~0_combout\ & ((received_mac(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mac_address~0_combout\,
	datab => \Selector20~0_combout\,
	datac => \mac_address[16]~reg0_q\,
	datad => received_mac(16),
	combout => \Selector51~0_combout\);

-- Location: FF_X14_Y20_N25
\mac_address[16]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector51~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mac_address[16]~reg0_q\);

-- Location: LCCOMB_X13_Y20_N14
\received_mac[17]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \received_mac[17]~feeder_combout\ = \Selector129~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Selector129~0_combout\,
	combout => \received_mac[17]~feeder_combout\);

-- Location: FF_X13_Y20_N15
\received_mac[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \received_mac[17]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \received_mac[21]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => received_mac(17));

-- Location: LCCOMB_X14_Y20_N6
\Selector50~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector50~0_combout\ = (received_mac(17) & ((\Selector20~0_combout\) # ((\mac_address[17]~reg0_q\ & \mac_address~0_combout\)))) # (!received_mac(17) & (((\mac_address[17]~reg0_q\ & \mac_address~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => received_mac(17),
	datab => \Selector20~0_combout\,
	datac => \mac_address[17]~reg0_q\,
	datad => \mac_address~0_combout\,
	combout => \Selector50~0_combout\);

-- Location: FF_X14_Y20_N7
\mac_address[17]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector50~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mac_address[17]~reg0_q\);

-- Location: LCCOMB_X13_Y20_N16
\received_mac[18]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \received_mac[18]~feeder_combout\ = \Selector128~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Selector128~0_combout\,
	combout => \received_mac[18]~feeder_combout\);

-- Location: FF_X13_Y20_N17
\received_mac[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \received_mac[18]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \received_mac[21]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => received_mac(18));

-- Location: LCCOMB_X14_Y20_N0
\Selector49~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector49~0_combout\ = (received_mac(18) & ((\Selector20~0_combout\) # ((\mac_address[18]~reg0_q\ & \mac_address~0_combout\)))) # (!received_mac(18) & (((\mac_address[18]~reg0_q\ & \mac_address~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => received_mac(18),
	datab => \Selector20~0_combout\,
	datac => \mac_address[18]~reg0_q\,
	datad => \mac_address~0_combout\,
	combout => \Selector49~0_combout\);

-- Location: FF_X14_Y20_N1
\mac_address[18]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector49~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mac_address[18]~reg0_q\);

-- Location: LCCOMB_X13_Y20_N2
\received_mac[19]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \received_mac[19]~feeder_combout\ = \Selector127~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Selector127~0_combout\,
	combout => \received_mac[19]~feeder_combout\);

-- Location: FF_X13_Y20_N3
\received_mac[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \received_mac[19]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \received_mac[21]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => received_mac(19));

-- Location: LCCOMB_X14_Y20_N22
\Selector48~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector48~0_combout\ = (received_mac(19) & ((\Selector20~0_combout\) # ((\mac_address[19]~reg0_q\ & \mac_address~0_combout\)))) # (!received_mac(19) & (((\mac_address[19]~reg0_q\ & \mac_address~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => received_mac(19),
	datab => \Selector20~0_combout\,
	datac => \mac_address[19]~reg0_q\,
	datad => \mac_address~0_combout\,
	combout => \Selector48~0_combout\);

-- Location: FF_X14_Y20_N23
\mac_address[19]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector48~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mac_address[19]~reg0_q\);

-- Location: LCCOMB_X13_Y20_N20
\received_mac[20]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \received_mac[20]~feeder_combout\ = \Selector126~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Selector126~0_combout\,
	combout => \received_mac[20]~feeder_combout\);

-- Location: FF_X13_Y20_N21
\received_mac[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \received_mac[20]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \received_mac[21]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => received_mac(20));

-- Location: LCCOMB_X14_Y20_N20
\Selector47~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector47~0_combout\ = (\mac_address~0_combout\ & ((\mac_address[20]~reg0_q\) # ((\Selector20~0_combout\ & received_mac(20))))) # (!\mac_address~0_combout\ & (\Selector20~0_combout\ & ((received_mac(20)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mac_address~0_combout\,
	datab => \Selector20~0_combout\,
	datac => \mac_address[20]~reg0_q\,
	datad => received_mac(20),
	combout => \Selector47~0_combout\);

-- Location: FF_X14_Y20_N21
\mac_address[20]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector47~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mac_address[20]~reg0_q\);

-- Location: LCCOMB_X13_Y20_N22
\received_mac[21]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \received_mac[21]~feeder_combout\ = \Selector125~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Selector125~0_combout\,
	combout => \received_mac[21]~feeder_combout\);

-- Location: FF_X13_Y20_N23
\received_mac[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \received_mac[21]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \received_mac[21]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => received_mac(21));

-- Location: LCCOMB_X14_Y20_N26
\Selector46~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector46~0_combout\ = (\mac_address~0_combout\ & ((\mac_address[21]~reg0_q\) # ((\Selector20~0_combout\ & received_mac(21))))) # (!\mac_address~0_combout\ & (\Selector20~0_combout\ & ((received_mac(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mac_address~0_combout\,
	datab => \Selector20~0_combout\,
	datac => \mac_address[21]~reg0_q\,
	datad => received_mac(21),
	combout => \Selector46~0_combout\);

-- Location: FF_X14_Y20_N27
\mac_address[21]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector46~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mac_address[21]~reg0_q\);

-- Location: LCCOMB_X13_Y20_N8
\received_mac[22]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \received_mac[22]~feeder_combout\ = \Selector124~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Selector124~0_combout\,
	combout => \received_mac[22]~feeder_combout\);

-- Location: FF_X13_Y20_N9
\received_mac[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \received_mac[22]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \received_mac[21]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => received_mac(22));

-- Location: LCCOMB_X14_Y20_N28
\Selector45~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector45~0_combout\ = (received_mac(22) & ((\Selector20~0_combout\) # ((\mac_address[22]~reg0_q\ & \mac_address~0_combout\)))) # (!received_mac(22) & (((\mac_address[22]~reg0_q\ & \mac_address~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => received_mac(22),
	datab => \Selector20~0_combout\,
	datac => \mac_address[22]~reg0_q\,
	datad => \mac_address~0_combout\,
	combout => \Selector45~0_combout\);

-- Location: FF_X14_Y20_N29
\mac_address[22]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector45~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mac_address[22]~reg0_q\);

-- Location: LCCOMB_X13_Y20_N18
\received_mac[23]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \received_mac[23]~feeder_combout\ = \Selector123~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Selector123~0_combout\,
	combout => \received_mac[23]~feeder_combout\);

-- Location: FF_X13_Y20_N19
\received_mac[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \received_mac[23]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \received_mac[21]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => received_mac(23));

-- Location: LCCOMB_X14_Y20_N18
\Selector44~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector44~0_combout\ = (\mac_address~0_combout\ & ((\mac_address[23]~reg0_q\) # ((\Selector20~0_combout\ & received_mac(23))))) # (!\mac_address~0_combout\ & (\Selector20~0_combout\ & ((received_mac(23)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mac_address~0_combout\,
	datab => \Selector20~0_combout\,
	datac => \mac_address[23]~reg0_q\,
	datad => received_mac(23),
	combout => \Selector44~0_combout\);

-- Location: FF_X14_Y20_N19
\mac_address[23]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector44~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mac_address[23]~reg0_q\);

-- Location: LCCOMB_X14_Y19_N14
\received_mac[24]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \received_mac[24]~feeder_combout\ = \Selector130~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Selector130~0_combout\,
	combout => \received_mac[24]~feeder_combout\);

-- Location: LCCOMB_X14_Y19_N2
\received_mac[28]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \received_mac[28]~5_combout\ = (\Selector17~4_combout\) # ((\Equal4~2_combout\ & (\Selector19~0_combout\ & \Equal23~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal4~2_combout\,
	datab => \Selector17~4_combout\,
	datac => \Selector19~0_combout\,
	datad => \Equal23~1_combout\,
	combout => \received_mac[28]~5_combout\);

-- Location: FF_X14_Y19_N15
\received_mac[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \received_mac[24]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \received_mac[28]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => received_mac(24));

-- Location: LCCOMB_X14_Y19_N12
\Selector43~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector43~0_combout\ = (\mac_address~0_combout\ & ((\mac_address[24]~reg0_q\) # ((received_mac(24) & \Selector20~0_combout\)))) # (!\mac_address~0_combout\ & (received_mac(24) & ((\Selector20~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mac_address~0_combout\,
	datab => received_mac(24),
	datac => \mac_address[24]~reg0_q\,
	datad => \Selector20~0_combout\,
	combout => \Selector43~0_combout\);

-- Location: FF_X14_Y19_N13
\mac_address[24]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector43~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mac_address[24]~reg0_q\);

-- Location: LCCOMB_X14_Y19_N4
\received_mac[25]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \received_mac[25]~feeder_combout\ = \Selector129~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Selector129~0_combout\,
	combout => \received_mac[25]~feeder_combout\);

-- Location: FF_X14_Y19_N5
\received_mac[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \received_mac[25]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \received_mac[28]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => received_mac(25));

-- Location: LCCOMB_X11_Y19_N30
\Selector42~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector42~0_combout\ = (\mac_address~0_combout\ & ((\mac_address[25]~reg0_q\) # ((\Selector20~0_combout\ & received_mac(25))))) # (!\mac_address~0_combout\ & (\Selector20~0_combout\ & ((received_mac(25)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mac_address~0_combout\,
	datab => \Selector20~0_combout\,
	datac => \mac_address[25]~reg0_q\,
	datad => received_mac(25),
	combout => \Selector42~0_combout\);

-- Location: FF_X11_Y19_N31
\mac_address[25]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector42~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mac_address[25]~reg0_q\);

-- Location: LCCOMB_X14_Y19_N18
\received_mac[26]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \received_mac[26]~feeder_combout\ = \Selector128~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Selector128~0_combout\,
	combout => \received_mac[26]~feeder_combout\);

-- Location: FF_X14_Y19_N19
\received_mac[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \received_mac[26]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \received_mac[28]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => received_mac(26));

-- Location: LCCOMB_X14_Y19_N22
\Selector41~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector41~0_combout\ = (\mac_address~0_combout\ & ((\mac_address[26]~reg0_q\) # ((received_mac(26) & \Selector20~0_combout\)))) # (!\mac_address~0_combout\ & (received_mac(26) & ((\Selector20~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mac_address~0_combout\,
	datab => received_mac(26),
	datac => \mac_address[26]~reg0_q\,
	datad => \Selector20~0_combout\,
	combout => \Selector41~0_combout\);

-- Location: FF_X14_Y19_N23
\mac_address[26]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector41~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mac_address[26]~reg0_q\);

-- Location: LCCOMB_X14_Y19_N24
\received_mac[27]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \received_mac[27]~feeder_combout\ = \Selector127~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Selector127~0_combout\,
	combout => \received_mac[27]~feeder_combout\);

-- Location: FF_X14_Y19_N25
\received_mac[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \received_mac[27]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \received_mac[28]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => received_mac(27));

-- Location: LCCOMB_X14_Y19_N20
\Selector40~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector40~0_combout\ = (\mac_address~0_combout\ & ((\mac_address[27]~reg0_q\) # ((received_mac(27) & \Selector20~0_combout\)))) # (!\mac_address~0_combout\ & (received_mac(27) & ((\Selector20~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mac_address~0_combout\,
	datab => received_mac(27),
	datac => \mac_address[27]~reg0_q\,
	datad => \Selector20~0_combout\,
	combout => \Selector40~0_combout\);

-- Location: FF_X14_Y19_N21
\mac_address[27]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector40~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mac_address[27]~reg0_q\);

-- Location: LCCOMB_X14_Y19_N30
\received_mac[28]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \received_mac[28]~feeder_combout\ = \Selector126~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Selector126~0_combout\,
	combout => \received_mac[28]~feeder_combout\);

-- Location: FF_X14_Y19_N31
\received_mac[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \received_mac[28]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \received_mac[28]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => received_mac(28));

-- Location: LCCOMB_X14_Y19_N26
\Selector39~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector39~0_combout\ = (received_mac(28) & ((\Selector20~0_combout\) # ((\mac_address~0_combout\ & \mac_address[28]~reg0_q\)))) # (!received_mac(28) & (\mac_address~0_combout\ & (\mac_address[28]~reg0_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => received_mac(28),
	datab => \mac_address~0_combout\,
	datac => \mac_address[28]~reg0_q\,
	datad => \Selector20~0_combout\,
	combout => \Selector39~0_combout\);

-- Location: FF_X14_Y19_N27
\mac_address[28]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector39~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mac_address[28]~reg0_q\);

-- Location: LCCOMB_X14_Y19_N16
\received_mac[29]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \received_mac[29]~feeder_combout\ = \Selector125~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Selector125~0_combout\,
	combout => \received_mac[29]~feeder_combout\);

-- Location: FF_X14_Y19_N17
\received_mac[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \received_mac[29]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \received_mac[28]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => received_mac(29));

-- Location: LCCOMB_X14_Y19_N28
\Selector38~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector38~0_combout\ = (\mac_address~0_combout\ & ((\mac_address[29]~reg0_q\) # ((received_mac(29) & \Selector20~0_combout\)))) # (!\mac_address~0_combout\ & (received_mac(29) & ((\Selector20~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mac_address~0_combout\,
	datab => received_mac(29),
	datac => \mac_address[29]~reg0_q\,
	datad => \Selector20~0_combout\,
	combout => \Selector38~0_combout\);

-- Location: FF_X14_Y19_N29
\mac_address[29]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector38~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mac_address[29]~reg0_q\);

-- Location: LCCOMB_X14_Y19_N10
\received_mac[30]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \received_mac[30]~feeder_combout\ = \Selector124~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Selector124~0_combout\,
	combout => \received_mac[30]~feeder_combout\);

-- Location: FF_X14_Y19_N11
\received_mac[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \received_mac[30]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \received_mac[28]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => received_mac(30));

-- Location: LCCOMB_X14_Y19_N6
\Selector37~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector37~0_combout\ = (received_mac(30) & ((\Selector20~0_combout\) # ((\mac_address~0_combout\ & \mac_address[30]~reg0_q\)))) # (!received_mac(30) & (\mac_address~0_combout\ & (\mac_address[30]~reg0_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => received_mac(30),
	datab => \mac_address~0_combout\,
	datac => \mac_address[30]~reg0_q\,
	datad => \Selector20~0_combout\,
	combout => \Selector37~0_combout\);

-- Location: FF_X14_Y19_N7
\mac_address[30]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector37~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mac_address[30]~reg0_q\);

-- Location: LCCOMB_X14_Y19_N0
\received_mac[31]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \received_mac[31]~feeder_combout\ = \Selector123~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Selector123~0_combout\,
	combout => \received_mac[31]~feeder_combout\);

-- Location: FF_X14_Y19_N1
\received_mac[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \received_mac[31]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \received_mac[28]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => received_mac(31));

-- Location: LCCOMB_X14_Y20_N12
\Selector36~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector36~0_combout\ = (\mac_address~0_combout\ & ((\mac_address[31]~reg0_q\) # ((\Selector20~0_combout\ & received_mac(31))))) # (!\mac_address~0_combout\ & (\Selector20~0_combout\ & ((received_mac(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mac_address~0_combout\,
	datab => \Selector20~0_combout\,
	datac => \mac_address[31]~reg0_q\,
	datad => received_mac(31),
	combout => \Selector36~0_combout\);

-- Location: FF_X14_Y20_N13
\mac_address[31]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector36~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mac_address[31]~reg0_q\);

-- Location: LCCOMB_X10_Y20_N24
\received_mac[32]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \received_mac[32]~feeder_combout\ = \Selector130~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Selector130~0_combout\,
	combout => \received_mac[32]~feeder_combout\);

-- Location: LCCOMB_X8_Y19_N8
\Equal13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal13~0_combout\ = (byte_counter(4) & (!byte_counter(3) & (byte_counter(1) & \Equal2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_counter(4),
	datab => byte_counter(3),
	datac => byte_counter(1),
	datad => \Equal2~2_combout\,
	combout => \Equal13~0_combout\);

-- Location: LCCOMB_X9_Y19_N30
\Equal18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal18~0_combout\ = ((!\Equal13~0_combout\) # (!byte_counter(0))) # (!byte_counter(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => byte_counter(2),
	datac => byte_counter(0),
	datad => \Equal13~0_combout\,
	combout => \Equal18~0_combout\);

-- Location: LCCOMB_X10_Y20_N30
\received_mac[39]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \received_mac[39]~8_combout\ = (\Selector17~4_combout\) # ((\in_valid~input_o\ & (!\Equal18~0_combout\ & \current_state.RECEIVING_REPLY~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_valid~input_o\,
	datab => \Selector17~4_combout\,
	datac => \Equal18~0_combout\,
	datad => \current_state.RECEIVING_REPLY~q\,
	combout => \received_mac[39]~8_combout\);

-- Location: FF_X10_Y20_N25
\received_mac[32]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \received_mac[32]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \received_mac[39]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => received_mac(32));

-- Location: LCCOMB_X11_Y20_N2
\Selector35~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector35~0_combout\ = (\mac_address~0_combout\ & ((\mac_address[32]~reg0_q\) # ((\Selector20~0_combout\ & received_mac(32))))) # (!\mac_address~0_combout\ & (\Selector20~0_combout\ & ((received_mac(32)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mac_address~0_combout\,
	datab => \Selector20~0_combout\,
	datac => \mac_address[32]~reg0_q\,
	datad => received_mac(32),
	combout => \Selector35~0_combout\);

-- Location: FF_X11_Y20_N3
\mac_address[32]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector35~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mac_address[32]~reg0_q\);

-- Location: LCCOMB_X10_Y20_N14
\received_mac[33]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \received_mac[33]~feeder_combout\ = \Selector129~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Selector129~0_combout\,
	combout => \received_mac[33]~feeder_combout\);

-- Location: FF_X10_Y20_N15
\received_mac[33]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \received_mac[33]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \received_mac[39]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => received_mac(33));

-- Location: LCCOMB_X11_Y20_N28
\Selector34~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector34~0_combout\ = (received_mac(33) & ((\Selector20~0_combout\) # ((\mac_address[33]~reg0_q\ & \mac_address~0_combout\)))) # (!received_mac(33) & (((\mac_address[33]~reg0_q\ & \mac_address~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => received_mac(33),
	datab => \Selector20~0_combout\,
	datac => \mac_address[33]~reg0_q\,
	datad => \mac_address~0_combout\,
	combout => \Selector34~0_combout\);

-- Location: FF_X11_Y20_N29
\mac_address[33]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector34~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mac_address[33]~reg0_q\);

-- Location: LCCOMB_X10_Y20_N28
\received_mac[34]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \received_mac[34]~feeder_combout\ = \Selector128~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Selector128~0_combout\,
	combout => \received_mac[34]~feeder_combout\);

-- Location: FF_X10_Y20_N29
\received_mac[34]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \received_mac[34]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \received_mac[39]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => received_mac(34));

-- Location: LCCOMB_X11_Y20_N18
\Selector33~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector33~0_combout\ = (\mac_address~0_combout\ & ((\mac_address[34]~reg0_q\) # ((\Selector20~0_combout\ & received_mac(34))))) # (!\mac_address~0_combout\ & (\Selector20~0_combout\ & ((received_mac(34)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mac_address~0_combout\,
	datab => \Selector20~0_combout\,
	datac => \mac_address[34]~reg0_q\,
	datad => received_mac(34),
	combout => \Selector33~0_combout\);

-- Location: FF_X11_Y20_N19
\mac_address[34]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector33~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mac_address[34]~reg0_q\);

-- Location: FF_X10_Y20_N11
\received_mac[35]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Selector127~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \received_mac[39]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => received_mac(35));

-- Location: LCCOMB_X11_Y20_N0
\Selector32~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector32~0_combout\ = (received_mac(35) & ((\Selector20~0_combout\) # ((\mac_address[35]~reg0_q\ & \mac_address~0_combout\)))) # (!received_mac(35) & (((\mac_address[35]~reg0_q\ & \mac_address~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => received_mac(35),
	datab => \Selector20~0_combout\,
	datac => \mac_address[35]~reg0_q\,
	datad => \mac_address~0_combout\,
	combout => \Selector32~0_combout\);

-- Location: FF_X11_Y20_N1
\mac_address[35]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector32~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mac_address[35]~reg0_q\);

-- Location: FF_X10_Y20_N17
\received_mac[36]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Selector126~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \received_mac[39]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => received_mac(36));

-- Location: LCCOMB_X11_Y20_N26
\Selector31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector31~0_combout\ = (received_mac(36) & ((\Selector20~0_combout\) # ((\mac_address[36]~reg0_q\ & \mac_address~0_combout\)))) # (!received_mac(36) & (((\mac_address[36]~reg0_q\ & \mac_address~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => received_mac(36),
	datab => \Selector20~0_combout\,
	datac => \mac_address[36]~reg0_q\,
	datad => \mac_address~0_combout\,
	combout => \Selector31~0_combout\);

-- Location: FF_X11_Y20_N27
\mac_address[36]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector31~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mac_address[36]~reg0_q\);

-- Location: LCCOMB_X10_Y20_N22
\received_mac[37]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \received_mac[37]~feeder_combout\ = \Selector125~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Selector125~0_combout\,
	combout => \received_mac[37]~feeder_combout\);

-- Location: FF_X10_Y20_N23
\received_mac[37]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \received_mac[37]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \received_mac[39]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => received_mac(37));

-- Location: LCCOMB_X11_Y20_N24
\Selector30~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector30~0_combout\ = (received_mac(37) & ((\Selector20~0_combout\) # ((\mac_address[37]~reg0_q\ & \mac_address~0_combout\)))) # (!received_mac(37) & (((\mac_address[37]~reg0_q\ & \mac_address~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => received_mac(37),
	datab => \Selector20~0_combout\,
	datac => \mac_address[37]~reg0_q\,
	datad => \mac_address~0_combout\,
	combout => \Selector30~0_combout\);

-- Location: FF_X11_Y20_N25
\mac_address[37]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector30~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mac_address[37]~reg0_q\);

-- Location: FF_X10_Y20_N21
\received_mac[38]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Selector124~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \received_mac[39]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => received_mac(38));

-- Location: LCCOMB_X11_Y20_N22
\Selector29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector29~0_combout\ = (\mac_address~0_combout\ & ((\mac_address[38]~reg0_q\) # ((\Selector20~0_combout\ & received_mac(38))))) # (!\mac_address~0_combout\ & (\Selector20~0_combout\ & ((received_mac(38)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mac_address~0_combout\,
	datab => \Selector20~0_combout\,
	datac => \mac_address[38]~reg0_q\,
	datad => received_mac(38),
	combout => \Selector29~0_combout\);

-- Location: FF_X11_Y20_N23
\mac_address[38]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector29~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mac_address[38]~reg0_q\);

-- Location: FF_X10_Y20_N27
\received_mac[39]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Selector123~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \received_mac[39]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => received_mac(39));

-- Location: LCCOMB_X11_Y20_N4
\Selector28~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector28~0_combout\ = (received_mac(39) & ((\Selector20~0_combout\) # ((\mac_address[39]~reg0_q\ & \mac_address~0_combout\)))) # (!received_mac(39) & (((\mac_address[39]~reg0_q\ & \mac_address~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => received_mac(39),
	datab => \Selector20~0_combout\,
	datac => \mac_address[39]~reg0_q\,
	datad => \mac_address~0_combout\,
	combout => \Selector28~0_combout\);

-- Location: FF_X11_Y20_N5
\mac_address[39]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector28~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mac_address[39]~reg0_q\);

-- Location: LCCOMB_X13_Y20_N12
\received_mac[40]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \received_mac[40]~feeder_combout\ = \Selector130~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Selector130~0_combout\,
	combout => \received_mac[40]~feeder_combout\);

-- Location: LCCOMB_X9_Y19_N28
\received_mac[42]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \received_mac[42]~6_combout\ = ((!byte_counter(2)) # (!\current_state.RECEIVING_REPLY~q\)) # (!\in_valid~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_valid~input_o\,
	datac => \current_state.RECEIVING_REPLY~q\,
	datad => byte_counter(2),
	combout => \received_mac[42]~6_combout\);

-- Location: LCCOMB_X13_Y19_N6
\received_mac[42]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \received_mac[42]~7_combout\ = (\Selector17~4_combout\) # ((!\received_mac[42]~6_combout\ & (!byte_counter(0) & \Equal13~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \received_mac[42]~6_combout\,
	datab => \Selector17~4_combout\,
	datac => byte_counter(0),
	datad => \Equal13~0_combout\,
	combout => \received_mac[42]~7_combout\);

-- Location: FF_X13_Y20_N13
\received_mac[40]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \received_mac[40]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \received_mac[42]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => received_mac(40));

-- Location: LCCOMB_X14_Y20_N10
\Selector27~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector27~0_combout\ = (received_mac(40) & ((\Selector20~0_combout\) # ((\mac_address[40]~reg0_q\ & \mac_address~0_combout\)))) # (!received_mac(40) & (((\mac_address[40]~reg0_q\ & \mac_address~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => received_mac(40),
	datab => \Selector20~0_combout\,
	datac => \mac_address[40]~reg0_q\,
	datad => \mac_address~0_combout\,
	combout => \Selector27~0_combout\);

-- Location: FF_X14_Y20_N11
\mac_address[40]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector27~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mac_address[40]~reg0_q\);

-- Location: LCCOMB_X13_Y19_N16
\received_mac[41]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \received_mac[41]~feeder_combout\ = \Selector129~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Selector129~0_combout\,
	combout => \received_mac[41]~feeder_combout\);

-- Location: FF_X13_Y19_N17
\received_mac[41]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \received_mac[41]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \received_mac[42]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => received_mac(41));

-- Location: LCCOMB_X13_Y19_N12
\Selector26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector26~0_combout\ = (\mac_address~0_combout\ & ((\mac_address[41]~reg0_q\) # ((received_mac(41) & \Selector20~0_combout\)))) # (!\mac_address~0_combout\ & (received_mac(41) & ((\Selector20~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mac_address~0_combout\,
	datab => received_mac(41),
	datac => \mac_address[41]~reg0_q\,
	datad => \Selector20~0_combout\,
	combout => \Selector26~0_combout\);

-- Location: FF_X13_Y19_N13
\mac_address[41]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector26~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mac_address[41]~reg0_q\);

-- Location: LCCOMB_X13_Y19_N2
\received_mac[42]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \received_mac[42]~feeder_combout\ = \Selector128~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Selector128~0_combout\,
	combout => \received_mac[42]~feeder_combout\);

-- Location: FF_X13_Y19_N3
\received_mac[42]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \received_mac[42]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \received_mac[42]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => received_mac(42));

-- Location: LCCOMB_X13_Y19_N14
\Selector25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector25~0_combout\ = (\mac_address~0_combout\ & ((\mac_address[42]~reg0_q\) # ((received_mac(42) & \Selector20~0_combout\)))) # (!\mac_address~0_combout\ & (received_mac(42) & ((\Selector20~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mac_address~0_combout\,
	datab => received_mac(42),
	datac => \mac_address[42]~reg0_q\,
	datad => \Selector20~0_combout\,
	combout => \Selector25~0_combout\);

-- Location: FF_X13_Y19_N15
\mac_address[42]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector25~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mac_address[42]~reg0_q\);

-- Location: LCCOMB_X13_Y19_N4
\received_mac[43]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \received_mac[43]~feeder_combout\ = \Selector127~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Selector127~0_combout\,
	combout => \received_mac[43]~feeder_combout\);

-- Location: FF_X13_Y19_N5
\received_mac[43]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \received_mac[43]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \received_mac[42]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => received_mac(43));

-- Location: LCCOMB_X14_Y19_N8
\Selector24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector24~0_combout\ = (\mac_address~0_combout\ & ((\mac_address[43]~reg0_q\) # ((received_mac(43) & \Selector20~0_combout\)))) # (!\mac_address~0_combout\ & (received_mac(43) & ((\Selector20~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mac_address~0_combout\,
	datab => received_mac(43),
	datac => \mac_address[43]~reg0_q\,
	datad => \Selector20~0_combout\,
	combout => \Selector24~0_combout\);

-- Location: FF_X14_Y19_N9
\mac_address[43]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector24~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mac_address[43]~reg0_q\);

-- Location: FF_X13_Y19_N11
\received_mac[44]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector126~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \received_mac[42]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => received_mac(44));

-- Location: LCCOMB_X13_Y19_N24
\Selector23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector23~0_combout\ = (\mac_address~0_combout\ & ((\mac_address[44]~reg0_q\) # ((received_mac(44) & \Selector20~0_combout\)))) # (!\mac_address~0_combout\ & (received_mac(44) & ((\Selector20~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mac_address~0_combout\,
	datab => received_mac(44),
	datac => \mac_address[44]~reg0_q\,
	datad => \Selector20~0_combout\,
	combout => \Selector23~0_combout\);

-- Location: FF_X13_Y19_N25
\mac_address[44]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector23~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mac_address[44]~reg0_q\);

-- Location: LCCOMB_X13_Y19_N0
\received_mac[45]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \received_mac[45]~feeder_combout\ = \Selector125~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Selector125~0_combout\,
	combout => \received_mac[45]~feeder_combout\);

-- Location: FF_X13_Y19_N1
\received_mac[45]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \received_mac[45]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \received_mac[42]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => received_mac(45));

-- Location: LCCOMB_X14_Y20_N4
\Selector22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector22~0_combout\ = (received_mac(45) & ((\Selector20~0_combout\) # ((\mac_address[45]~reg0_q\ & \mac_address~0_combout\)))) # (!received_mac(45) & (((\mac_address[45]~reg0_q\ & \mac_address~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => received_mac(45),
	datab => \Selector20~0_combout\,
	datac => \mac_address[45]~reg0_q\,
	datad => \mac_address~0_combout\,
	combout => \Selector22~0_combout\);

-- Location: FF_X14_Y20_N5
\mac_address[45]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector22~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mac_address[45]~reg0_q\);

-- Location: LCCOMB_X13_Y19_N18
\received_mac[46]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \received_mac[46]~feeder_combout\ = \Selector124~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Selector124~0_combout\,
	combout => \received_mac[46]~feeder_combout\);

-- Location: FF_X13_Y19_N19
\received_mac[46]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \received_mac[46]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \received_mac[42]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => received_mac(46));

-- Location: LCCOMB_X13_Y19_N26
\Selector21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector21~0_combout\ = (\mac_address~0_combout\ & ((\mac_address[46]~reg0_q\) # ((received_mac(46) & \Selector20~0_combout\)))) # (!\mac_address~0_combout\ & (received_mac(46) & ((\Selector20~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mac_address~0_combout\,
	datab => received_mac(46),
	datac => \mac_address[46]~reg0_q\,
	datad => \Selector20~0_combout\,
	combout => \Selector21~0_combout\);

-- Location: FF_X13_Y19_N27
\mac_address[46]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector21~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mac_address[46]~reg0_q\);

-- Location: LCCOMB_X13_Y19_N20
\received_mac[47]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \received_mac[47]~feeder_combout\ = \Selector123~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Selector123~0_combout\,
	combout => \received_mac[47]~feeder_combout\);

-- Location: FF_X13_Y19_N21
\received_mac[47]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \received_mac[47]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \received_mac[42]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => received_mac(47));

-- Location: LCCOMB_X12_Y20_N30
\Selector20~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector20~1_combout\ = (\mac_address~0_combout\ & ((\mac_address[47]~reg0_q\) # ((received_mac(47) & \Selector20~0_combout\)))) # (!\mac_address~0_combout\ & (received_mac(47) & ((\Selector20~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mac_address~0_combout\,
	datab => received_mac(47),
	datac => \mac_address[47]~reg0_q\,
	datad => \Selector20~0_combout\,
	combout => \Selector20~1_combout\);

-- Location: FF_X12_Y20_N31
\mac_address[47]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector20~1_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mac_address[47]~reg0_q\);

-- Location: LCCOMB_X10_Y19_N30
\Selector18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector18~0_combout\ = (\current_state.IDLE~q\ & (((\busy~reg0_q\ & \current_state.DONE_STATE~q\)))) # (!\current_state.IDLE~q\ & ((\resolve~input_o\) # ((\busy~reg0_q\ & \current_state.DONE_STATE~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.IDLE~q\,
	datab => \resolve~input_o\,
	datac => \busy~reg0_q\,
	datad => \current_state.DONE_STATE~q\,
	combout => \Selector18~0_combout\);

-- Location: LCCOMB_X10_Y19_N8
\Selector18~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector18~1_combout\ = (\current_state.WAITING_FOR_REPLY~q\) # ((\current_state.ARP_REQUEST~q\) # ((\Selector18~0_combout\) # (\Selector20~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.WAITING_FOR_REPLY~q\,
	datab => \current_state.ARP_REQUEST~q\,
	datac => \Selector18~0_combout\,
	datad => \Selector20~0_combout\,
	combout => \Selector18~1_combout\);

-- Location: FF_X10_Y19_N9
\busy~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector18~1_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \busy~reg0_q\);

-- Location: LCCOMB_X11_Y19_N24
\Selector17~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector17~6_combout\ = (\Selector17~4_combout\) # ((!\Selector72~1_combout\ & ((\current_state.RECEIVING_REPLY~q\) # (\current_state.IGNORE~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.RECEIVING_REPLY~q\,
	datab => \current_state.IGNORE~q\,
	datac => \Selector17~4_combout\,
	datad => \Selector72~1_combout\,
	combout => \Selector17~6_combout\);

-- Location: FF_X11_Y19_N25
\in_ready~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector17~6_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \in_ready~reg0_q\);

-- Location: LCCOMB_X7_Y19_N10
\Equal3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal3~1_combout\ = (byte_counter(3) & (!byte_counter(2) & \Equal2~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => byte_counter(3),
	datac => byte_counter(2),
	datad => \Equal2~2_combout\,
	combout => \Equal3~1_combout\);

-- Location: LCCOMB_X5_Y19_N2
\Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector4~0_combout\ = (byte_counter(0)) # ((!byte_counter(1)) # (!\Equal3~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_counter(0),
	datab => \Equal3~1_combout\,
	datad => byte_counter(1),
	combout => \Selector4~0_combout\);

-- Location: LCCOMB_X8_Y19_N14
\Equal2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~1_combout\ = (!byte_counter(6) & (!byte_counter(3) & (!byte_counter(5) & !byte_counter(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_counter(6),
	datab => byte_counter(3),
	datac => byte_counter(5),
	datad => byte_counter(7),
	combout => \Equal2~1_combout\);

-- Location: LCCOMB_X8_Y19_N28
\LessThan1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~2_combout\ = (byte_counter(4)) # (((byte_counter(1) & byte_counter(2))) # (!\Equal2~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_counter(4),
	datab => \Equal2~1_combout\,
	datac => byte_counter(1),
	datad => byte_counter(2),
	combout => \LessThan1~2_combout\);

-- Location: LCCOMB_X5_Y19_N12
\Selector7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector7~0_combout\ = (((\Equal30~0_combout\ & stored_ip(0))) # (!\LessThan1~2_combout\)) # (!\Selector4~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal30~0_combout\,
	datab => \Selector4~0_combout\,
	datac => \LessThan1~2_combout\,
	datad => stored_ip(0),
	combout => \Selector7~0_combout\);

-- Location: LCCOMB_X5_Y19_N30
\Selector6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector6~0_combout\ = (byte_counter(0)) # ((byte_counter(1)) # (!\Equal3~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_counter(0),
	datac => \Equal3~1_combout\,
	datad => byte_counter(1),
	combout => \Selector6~0_combout\);

-- Location: LCCOMB_X7_Y19_N18
\Selector7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector7~2_combout\ = (!byte_counter(7) & (byte_counter(1) & (!byte_counter(6) & !byte_counter(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_counter(7),
	datab => byte_counter(1),
	datac => byte_counter(6),
	datad => byte_counter(5),
	combout => \Selector7~2_combout\);

-- Location: LCCOMB_X9_Y19_N12
\Selector7~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector7~3_combout\ = (byte_counter(3) & (byte_counter(2) & (byte_counter(0) $ (byte_counter(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_counter(0),
	datab => byte_counter(4),
	datac => byte_counter(3),
	datad => byte_counter(2),
	combout => \Selector7~3_combout\);

-- Location: LCCOMB_X6_Y19_N14
\Equal27~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal27~1_combout\ = (\Equal27~0_combout\ & (!byte_counter(3) & (!byte_counter(0) & \Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal27~0_combout\,
	datab => byte_counter(3),
	datac => byte_counter(0),
	datad => \Equal2~0_combout\,
	combout => \Equal27~1_combout\);

-- Location: LCCOMB_X8_Y19_N20
\Selector82~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector82~0_combout\ = (stored_ip(24) & ((\Equal27~1_combout\) # ((\Selector7~2_combout\ & \Selector7~3_combout\)))) # (!stored_ip(24) & (\Selector7~2_combout\ & (\Selector7~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => stored_ip(24),
	datab => \Selector7~2_combout\,
	datac => \Selector7~3_combout\,
	datad => \Equal27~1_combout\,
	combout => \Selector82~0_combout\);

-- Location: LCCOMB_X6_Y19_N0
\Equal29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal29~0_combout\ = (!byte_counter(1) & (!byte_counter(0) & (\Equal3~0_combout\ & \Equal27~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_counter(1),
	datab => byte_counter(0),
	datac => \Equal3~0_combout\,
	datad => \Equal27~0_combout\,
	combout => \Equal29~0_combout\);

-- Location: LCCOMB_X7_Y19_N12
\Equal28~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal28~0_combout\ = (!byte_counter(3) & (byte_counter(0) & (\Equal2~0_combout\ & \Equal27~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_counter(3),
	datab => byte_counter(0),
	datac => \Equal2~0_combout\,
	datad => \Equal27~0_combout\,
	combout => \Equal28~0_combout\);

-- Location: LCCOMB_X6_Y20_N24
\Selector7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector7~1_combout\ = (stored_ip(16) & ((\Equal28~0_combout\) # ((stored_ip(8) & \Equal29~0_combout\)))) # (!stored_ip(16) & (stored_ip(8) & (\Equal29~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => stored_ip(16),
	datab => stored_ip(8),
	datac => \Equal29~0_combout\,
	datad => \Equal28~0_combout\,
	combout => \Selector7~1_combout\);

-- Location: LCCOMB_X5_Y19_N0
\Selector82~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector82~1_combout\ = (\Selector6~0_combout\ & (!\Mux1~0_combout\ & (!\Selector82~0_combout\ & !\Selector7~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector6~0_combout\,
	datab => \Mux1~0_combout\,
	datac => \Selector82~0_combout\,
	datad => \Selector7~1_combout\,
	combout => \Selector82~1_combout\);

-- Location: LCCOMB_X5_Y19_N4
\Selector82~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector82~2_combout\ = ((!\last_byte_sent~q\ & ((\Selector7~0_combout\) # (!\Selector82~1_combout\)))) # (!\current_state.IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.IDLE~q\,
	datab => \last_byte_sent~q\,
	datac => \Selector7~0_combout\,
	datad => \Selector82~1_combout\,
	combout => \Selector82~2_combout\);

-- Location: LCCOMB_X4_Y19_N0
\Selector75~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector75~2_combout\ = (\current_state.IDLE~q\ & (\current_state.ARP_REQUEST~q\ & ((\last_byte_sent~q\) # (\out_ready~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \last_byte_sent~q\,
	datab => \current_state.IDLE~q\,
	datac => \out_ready~input_o\,
	datad => \current_state.ARP_REQUEST~q\,
	combout => \Selector75~2_combout\);

-- Location: LCCOMB_X4_Y19_N28
\Selector75~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector75~8_combout\ = (\Selector75~2_combout\) # ((\resolve~input_o\ & (\out_ready~input_o\ & !\current_state.IDLE~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \resolve~input_o\,
	datab => \out_ready~input_o\,
	datac => \current_state.IDLE~q\,
	datad => \Selector75~2_combout\,
	combout => \Selector75~8_combout\);

-- Location: FF_X5_Y19_N5
\out_data[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector82~2_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \Selector75~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \out_data[0]~reg0_q\);

-- Location: LCCOMB_X6_Y19_N20
\Selector6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector6~2_combout\ = (stored_ip(17) & ((\Equal28~0_combout\) # ((stored_ip(9) & \Equal29~0_combout\)))) # (!stored_ip(17) & (stored_ip(9) & ((\Equal29~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => stored_ip(17),
	datab => stored_ip(9),
	datac => \Equal28~0_combout\,
	datad => \Equal29~0_combout\,
	combout => \Selector6~2_combout\);

-- Location: LCCOMB_X4_Y19_N26
\Selector6~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector6~3_combout\ = ((\Selector6~2_combout\) # ((\Equal27~1_combout\ & stored_ip(25)))) # (!\Selector6~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal27~1_combout\,
	datab => stored_ip(25),
	datac => \Selector6~0_combout\,
	datad => \Selector6~2_combout\,
	combout => \Selector6~3_combout\);

-- Location: LCCOMB_X7_Y19_N0
\Equal24~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal24~1_combout\ = (byte_counter(2) & (byte_counter(3) & !byte_counter(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_counter(2),
	datab => byte_counter(3),
	datac => byte_counter(1),
	combout => \Equal24~1_combout\);

-- Location: LCCOMB_X9_Y19_N22
\Equal8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal8~0_combout\ = (byte_counter(0) & (!byte_counter(4) & (\Equal24~1_combout\ & \Equal2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_counter(0),
	datab => byte_counter(4),
	datac => \Equal24~1_combout\,
	datad => \Equal2~2_combout\,
	combout => \Equal8~0_combout\);

-- Location: LCCOMB_X9_Y19_N16
\Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector5~0_combout\ = (!\Equal8~0_combout\ & ((byte_counter(0)) # ((byte_counter(2)) # (!\Equal13~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_counter(0),
	datab => byte_counter(2),
	datac => \Equal8~0_combout\,
	datad => \Equal13~0_combout\,
	combout => \Selector5~0_combout\);

-- Location: LCCOMB_X5_Y20_N24
\Equal26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal26~0_combout\ = (byte_counter(3) & (byte_counter(0) & byte_counter(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_counter(3),
	datab => byte_counter(0),
	datad => byte_counter(2),
	combout => \Equal26~0_combout\);

-- Location: LCCOMB_X8_Y19_N26
\Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = (byte_counter(4)) # (((!byte_counter(0) & \Equal2~0_combout\)) # (!\Equal2~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_counter(4),
	datab => byte_counter(0),
	datac => \Equal2~1_combout\,
	datad => \Equal2~0_combout\,
	combout => \Selector3~0_combout\);

-- Location: LCCOMB_X8_Y19_N2
\Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = ((!\Equal3~1_combout\) # (!byte_counter(1))) # (!byte_counter(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => byte_counter(0),
	datac => byte_counter(1),
	datad => \Equal3~1_combout\,
	combout => \Selector1~0_combout\);

-- Location: LCCOMB_X9_Y19_N20
\Selector3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector3~1_combout\ = (\Selector3~0_combout\ & (\Equal18~0_combout\ & \Selector1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector3~0_combout\,
	datac => \Equal18~0_combout\,
	datad => \Selector1~0_combout\,
	combout => \Selector3~1_combout\);

-- Location: LCCOMB_X4_Y19_N18
\Selector4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector4~1_combout\ = (\Selector3~1_combout\ & (((!\Equal26~0_combout\) # (!byte_counter(4))) # (!\Selector7~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector7~2_combout\,
	datab => byte_counter(4),
	datac => \Equal26~0_combout\,
	datad => \Selector3~1_combout\,
	combout => \Selector4~1_combout\);

-- Location: LCCOMB_X4_Y19_N20
\Selector6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector6~1_combout\ = (((stored_ip(1) & \Equal30~0_combout\)) # (!\Selector4~1_combout\)) # (!\Selector5~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => stored_ip(1),
	datab => \Equal30~0_combout\,
	datac => \Selector5~0_combout\,
	datad => \Selector4~1_combout\,
	combout => \Selector6~1_combout\);

-- Location: LCCOMB_X4_Y19_N2
\Selector81~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector81~0_combout\ = ((!\last_byte_sent~q\ & ((\Selector6~3_combout\) # (\Selector6~1_combout\)))) # (!\current_state.IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \last_byte_sent~q\,
	datab => \current_state.IDLE~q\,
	datac => \Selector6~3_combout\,
	datad => \Selector6~1_combout\,
	combout => \Selector81~0_combout\);

-- Location: FF_X4_Y19_N3
\out_data[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector81~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \Selector75~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \out_data[1]~reg0_q\);

-- Location: LCCOMB_X9_Y19_N14
\Selector80~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector80~4_combout\ = (!\Equal8~0_combout\ & ((byte_counter(2)) # (!\Equal13~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => byte_counter(2),
	datac => \Equal8~0_combout\,
	datad => \Equal13~0_combout\,
	combout => \Selector80~4_combout\);

-- Location: LCCOMB_X5_Y19_N6
\Selector3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector3~2_combout\ = ((byte_counter(1)) # (!\Equal3~1_combout\)) # (!byte_counter(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_counter(0),
	datac => \Equal3~1_combout\,
	datad => byte_counter(1),
	combout => \Selector3~2_combout\);

-- Location: LCCOMB_X5_Y19_N8
\Selector5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector5~2_combout\ = (\Equal28~0_combout\ & ((stored_ip(18)) # ((stored_ip(26) & \Equal27~1_combout\)))) # (!\Equal28~0_combout\ & (((stored_ip(26) & \Equal27~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal28~0_combout\,
	datab => stored_ip(18),
	datac => stored_ip(26),
	datad => \Equal27~1_combout\,
	combout => \Selector5~2_combout\);

-- Location: LCCOMB_X6_Y20_N28
\Selector5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector5~1_combout\ = (stored_ip(10) & ((\Equal29~0_combout\) # ((stored_ip(2) & \Equal30~0_combout\)))) # (!stored_ip(10) & (((stored_ip(2) & \Equal30~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => stored_ip(10),
	datab => \Equal29~0_combout\,
	datac => stored_ip(2),
	datad => \Equal30~0_combout\,
	combout => \Selector5~1_combout\);

-- Location: LCCOMB_X4_Y19_N24
\Selector1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector1~1_combout\ = (!\Equal5~0_combout\ & \LessThan1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal5~0_combout\,
	datad => \LessThan1~2_combout\,
	combout => \Selector1~1_combout\);

-- Location: LCCOMB_X5_Y19_N20
\Selector80~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector80~2_combout\ = (\Selector3~2_combout\ & (!\Selector5~2_combout\ & (!\Selector5~1_combout\ & \Selector1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector3~2_combout\,
	datab => \Selector5~2_combout\,
	datac => \Selector5~1_combout\,
	datad => \Selector1~1_combout\,
	combout => \Selector80~2_combout\);

-- Location: LCCOMB_X5_Y19_N18
\Selector80~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector80~3_combout\ = ((!\last_byte_sent~q\ & ((!\Selector80~2_combout\) # (!\Selector80~4_combout\)))) # (!\current_state.IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector80~4_combout\,
	datab => \current_state.IDLE~q\,
	datac => \last_byte_sent~q\,
	datad => \Selector80~2_combout\,
	combout => \Selector80~3_combout\);

-- Location: FF_X5_Y19_N19
\out_data[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector80~3_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \Selector75~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \out_data[2]~reg0_q\);

-- Location: LCCOMB_X6_Y19_N6
\Selector4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector4~3_combout\ = (byte_counter(2) & (byte_counter(3) & !byte_counter(4))) # (!byte_counter(2) & (!byte_counter(3) & byte_counter(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_counter(2),
	datab => byte_counter(3),
	datad => byte_counter(4),
	combout => \Selector4~3_combout\);

-- Location: LCCOMB_X7_Y19_N20
\Selector4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector4~4_combout\ = (!byte_counter(0) & (!byte_counter(1) & \Equal2~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => byte_counter(0),
	datac => byte_counter(1),
	datad => \Equal2~2_combout\,
	combout => \Selector4~4_combout\);

-- Location: LCCOMB_X5_Y19_N22
\Selector4~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector4~5_combout\ = (\Selector4~3_combout\ & ((\Selector4~4_combout\) # ((stored_ip(27) & \Equal27~1_combout\)))) # (!\Selector4~3_combout\ & (stored_ip(27) & ((\Equal27~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector4~3_combout\,
	datab => stored_ip(27),
	datac => \Selector4~4_combout\,
	datad => \Equal27~1_combout\,
	combout => \Selector4~5_combout\);

-- Location: LCCOMB_X5_Y19_N28
\Selector4~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector4~6_combout\ = (\Selector6~0_combout\ & (\Selector3~2_combout\ & ((!\Equal24~0_combout\) # (!\Equal24~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal24~1_combout\,
	datab => \Equal24~0_combout\,
	datac => \Selector6~0_combout\,
	datad => \Selector3~2_combout\,
	combout => \Selector4~6_combout\);

-- Location: LCCOMB_X5_Y19_N14
\Selector4~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector4~7_combout\ = (\Selector4~5_combout\) # (((stored_ip(19) & \Equal28~0_combout\)) # (!\Selector4~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector4~5_combout\,
	datab => stored_ip(19),
	datac => \Equal28~0_combout\,
	datad => \Selector4~6_combout\,
	combout => \Selector4~7_combout\);

-- Location: LCCOMB_X6_Y19_N24
\Selector4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector4~2_combout\ = (stored_ip(11) & ((\Equal29~0_combout\) # ((stored_ip(3) & \Equal30~0_combout\)))) # (!stored_ip(11) & (stored_ip(3) & (\Equal30~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => stored_ip(11),
	datab => stored_ip(3),
	datac => \Equal30~0_combout\,
	datad => \Equal29~0_combout\,
	combout => \Selector4~2_combout\);

-- Location: LCCOMB_X4_Y19_N10
\Selector4~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector4~8_combout\ = ((\Selector4~7_combout\) # ((\Selector4~2_combout\) # (!\Selector4~1_combout\))) # (!\Selector4~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector4~0_combout\,
	datab => \Selector4~7_combout\,
	datac => \Selector4~2_combout\,
	datad => \Selector4~1_combout\,
	combout => \Selector4~8_combout\);

-- Location: LCCOMB_X4_Y19_N4
\Selector79~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector79~0_combout\ = ((!\last_byte_sent~q\ & \Selector4~8_combout\)) # (!\current_state.IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \last_byte_sent~q\,
	datac => \current_state.IDLE~q\,
	datad => \Selector4~8_combout\,
	combout => \Selector79~0_combout\);

-- Location: FF_X4_Y19_N5
\out_data[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector79~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \Selector75~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \out_data[3]~reg0_q\);

-- Location: LCCOMB_X5_Y20_N30
\Selector3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector3~4_combout\ = (\Equal28~0_combout\ & ((stored_ip(20)) # ((\Equal27~1_combout\ & stored_ip(28))))) # (!\Equal28~0_combout\ & (\Equal27~1_combout\ & ((stored_ip(28)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal28~0_combout\,
	datab => \Equal27~1_combout\,
	datac => stored_ip(20),
	datad => stored_ip(28),
	combout => \Selector3~4_combout\);

-- Location: LCCOMB_X6_Y20_N12
\Selector3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector3~3_combout\ = (stored_ip(12) & ((\Equal29~0_combout\) # ((stored_ip(4) & \Equal30~0_combout\)))) # (!stored_ip(12) & (((stored_ip(4) & \Equal30~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => stored_ip(12),
	datab => \Equal29~0_combout\,
	datac => stored_ip(4),
	datad => \Equal30~0_combout\,
	combout => \Selector3~3_combout\);

-- Location: LCCOMB_X5_Y19_N16
\Selector3~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector3~5_combout\ = ((\Selector3~4_combout\) # (\Selector3~3_combout\)) # (!\Selector3~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector3~2_combout\,
	datac => \Selector3~4_combout\,
	datad => \Selector3~3_combout\,
	combout => \Selector3~5_combout\);

-- Location: LCCOMB_X5_Y19_N24
\Selector78~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector78~0_combout\ = ((!\last_byte_sent~q\ & ((\Selector3~5_combout\) # (!\Selector3~1_combout\)))) # (!\current_state.IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector3~1_combout\,
	datab => \current_state.IDLE~q\,
	datac => \last_byte_sent~q\,
	datad => \Selector3~5_combout\,
	combout => \Selector78~0_combout\);

-- Location: FF_X5_Y19_N25
\out_data[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector78~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \Selector75~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \out_data[4]~reg0_q\);

-- Location: LCCOMB_X5_Y20_N4
\Selector2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector2~1_combout\ = (stored_ip(21) & ((\Equal28~0_combout\) # ((\Equal27~1_combout\ & stored_ip(29))))) # (!stored_ip(21) & (\Equal27~1_combout\ & (stored_ip(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => stored_ip(21),
	datab => \Equal27~1_combout\,
	datac => stored_ip(29),
	datad => \Equal28~0_combout\,
	combout => \Selector2~1_combout\);

-- Location: LCCOMB_X6_Y20_N26
\Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = (stored_ip(5) & ((\Equal30~0_combout\) # ((stored_ip(13) & \Equal29~0_combout\)))) # (!stored_ip(5) & (((stored_ip(13) & \Equal29~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => stored_ip(5),
	datab => \Equal30~0_combout\,
	datac => stored_ip(13),
	datad => \Equal29~0_combout\,
	combout => \Selector2~0_combout\);

-- Location: LCCOMB_X5_Y20_N28
\Selector2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector2~2_combout\ = (\Selector2~1_combout\) # ((\Selector2~0_combout\) # (!\LessThan1~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector2~1_combout\,
	datab => \LessThan1~2_combout\,
	datad => \Selector2~0_combout\,
	combout => \Selector2~2_combout\);

-- Location: LCCOMB_X5_Y20_N16
\Selector77~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector77~0_combout\ = ((!\last_byte_sent~q\ & ((\Selector2~2_combout\) # (!\Selector4~6_combout\)))) # (!\current_state.IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \last_byte_sent~q\,
	datab => \Selector4~6_combout\,
	datac => \current_state.IDLE~q\,
	datad => \Selector2~2_combout\,
	combout => \Selector77~0_combout\);

-- Location: FF_X5_Y20_N17
\out_data[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector77~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \Selector75~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \out_data[5]~reg0_q\);

-- Location: LCCOMB_X8_Y19_N24
\Equal23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal23~0_combout\ = (byte_counter(4) & (\Equal2~2_combout\ & (!byte_counter(0) & \Equal24~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_counter(4),
	datab => \Equal2~2_combout\,
	datac => byte_counter(0),
	datad => \Equal24~1_combout\,
	combout => \Equal23~0_combout\);

-- Location: LCCOMB_X6_Y19_N8
\Selector1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector1~2_combout\ = (stored_ip(6) & ((\Equal30~0_combout\) # ((stored_ip(14) & \Equal29~0_combout\)))) # (!stored_ip(6) & (((stored_ip(14) & \Equal29~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => stored_ip(6),
	datab => \Equal30~0_combout\,
	datac => stored_ip(14),
	datad => \Equal29~0_combout\,
	combout => \Selector1~2_combout\);

-- Location: LCCOMB_X4_Y19_N8
\Selector1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector1~3_combout\ = (stored_ip(22) & ((\Equal28~0_combout\) # ((stored_ip(30) & \Equal27~1_combout\)))) # (!stored_ip(22) & (stored_ip(30) & ((\Equal27~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => stored_ip(22),
	datab => stored_ip(30),
	datac => \Equal28~0_combout\,
	datad => \Equal27~1_combout\,
	combout => \Selector1~3_combout\);

-- Location: LCCOMB_X4_Y19_N22
\Selector1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector1~4_combout\ = (\Equal23~0_combout\) # ((\Selector1~2_combout\) # ((\Selector1~3_combout\) # (!\Selector1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal23~0_combout\,
	datab => \Selector1~2_combout\,
	datac => \Selector1~3_combout\,
	datad => \Selector1~1_combout\,
	combout => \Selector1~4_combout\);

-- Location: LCCOMB_X4_Y19_N14
\Selector76~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector76~0_combout\ = ((!\last_byte_sent~q\ & \Selector1~4_combout\)) # (!\current_state.IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \last_byte_sent~q\,
	datab => \current_state.IDLE~q\,
	datac => \Selector1~4_combout\,
	combout => \Selector76~0_combout\);

-- Location: FF_X4_Y19_N15
\out_data[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector76~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \Selector75~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \out_data[6]~reg0_q\);

-- Location: LCCOMB_X8_Y19_N10
\Selector75~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector75~5_combout\ = (byte_counter(4) & (\Equal2~2_combout\ & \Equal24~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_counter(4),
	datab => \Equal2~2_combout\,
	datad => \Equal24~1_combout\,
	combout => \Selector75~5_combout\);

-- Location: LCCOMB_X6_Y19_N16
\Selector75~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector75~3_combout\ = (stored_ip(7) & ((\Equal30~0_combout\) # ((stored_ip(15) & \Equal29~0_combout\)))) # (!stored_ip(7) & (((stored_ip(15) & \Equal29~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => stored_ip(7),
	datab => \Equal30~0_combout\,
	datac => stored_ip(15),
	datad => \Equal29~0_combout\,
	combout => \Selector75~3_combout\);

-- Location: LCCOMB_X5_Y20_N12
\Selector75~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector75~4_combout\ = (stored_ip(23) & ((\Equal28~0_combout\) # ((\Equal27~1_combout\ & stored_ip(31))))) # (!stored_ip(23) & (\Equal27~1_combout\ & (stored_ip(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => stored_ip(23),
	datab => \Equal27~1_combout\,
	datac => stored_ip(31),
	datad => \Equal28~0_combout\,
	combout => \Selector75~4_combout\);

-- Location: LCCOMB_X5_Y20_N0
\Selector75~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector75~6_combout\ = (\Selector75~5_combout\) # (((\Selector75~3_combout\) # (\Selector75~4_combout\)) # (!\LessThan1~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector75~5_combout\,
	datab => \LessThan1~2_combout\,
	datac => \Selector75~3_combout\,
	datad => \Selector75~4_combout\,
	combout => \Selector75~6_combout\);

-- Location: LCCOMB_X5_Y20_N6
\Selector75~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector75~7_combout\ = ((!\last_byte_sent~q\ & \Selector75~6_combout\)) # (!\current_state.IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \last_byte_sent~q\,
	datac => \current_state.IDLE~q\,
	datad => \Selector75~6_combout\,
	combout => \Selector75~7_combout\);

-- Location: FF_X5_Y20_N7
\out_data[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector75~7_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \Selector75~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \out_data[7]~reg0_q\);

-- Location: LCCOMB_X4_Y19_N12
\Selector16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector16~0_combout\ = (\resolve~input_o\ & (((\current_state.ARP_REQUEST~q\ & !\last_byte_sent~q\)) # (!\current_state.IDLE~q\))) # (!\resolve~input_o\ & (\current_state.ARP_REQUEST~q\ & ((!\last_byte_sent~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \resolve~input_o\,
	datab => \current_state.ARP_REQUEST~q\,
	datac => \current_state.IDLE~q\,
	datad => \last_byte_sent~q\,
	combout => \Selector16~0_combout\);

-- Location: FF_X4_Y19_N13
\out_valid~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector16~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \out_valid~reg0_q\);

-- Location: LCCOMB_X5_Y20_N22
\Selector74~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector74~0_combout\ = (!byte_counter(1) & (!byte_counter(0) & (\current_state.ARP_REQUEST~q\ & !byte_counter(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_counter(1),
	datab => byte_counter(0),
	datac => \current_state.ARP_REQUEST~q\,
	datad => byte_counter(2),
	combout => \Selector74~0_combout\);

-- Location: LCCOMB_X4_Y19_N30
\Selector74~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector74~1_combout\ = (\Selector18~2_combout\) # ((\Equal2~1_combout\ & (!byte_counter(4) & \Selector74~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~1_combout\,
	datab => byte_counter(4),
	datac => \Selector18~2_combout\,
	datad => \Selector74~0_combout\,
	combout => \Selector74~1_combout\);

-- Location: FF_X4_Y19_N31
\out_sop~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector74~1_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \out_sop~reg0_q\);

-- Location: LCCOMB_X4_Y19_N16
\out_eop~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_eop~0_combout\ = (!\last_byte_sent~q\ & \Equal30~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \last_byte_sent~q\,
	datad => \Equal30~0_combout\,
	combout => \out_eop~0_combout\);

-- Location: FF_X4_Y19_N17
\out_eop~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \out_eop~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \ALT_INV_current_state.ARP_REQUEST~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \out_eop~reg0_q\);

-- Location: LCCOMB_X11_Y19_N22
WideOr20 : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr20~combout\ = (\current_state.WAITING_FOR_REPLY~q\) # ((\current_state.DONE_STATE~q\) # (!\current_state.IDLE~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.WAITING_FOR_REPLY~q\,
	datac => \current_state.IDLE~q\,
	datad => \current_state.DONE_STATE~q\,
	combout => \WideOr20~combout\);

-- Location: LCCOMB_X11_Y20_N10
\state~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \state~0_combout\ = (!\current_state.WAITING_FOR_REPLY~q\ & !\current_state.RECEIVING_REPLY~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \current_state.WAITING_FOR_REPLY~q\,
	datad => \current_state.RECEIVING_REPLY~q\,
	combout => \state~0_combout\);

-- Location: LCCOMB_X9_Y19_N24
\state~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \state~1_combout\ = (!\current_state.IGNORE~q\ & !\current_state.DONE_STATE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.IGNORE~q\,
	datad => \current_state.DONE_STATE~q\,
	combout => \state~1_combout\);

ww_done <= \done~output_o\;

ww_mac_address(0) <= \mac_address[0]~output_o\;

ww_mac_address(1) <= \mac_address[1]~output_o\;

ww_mac_address(2) <= \mac_address[2]~output_o\;

ww_mac_address(3) <= \mac_address[3]~output_o\;

ww_mac_address(4) <= \mac_address[4]~output_o\;

ww_mac_address(5) <= \mac_address[5]~output_o\;

ww_mac_address(6) <= \mac_address[6]~output_o\;

ww_mac_address(7) <= \mac_address[7]~output_o\;

ww_mac_address(8) <= \mac_address[8]~output_o\;

ww_mac_address(9) <= \mac_address[9]~output_o\;

ww_mac_address(10) <= \mac_address[10]~output_o\;

ww_mac_address(11) <= \mac_address[11]~output_o\;

ww_mac_address(12) <= \mac_address[12]~output_o\;

ww_mac_address(13) <= \mac_address[13]~output_o\;

ww_mac_address(14) <= \mac_address[14]~output_o\;

ww_mac_address(15) <= \mac_address[15]~output_o\;

ww_mac_address(16) <= \mac_address[16]~output_o\;

ww_mac_address(17) <= \mac_address[17]~output_o\;

ww_mac_address(18) <= \mac_address[18]~output_o\;

ww_mac_address(19) <= \mac_address[19]~output_o\;

ww_mac_address(20) <= \mac_address[20]~output_o\;

ww_mac_address(21) <= \mac_address[21]~output_o\;

ww_mac_address(22) <= \mac_address[22]~output_o\;

ww_mac_address(23) <= \mac_address[23]~output_o\;

ww_mac_address(24) <= \mac_address[24]~output_o\;

ww_mac_address(25) <= \mac_address[25]~output_o\;

ww_mac_address(26) <= \mac_address[26]~output_o\;

ww_mac_address(27) <= \mac_address[27]~output_o\;

ww_mac_address(28) <= \mac_address[28]~output_o\;

ww_mac_address(29) <= \mac_address[29]~output_o\;

ww_mac_address(30) <= \mac_address[30]~output_o\;

ww_mac_address(31) <= \mac_address[31]~output_o\;

ww_mac_address(32) <= \mac_address[32]~output_o\;

ww_mac_address(33) <= \mac_address[33]~output_o\;

ww_mac_address(34) <= \mac_address[34]~output_o\;

ww_mac_address(35) <= \mac_address[35]~output_o\;

ww_mac_address(36) <= \mac_address[36]~output_o\;

ww_mac_address(37) <= \mac_address[37]~output_o\;

ww_mac_address(38) <= \mac_address[38]~output_o\;

ww_mac_address(39) <= \mac_address[39]~output_o\;

ww_mac_address(40) <= \mac_address[40]~output_o\;

ww_mac_address(41) <= \mac_address[41]~output_o\;

ww_mac_address(42) <= \mac_address[42]~output_o\;

ww_mac_address(43) <= \mac_address[43]~output_o\;

ww_mac_address(44) <= \mac_address[44]~output_o\;

ww_mac_address(45) <= \mac_address[45]~output_o\;

ww_mac_address(46) <= \mac_address[46]~output_o\;

ww_mac_address(47) <= \mac_address[47]~output_o\;

ww_busy <= \busy~output_o\;

ww_in_ready <= \in_ready~output_o\;

ww_out_data(0) <= \out_data[0]~output_o\;

ww_out_data(1) <= \out_data[1]~output_o\;

ww_out_data(2) <= \out_data[2]~output_o\;

ww_out_data(3) <= \out_data[3]~output_o\;

ww_out_data(4) <= \out_data[4]~output_o\;

ww_out_data(5) <= \out_data[5]~output_o\;

ww_out_data(6) <= \out_data[6]~output_o\;

ww_out_data(7) <= \out_data[7]~output_o\;

ww_out_valid <= \out_valid~output_o\;

ww_out_sop <= \out_sop~output_o\;

ww_out_eop <= \out_eop~output_o\;

ww_state(0) <= \state[0]~output_o\;

ww_state(1) <= \state[1]~output_o\;

ww_state(2) <= \state[2]~output_o\;

ww_error_internal <= \error_internal~output_o\;
END structure;


