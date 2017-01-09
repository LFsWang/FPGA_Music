-- Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2016.2 (lin64) Build 1577090 Thu Jun  2 16:32:35 MDT 2016
-- Date        : Mon Jan  9 21:34:24 2017
-- Host        : leinadv running 64-bit Ubuntu 16.04.1 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/leinadv/Desktop/Vivado/HardwareFinal/HardwareFinal.srcs/sources_1/ip/KeyboardCtrl_0/KeyboardCtrl_0_sim_netlist.vhdl
-- Design      : KeyboardCtrl_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity KeyboardCtrl_0_Ps2Interface is
  port (
    rx_valid : out STD_LOGIC;
    err : out STD_LOGIC;
    is_extend_reg : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 7 downto 0 );
    D : out STD_LOGIC_VECTOR ( 2 downto 0 );
    tx_valid : out STD_LOGIC;
    is_break_reg : out STD_LOGIC;
    valid_reg : out STD_LOGIC;
    PS2_CLK : inout STD_LOGIC;
    PS2_DATA : inout STD_LOGIC;
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    \out\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    is_extend : in STD_LOGIC;
    tx_valid_reg : in STD_LOGIC;
    \tx_data_reg[2]\ : in STD_LOGIC;
    \tx_data_reg[7]\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of KeyboardCtrl_0_Ps2Interface : entity is "Ps2Interface";
end KeyboardCtrl_0_Ps2Interface;

architecture STRUCTURE of KeyboardCtrl_0_Ps2Interface is
  signal \FSM_onehot_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[0]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[0]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[0]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[0]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[10]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[10]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[10]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[11]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[11]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[11]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[12]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[12]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[13]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[14]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[14]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[2]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[3]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[4]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[4]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[5]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[5]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[5]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[5]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[6]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[6]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[6]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[6]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[7]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[8]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[8]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[8]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[8]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[8]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[8]_i_6_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[9]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[0]\ : STD_LOGIC;
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of \FSM_onehot_state_reg_n_0_[0]\ : signal is "yes";
  signal \FSM_onehot_state_reg_n_0_[10]\ : STD_LOGIC;
  attribute RTL_KEEP of \FSM_onehot_state_reg_n_0_[10]\ : signal is "yes";
  signal \FSM_onehot_state_reg_n_0_[11]\ : STD_LOGIC;
  attribute RTL_KEEP of \FSM_onehot_state_reg_n_0_[11]\ : signal is "yes";
  signal \FSM_onehot_state_reg_n_0_[12]\ : STD_LOGIC;
  attribute RTL_KEEP of \FSM_onehot_state_reg_n_0_[12]\ : signal is "yes";
  signal \FSM_onehot_state_reg_n_0_[13]\ : STD_LOGIC;
  attribute RTL_KEEP of \FSM_onehot_state_reg_n_0_[13]\ : signal is "yes";
  signal \FSM_onehot_state_reg_n_0_[14]\ : STD_LOGIC;
  attribute RTL_KEEP of \FSM_onehot_state_reg_n_0_[14]\ : signal is "yes";
  signal \FSM_onehot_state_reg_n_0_[1]\ : STD_LOGIC;
  attribute RTL_KEEP of \FSM_onehot_state_reg_n_0_[1]\ : signal is "yes";
  signal \FSM_onehot_state_reg_n_0_[2]\ : STD_LOGIC;
  attribute RTL_KEEP of \FSM_onehot_state_reg_n_0_[2]\ : signal is "yes";
  signal \FSM_onehot_state_reg_n_0_[3]\ : STD_LOGIC;
  attribute RTL_KEEP of \FSM_onehot_state_reg_n_0_[3]\ : signal is "yes";
  signal \FSM_onehot_state_reg_n_0_[4]\ : STD_LOGIC;
  attribute RTL_KEEP of \FSM_onehot_state_reg_n_0_[4]\ : signal is "yes";
  signal \FSM_onehot_state_reg_n_0_[5]\ : STD_LOGIC;
  attribute RTL_KEEP of \FSM_onehot_state_reg_n_0_[5]\ : signal is "yes";
  signal \FSM_onehot_state_reg_n_0_[6]\ : STD_LOGIC;
  attribute RTL_KEEP of \FSM_onehot_state_reg_n_0_[6]\ : signal is "yes";
  signal \FSM_onehot_state_reg_n_0_[7]\ : STD_LOGIC;
  attribute RTL_KEEP of \FSM_onehot_state_reg_n_0_[7]\ : signal is "yes";
  signal \FSM_onehot_state_reg_n_0_[9]\ : STD_LOGIC;
  attribute RTL_KEEP of \FSM_onehot_state_reg_n_0_[9]\ : signal is "yes";
  signal \FSM_sequential_state[0]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[0]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_6_n_0\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal T0 : STD_LOGIC;
  signal bits_count : STD_LOGIC;
  signal \bits_count[0]_i_1_n_0\ : STD_LOGIC;
  signal \bits_count[1]_i_1_n_0\ : STD_LOGIC;
  signal \bits_count[2]_i_1_n_0\ : STD_LOGIC;
  signal \bits_count[3]_i_2_n_0\ : STD_LOGIC;
  signal \bits_count_reg_n_0_[0]\ : STD_LOGIC;
  signal \bits_count_reg_n_0_[1]\ : STD_LOGIC;
  signal \bits_count_reg_n_0_[2]\ : STD_LOGIC;
  signal \bits_count_reg_n_0_[3]\ : STD_LOGIC;
  signal clk_count : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \clk_count[0]_i_1_n_0\ : STD_LOGIC;
  signal \clk_count[1]_i_1_n_0\ : STD_LOGIC;
  signal \clk_count[2]_i_1_n_0\ : STD_LOGIC;
  signal \clk_count[3]_i_1_n_0\ : STD_LOGIC;
  signal clk_inter : STD_LOGIC;
  signal counter : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal \counter[0]_i_2_n_0\ : STD_LOGIC;
  signal \counter[0]_i_3_n_0\ : STD_LOGIC;
  signal \counter[0]_i_4_n_0\ : STD_LOGIC;
  signal \counter[0]_i_5_n_0\ : STD_LOGIC;
  signal \counter[0]_i_6_n_0\ : STD_LOGIC;
  signal \counter[10]_i_2_n_0\ : STD_LOGIC;
  signal \counter[11]_i_2_n_0\ : STD_LOGIC;
  signal \counter[12]_i_2_n_0\ : STD_LOGIC;
  signal \counter[13]_i_10_n_0\ : STD_LOGIC;
  signal \counter[13]_i_11_n_0\ : STD_LOGIC;
  signal \counter[13]_i_12_n_0\ : STD_LOGIC;
  signal \counter[13]_i_2_n_0\ : STD_LOGIC;
  signal \counter[13]_i_3_n_0\ : STD_LOGIC;
  signal \counter[13]_i_4_n_0\ : STD_LOGIC;
  signal \counter[13]_i_6_n_0\ : STD_LOGIC;
  signal \counter[13]_i_7_n_0\ : STD_LOGIC;
  signal \counter[13]_i_8_n_0\ : STD_LOGIC;
  signal \counter[1]_i_2_n_0\ : STD_LOGIC;
  signal \counter[2]_i_2_n_0\ : STD_LOGIC;
  signal \counter[3]_i_2_n_0\ : STD_LOGIC;
  signal \counter[4]_i_2_n_0\ : STD_LOGIC;
  signal \counter[5]_i_2_n_0\ : STD_LOGIC;
  signal \counter[6]_i_2_n_0\ : STD_LOGIC;
  signal \counter[7]_i_2_n_0\ : STD_LOGIC;
  signal \counter[8]_i_2_n_0\ : STD_LOGIC;
  signal \counter[9]_i_2_n_0\ : STD_LOGIC;
  signal counter_next : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal \counter_reg[12]_i_3_n_0\ : STD_LOGIC;
  signal \counter_reg[12]_i_3_n_1\ : STD_LOGIC;
  signal \counter_reg[12]_i_3_n_2\ : STD_LOGIC;
  signal \counter_reg[12]_i_3_n_3\ : STD_LOGIC;
  signal \counter_reg[4]_i_3_n_0\ : STD_LOGIC;
  signal \counter_reg[4]_i_3_n_1\ : STD_LOGIC;
  signal \counter_reg[4]_i_3_n_2\ : STD_LOGIC;
  signal \counter_reg[4]_i_3_n_3\ : STD_LOGIC;
  signal \counter_reg[8]_i_3_n_0\ : STD_LOGIC;
  signal \counter_reg[8]_i_3_n_1\ : STD_LOGIC;
  signal \counter_reg[8]_i_3_n_2\ : STD_LOGIC;
  signal \counter_reg[8]_i_3_n_3\ : STD_LOGIC;
  signal data1 : STD_LOGIC_VECTOR ( 13 downto 1 );
  signal data_count : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \data_count[0]_i_1_n_0\ : STD_LOGIC;
  signal \data_count[1]_i_1_n_0\ : STD_LOGIC;
  signal \data_count[2]_i_1_n_0\ : STD_LOGIC;
  signal \data_count[3]_i_1_n_0\ : STD_LOGIC;
  signal data_inter : STD_LOGIC;
  signal \^err\ : STD_LOGIC;
  signal err_i_2_n_0 : STD_LOGIC;
  signal err_i_3_n_0 : STD_LOGIC;
  signal err_next : STD_LOGIC;
  signal \frame[10]_i_1_n_0\ : STD_LOGIC;
  signal \frame_reg_n_0_[0]\ : STD_LOGIC;
  signal \frame_reg_n_0_[10]\ : STD_LOGIC;
  signal \frame_reg_n_0_[1]\ : STD_LOGIC;
  signal \frame_reg_n_0_[2]\ : STD_LOGIC;
  signal \frame_reg_n_0_[3]\ : STD_LOGIC;
  signal \frame_reg_n_0_[4]\ : STD_LOGIC;
  signal \frame_reg_n_0_[5]\ : STD_LOGIC;
  signal \frame_reg_n_0_[6]\ : STD_LOGIC;
  signal \frame_reg_n_0_[7]\ : STD_LOGIC;
  signal \frame_reg_n_0_[8]\ : STD_LOGIC;
  signal \frame_reg_n_0_[9]\ : STD_LOGIC;
  signal p_1_in : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal p_1_in_0 : STD_LOGIC;
  attribute RTL_KEEP of p_1_in_0 : signal is "yes";
  signal ps2_clk_en_next : STD_LOGIC;
  signal ps2_clk_in : STD_LOGIC;
  signal ps2_clk_out : STD_LOGIC;
  signal ps2_clk_out_i_2_n_0 : STD_LOGIC;
  signal ps2_clk_out_next : STD_LOGIC;
  signal ps2_clk_s : STD_LOGIC;
  signal ps2_clk_s_i_1_n_0 : STD_LOGIC;
  signal ps2_data_en_inv_i_2_n_0 : STD_LOGIC;
  signal ps2_data_en_next : STD_LOGIC;
  signal ps2_data_en_reg_inv_n_0 : STD_LOGIC;
  signal ps2_data_in : STD_LOGIC;
  signal ps2_data_out : STD_LOGIC;
  signal ps2_data_out_next : STD_LOGIC;
  signal ps2_data_s : STD_LOGIC;
  signal ps2_data_s_i_1_n_0 : STD_LOGIC;
  signal ps2_data_s_reg_n_0 : STD_LOGIC;
  signal \rx_data[7]_i_2_n_0\ : STD_LOGIC;
  signal rx_finish : STD_LOGIC;
  signal \^rx_valid\ : STD_LOGIC;
  signal state1 : STD_LOGIC;
  signal state110_out : STD_LOGIC;
  signal state17_out : STD_LOGIC;
  signal state_next1 : STD_LOGIC;
  signal valid_i_2_n_0 : STD_LOGIC;
  signal valid_i_3_n_0 : STD_LOGIC;
  signal \NLW_counter_reg[13]_i_5_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_counter_reg[13]_i_5_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_state[10]_i_3\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \FSM_onehot_state[11]_i_2\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \FSM_onehot_state[4]_i_2\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \FSM_onehot_state[5]_i_4\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \FSM_onehot_state[6]_i_3\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \FSM_onehot_state[6]_i_4\ : label is "soft_lutpair3";
  attribute KEEP : string;
  attribute KEEP of \FSM_onehot_state_reg[0]\ : label is "yes";
  attribute KEEP of \FSM_onehot_state_reg[10]\ : label is "yes";
  attribute KEEP of \FSM_onehot_state_reg[11]\ : label is "yes";
  attribute KEEP of \FSM_onehot_state_reg[12]\ : label is "yes";
  attribute KEEP of \FSM_onehot_state_reg[13]\ : label is "yes";
  attribute KEEP of \FSM_onehot_state_reg[14]\ : label is "yes";
  attribute KEEP of \FSM_onehot_state_reg[1]\ : label is "yes";
  attribute KEEP of \FSM_onehot_state_reg[2]\ : label is "yes";
  attribute KEEP of \FSM_onehot_state_reg[3]\ : label is "yes";
  attribute KEEP of \FSM_onehot_state_reg[4]\ : label is "yes";
  attribute KEEP of \FSM_onehot_state_reg[5]\ : label is "yes";
  attribute KEEP of \FSM_onehot_state_reg[6]\ : label is "yes";
  attribute KEEP of \FSM_onehot_state_reg[7]\ : label is "yes";
  attribute KEEP of \FSM_onehot_state_reg[8]\ : label is "yes";
  attribute KEEP of \FSM_onehot_state_reg[9]\ : label is "yes";
  attribute SOFT_HLUTNM of \FSM_sequential_state[0]_i_3\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \FSM_sequential_state[1]_i_3\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \FSM_sequential_state[1]_i_4\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \FSM_sequential_state[2]_i_6\ : label is "soft_lutpair1";
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of IOBUF_inst_0 : label is "PRIMITIVE";
  attribute BOX_TYPE of IOBUF_inst_1 : label is "PRIMITIVE";
  attribute SOFT_HLUTNM of \counter[0]_i_5\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \counter[0]_i_6\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \counter[13]_i_12\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of err_i_2 : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of is_break_i_1 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of is_extend_i_1 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of valid_i_2 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of valid_i_3 : label is "soft_lutpair1";
begin
  Q(7 downto 0) <= \^q\(7 downto 0);
  err <= \^err\;
  rx_valid <= \^rx_valid\;
\FSM_onehot_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEAEFFFFEEAAEEAA"
    )
        port map (
      I0 => \FSM_onehot_state[0]_i_2_n_0\,
      I1 => state_next1,
      I2 => \FSM_onehot_state[0]_i_3_n_0\,
      I3 => \FSM_onehot_state[0]_i_4_n_0\,
      I4 => \FSM_onehot_state[0]_i_5_n_0\,
      I5 => \FSM_onehot_state[12]_i_2_n_0\,
      O => \FSM_onehot_state[0]_i_1_n_0\
    );
\FSM_onehot_state[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000100"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      I2 => \FSM_onehot_state_reg_n_0_[3]\,
      I3 => \FSM_onehot_state_reg_n_0_[4]\,
      I4 => \FSM_onehot_state[4]_i_2_n_0\,
      O => \FSM_onehot_state[0]_i_2_n_0\
    );
\FSM_onehot_state[0]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[10]\,
      I1 => \FSM_onehot_state_reg_n_0_[12]\,
      O => \FSM_onehot_state[0]_i_3_n_0\
    );
\FSM_onehot_state[0]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => tx_valid_reg,
      O => \FSM_onehot_state[0]_i_4_n_0\
    );
\FSM_onehot_state[0]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[13]\,
      I1 => \FSM_onehot_state_reg_n_0_[10]\,
      I2 => \FSM_onehot_state_reg_n_0_[12]\,
      I3 => \FSM_onehot_state_reg_n_0_[14]\,
      O => \FSM_onehot_state[0]_i_5_n_0\
    );
\FSM_onehot_state[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888888888F88888"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[10]\,
      I1 => \FSM_onehot_state[14]_i_2_n_0\,
      I2 => \FSM_onehot_state[11]_i_3_n_0\,
      I3 => \bits_count_reg_n_0_[0]\,
      I4 => \FSM_onehot_state[10]_i_2_n_0\,
      I5 => \FSM_onehot_state[10]_i_3_n_0\,
      O => \FSM_onehot_state[10]_i_1_n_0\
    );
\FSM_onehot_state[10]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[9]\,
      I1 => p_1_in_0,
      O => \FSM_onehot_state[10]_i_2_n_0\
    );
\FSM_onehot_state[10]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DF"
    )
        port map (
      I0 => \bits_count_reg_n_0_[3]\,
      I1 => \bits_count_reg_n_0_[2]\,
      I2 => \bits_count_reg_n_0_[1]\,
      O => \FSM_onehot_state[10]_i_3_n_0\
    );
\FSM_onehot_state[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"080A080000000000"
    )
        port map (
      I0 => state_next1,
      I1 => \FSM_onehot_state[11]_i_2_n_0\,
      I2 => p_1_in_0,
      I3 => \FSM_onehot_state_reg_n_0_[9]\,
      I4 => \FSM_onehot_state_reg_n_0_[11]\,
      I5 => \FSM_onehot_state[11]_i_3_n_0\,
      O => \FSM_onehot_state[11]_i_1_n_0\
    );
\FSM_onehot_state[11]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFDF"
    )
        port map (
      I0 => \bits_count_reg_n_0_[1]\,
      I1 => \bits_count_reg_n_0_[2]\,
      I2 => \bits_count_reg_n_0_[3]\,
      I3 => \bits_count_reg_n_0_[0]\,
      O => \FSM_onehot_state[11]_i_2_n_0\
    );
\FSM_onehot_state[11]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \FSM_onehot_state[8]_i_3_n_0\,
      I1 => \FSM_onehot_state_reg_n_0_[7]\,
      I2 => \FSM_onehot_state_reg_n_0_[6]\,
      O => \FSM_onehot_state[11]_i_3_n_0\
    );
\FSM_onehot_state[12]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A800"
    )
        port map (
      I0 => state_next1,
      I1 => \FSM_onehot_state_reg_n_0_[10]\,
      I2 => \FSM_onehot_state_reg_n_0_[12]\,
      I3 => \FSM_onehot_state[12]_i_2_n_0\,
      O => \FSM_onehot_state[12]_i_1_n_0\
    );
\FSM_onehot_state[12]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
        port map (
      I0 => \FSM_onehot_state[11]_i_3_n_0\,
      I1 => \FSM_onehot_state_reg_n_0_[11]\,
      I2 => p_1_in_0,
      I3 => \FSM_onehot_state_reg_n_0_[9]\,
      O => \FSM_onehot_state[12]_i_2_n_0\
    );
\FSM_onehot_state[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000044C0"
    )
        port map (
      I0 => ps2_data_s_reg_n_0,
      I1 => \FSM_onehot_state[14]_i_2_n_0\,
      I2 => \FSM_onehot_state_reg_n_0_[13]\,
      I3 => \FSM_onehot_state_reg_n_0_[12]\,
      I4 => \FSM_onehot_state_reg_n_0_[10]\,
      O => \FSM_onehot_state[13]_i_1_n_0\
    );
\FSM_onehot_state[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00008888000000C0"
    )
        port map (
      I0 => ps2_data_s_reg_n_0,
      I1 => \FSM_onehot_state[14]_i_2_n_0\,
      I2 => \FSM_onehot_state_reg_n_0_[14]\,
      I3 => \FSM_onehot_state_reg_n_0_[13]\,
      I4 => \FSM_onehot_state_reg_n_0_[10]\,
      I5 => \FSM_onehot_state_reg_n_0_[12]\,
      O => \FSM_onehot_state[14]_i_1_n_0\
    );
\FSM_onehot_state[14]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000100"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[9]\,
      I1 => p_1_in_0,
      I2 => \FSM_onehot_state_reg_n_0_[11]\,
      I3 => \FSM_onehot_state[11]_i_3_n_0\,
      I4 => state_next1,
      O => \FSM_onehot_state[14]_i_2_n_0\
    );
\FSM_onehot_state[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88F88888"
    )
        port map (
      I0 => tx_valid_reg,
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      I2 => \FSM_onehot_state_reg_n_0_[1]\,
      I3 => \FSM_onehot_state[5]_i_3_n_0\,
      I4 => \FSM_onehot_state[5]_i_2_n_0\,
      O => \FSM_onehot_state[1]_i_1_n_0\
    );
\FSM_onehot_state[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0022002200F20022"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => tx_valid_reg,
      I2 => \FSM_onehot_state[4]_i_2_n_0\,
      I3 => state_next1,
      I4 => \FSM_onehot_state_reg_n_0_[4]\,
      I5 => \FSM_onehot_state[2]_i_2_n_0\,
      O => \FSM_onehot_state[2]_i_1_n_0\
    );
\FSM_onehot_state[2]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      I2 => \FSM_onehot_state_reg_n_0_[3]\,
      O => \FSM_onehot_state[2]_i_2_n_0\
    );
\FSM_onehot_state[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2232"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      I2 => \FSM_onehot_state_reg_n_0_[3]\,
      I3 => state_next1,
      O => \FSM_onehot_state[3]_i_1_n_0\
    );
\FSM_onehot_state[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1010100010001000"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => state_next1,
      I3 => \FSM_onehot_state_reg_n_0_[3]\,
      I4 => \FSM_onehot_state[4]_i_2_n_0\,
      I5 => \FSM_onehot_state_reg_n_0_[4]\,
      O => \FSM_onehot_state[4]_i_1_n_0\
    );
\FSM_onehot_state[4]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DFFF"
    )
        port map (
      I0 => \bits_count_reg_n_0_[1]\,
      I1 => \bits_count_reg_n_0_[2]\,
      I2 => \bits_count_reg_n_0_[3]\,
      I3 => \bits_count_reg_n_0_[0]\,
      O => \FSM_onehot_state[4]_i_2_n_0\
    );
\FSM_onehot_state[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"005C0050"
    )
        port map (
      I0 => \FSM_onehot_state[5]_i_2_n_0\,
      I1 => \FSM_onehot_state_reg_n_0_[5]\,
      I2 => \FSM_onehot_state_reg_n_0_[1]\,
      I3 => \FSM_onehot_state[5]_i_3_n_0\,
      I4 => \FSM_onehot_state[6]_i_3_n_0\,
      O => \FSM_onehot_state[5]_i_1_n_0\
    );
\FSM_onehot_state[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \counter[13]_i_2_n_0\,
      I1 => \FSM_onehot_state[5]_i_4_n_0\,
      I2 => counter(1),
      I3 => counter(0),
      I4 => counter(3),
      I5 => counter(2),
      O => \FSM_onehot_state[5]_i_2_n_0\
    );
\FSM_onehot_state[5]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[3]\,
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      I2 => \FSM_onehot_state_reg_n_0_[2]\,
      I3 => \FSM_onehot_state_reg_n_0_[4]\,
      O => \FSM_onehot_state[5]_i_3_n_0\
    );
\FSM_onehot_state[5]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DFFF"
    )
        port map (
      I0 => counter(8),
      I1 => counter(5),
      I2 => counter(10),
      I3 => counter(9),
      O => \FSM_onehot_state[5]_i_4_n_0\
    );
\FSM_onehot_state[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \FSM_onehot_state[6]_i_2_n_0\,
      I1 => \FSM_onehot_state_reg_n_0_[5]\,
      I2 => \FSM_onehot_state[6]_i_3_n_0\,
      O => \FSM_onehot_state[6]_i_1_n_0\
    );
\FSM_onehot_state[6]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[4]\,
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => \FSM_onehot_state_reg_n_0_[0]\,
      I3 => \FSM_onehot_state_reg_n_0_[3]\,
      I4 => \FSM_onehot_state_reg_n_0_[1]\,
      O => \FSM_onehot_state[6]_i_2_n_0\
    );
\FSM_onehot_state[6]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFFF"
    )
        port map (
      I0 => \FSM_onehot_state[8]_i_5_n_0\,
      I1 => \FSM_onehot_state[6]_i_4_n_0\,
      I2 => counter(7),
      I3 => counter(6),
      O => \FSM_onehot_state[6]_i_3_n_0\
    );
\FSM_onehot_state[6]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => counter(2),
      I1 => counter(3),
      I2 => counter(0),
      I3 => counter(1),
      I4 => \FSM_onehot_state[5]_i_4_n_0\,
      O => \FSM_onehot_state[6]_i_4_n_0\
    );
\FSM_onehot_state[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C888"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[6]\,
      I1 => \FSM_onehot_state[8]_i_3_n_0\,
      I2 => \FSM_onehot_state_reg_n_0_[7]\,
      I3 => \FSM_onehot_state[8]_i_2_n_0\,
      O => \FSM_onehot_state[7]_i_1_n_0\
    );
\FSM_onehot_state[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"004C0040"
    )
        port map (
      I0 => \FSM_onehot_state[8]_i_2_n_0\,
      I1 => \FSM_onehot_state[8]_i_3_n_0\,
      I2 => \FSM_onehot_state_reg_n_0_[7]\,
      I3 => \FSM_onehot_state_reg_n_0_[6]\,
      I4 => \FSM_onehot_state[8]_i_4_n_0\,
      O => \FSM_onehot_state[8]_i_1_n_0\
    );
\FSM_onehot_state[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFBFFFFFFF"
    )
        port map (
      I0 => \FSM_onehot_state[8]_i_5_n_0\,
      I1 => counter(1),
      I2 => counter(0),
      I3 => counter(3),
      I4 => counter(2),
      I5 => \FSM_onehot_state[8]_i_6_n_0\,
      O => \FSM_onehot_state[8]_i_2_n_0\
    );
\FSM_onehot_state[8]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => \FSM_onehot_state_reg_n_0_[3]\,
      I2 => \FSM_onehot_state_reg_n_0_[0]\,
      I3 => \FSM_onehot_state_reg_n_0_[2]\,
      I4 => \FSM_onehot_state_reg_n_0_[4]\,
      I5 => \FSM_onehot_state_reg_n_0_[5]\,
      O => \FSM_onehot_state[8]_i_3_n_0\
    );
\FSM_onehot_state[8]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => state_next1,
      I1 => \FSM_onehot_state_reg_n_0_[11]\,
      I2 => \FSM_onehot_state_reg_n_0_[9]\,
      I3 => p_1_in_0,
      O => \FSM_onehot_state[8]_i_4_n_0\
    );
\FSM_onehot_state[8]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFD"
    )
        port map (
      I0 => counter(4),
      I1 => counter(11),
      I2 => counter(12),
      I3 => counter(13),
      O => \FSM_onehot_state[8]_i_5_n_0\
    );
\FSM_onehot_state[8]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFEFF"
    )
        port map (
      I0 => counter(9),
      I1 => counter(10),
      I2 => counter(8),
      I3 => counter(5),
      I4 => state_next1,
      I5 => \counter[0]_i_6_n_0\,
      O => \FSM_onehot_state[8]_i_6_n_0\
    );
\FSM_onehot_state[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8C888888"
    )
        port map (
      I0 => p_1_in_0,
      I1 => \FSM_onehot_state[11]_i_3_n_0\,
      I2 => state_next1,
      I3 => \FSM_onehot_state_reg_n_0_[9]\,
      I4 => \FSM_onehot_state[11]_i_2_n_0\,
      O => \FSM_onehot_state[9]_i_1_n_0\
    );
\FSM_onehot_state_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_onehot_state[0]_i_1_n_0\,
      PRE => rst,
      Q => \FSM_onehot_state_reg_n_0_[0]\
    );
\FSM_onehot_state_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \FSM_onehot_state[10]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[10]\
    );
\FSM_onehot_state_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \FSM_onehot_state[11]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[11]\
    );
\FSM_onehot_state_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \FSM_onehot_state[12]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[12]\
    );
\FSM_onehot_state_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \FSM_onehot_state[13]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[13]\
    );
\FSM_onehot_state_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \FSM_onehot_state[14]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[14]\
    );
\FSM_onehot_state_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \FSM_onehot_state[1]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[1]\
    );
\FSM_onehot_state_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \FSM_onehot_state[2]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[2]\
    );
\FSM_onehot_state_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \FSM_onehot_state[3]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[3]\
    );
\FSM_onehot_state_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \FSM_onehot_state[4]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[4]\
    );
\FSM_onehot_state_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \FSM_onehot_state[5]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[5]\
    );
\FSM_onehot_state_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \FSM_onehot_state[6]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[6]\
    );
\FSM_onehot_state_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \FSM_onehot_state[7]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[7]\
    );
\FSM_onehot_state_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \FSM_onehot_state[8]_i_1_n_0\,
      Q => p_1_in_0
    );
\FSM_onehot_state_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \FSM_onehot_state[9]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[9]\
    );
\FSM_sequential_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFF000F077F077"
    )
        port map (
      I0 => \out\(0),
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      I2 => \FSM_sequential_state[0]_i_2_n_0\,
      I3 => \out\(2),
      I4 => \FSM_sequential_state[0]_i_3_n_0\,
      I5 => \out\(1),
      O => D(0)
    );
\FSM_sequential_state[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000550202"
    )
        port map (
      I0 => \^rx_valid\,
      I1 => \^q\(4),
      I2 => valid_i_2_n_0,
      I3 => \^err\,
      I4 => \out\(0),
      I5 => \out\(1),
      O => \FSM_sequential_state[0]_i_2_n_0\
    );
\FSM_sequential_state[0]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0F001010"
    )
        port map (
      I0 => \^err\,
      I1 => state1,
      I2 => \out\(0),
      I3 => state110_out,
      I4 => \^rx_valid\,
      O => \FSM_sequential_state[0]_i_3_n_0\
    );
\FSM_sequential_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8BBB888B888B888"
    )
        port map (
      I0 => \FSM_sequential_state[1]_i_2_n_0\,
      I1 => \out\(2),
      I2 => \FSM_sequential_state[1]_i_3_n_0\,
      I3 => \out\(1),
      I4 => \FSM_onehot_state_reg_n_0_[0]\,
      I5 => \out\(0),
      O => D(1)
    );
\FSM_sequential_state[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"01FF0100"
    )
        port map (
      I0 => \^rx_valid\,
      I1 => \^err\,
      I2 => \out\(0),
      I3 => \out\(1),
      I4 => state17_out,
      O => \FSM_sequential_state[1]_i_2_n_0\
    );
\FSM_sequential_state[1]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30003077"
    )
        port map (
      I0 => state1,
      I1 => \out\(0),
      I2 => state110_out,
      I3 => \^rx_valid\,
      I4 => \^err\,
      O => \FSM_sequential_state[1]_i_3_n_0\
    );
\FSM_sequential_state[1]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000008"
    )
        port map (
      I0 => \^rx_valid\,
      I1 => \^q\(4),
      I2 => \^q\(3),
      I3 => \^q\(1),
      I4 => valid_i_3_n_0,
      O => state17_out
    );
\FSM_sequential_state[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F4040000"
    )
        port map (
      I0 => state110_out,
      I1 => \^rx_valid\,
      I2 => \out\(0),
      I3 => state1,
      I4 => \out\(1),
      O => \FSM_sequential_state[2]_i_2_n_0\
    );
\FSM_sequential_state[2]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5F13"
    )
        port map (
      I0 => \out\(1),
      I1 => \^err\,
      I2 => \out\(0),
      I3 => \^rx_valid\,
      O => \FSM_sequential_state[2]_i_3_n_0\
    );
\FSM_sequential_state[2]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000080000000"
    )
        port map (
      I0 => \tx_data_reg[2]\,
      I1 => \tx_data_reg[7]\,
      I2 => \^q\(4),
      I3 => \^q\(3),
      I4 => \^q\(1),
      I5 => valid_i_3_n_0,
      O => state110_out
    );
\FSM_sequential_state[2]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000002000000"
    )
        port map (
      I0 => \^rx_valid\,
      I1 => \^q\(6),
      I2 => \^q\(4),
      I3 => \^q\(3),
      I4 => \^q\(1),
      I5 => \FSM_sequential_state[2]_i_6_n_0\,
      O => state1
    );
\FSM_sequential_state[2]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFFF"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(0),
      I2 => \^q\(7),
      I3 => \^q\(5),
      O => \FSM_sequential_state[2]_i_6_n_0\
    );
\FSM_sequential_state_reg[2]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \FSM_sequential_state[2]_i_2_n_0\,
      I1 => \FSM_sequential_state[2]_i_3_n_0\,
      O => D(2),
      S => \out\(2)
    );
IOBUF_inst_0: unisim.vcomponents.IOBUF
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => ps2_clk_out,
      IO => PS2_CLK,
      O => ps2_clk_in,
      T => T0
    );
IOBUF_inst_1: unisim.vcomponents.IOBUF
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => ps2_data_out,
      IO => PS2_DATA,
      O => ps2_data_in,
      T => ps2_data_en_reg_inv_n_0
    );
\bits_count[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => \bits_count_reg_n_0_[0]\,
      O => \bits_count[0]_i_1_n_0\
    );
\bits_count[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
        port map (
      I0 => \bits_count_reg_n_0_[1]\,
      I1 => \bits_count_reg_n_0_[0]\,
      I2 => \FSM_onehot_state_reg_n_0_[0]\,
      O => \bits_count[1]_i_1_n_0\
    );
\bits_count[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"006A"
    )
        port map (
      I0 => \bits_count_reg_n_0_[2]\,
      I1 => \bits_count_reg_n_0_[0]\,
      I2 => \bits_count_reg_n_0_[1]\,
      I3 => \FSM_onehot_state_reg_n_0_[0]\,
      O => \bits_count[2]_i_1_n_0\
    );
\bits_count[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => p_1_in_0,
      I2 => \FSM_onehot_state_reg_n_0_[2]\,
      O => bits_count
    );
\bits_count[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000078F0"
    )
        port map (
      I0 => \bits_count_reg_n_0_[1]\,
      I1 => \bits_count_reg_n_0_[0]\,
      I2 => \bits_count_reg_n_0_[3]\,
      I3 => \bits_count_reg_n_0_[2]\,
      I4 => \FSM_onehot_state_reg_n_0_[0]\,
      O => \bits_count[3]_i_2_n_0\
    );
\bits_count_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => bits_count,
      CLR => rst,
      D => \bits_count[0]_i_1_n_0\,
      Q => \bits_count_reg_n_0_[0]\
    );
\bits_count_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => bits_count,
      CLR => rst,
      D => \bits_count[1]_i_1_n_0\,
      Q => \bits_count_reg_n_0_[1]\
    );
\bits_count_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => bits_count,
      CLR => rst,
      D => \bits_count[2]_i_1_n_0\,
      Q => \bits_count_reg_n_0_[2]\
    );
\bits_count_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => bits_count,
      CLR => rst,
      D => \bits_count[3]_i_2_n_0\,
      Q => \bits_count_reg_n_0_[3]\
    );
\clk_count[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9000999900009999"
    )
        port map (
      I0 => ps2_clk_in,
      I1 => clk_inter,
      I2 => clk_count(3),
      I3 => clk_count(2),
      I4 => clk_count(0),
      I5 => clk_count(1),
      O => \clk_count[0]_i_1_n_0\
    );
\clk_count[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9000999999990000"
    )
        port map (
      I0 => ps2_clk_in,
      I1 => clk_inter,
      I2 => clk_count(3),
      I3 => clk_count(2),
      I4 => clk_count(0),
      I5 => clk_count(1),
      O => \clk_count[1]_i_1_n_0\
    );
\clk_count[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9099990099009900"
    )
        port map (
      I0 => ps2_clk_in,
      I1 => clk_inter,
      I2 => clk_count(3),
      I3 => clk_count(2),
      I4 => clk_count(0),
      I5 => clk_count(1),
      O => \clk_count[2]_i_1_n_0\
    );
\clk_count[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9990909090909090"
    )
        port map (
      I0 => ps2_clk_in,
      I1 => clk_inter,
      I2 => clk_count(3),
      I3 => clk_count(2),
      I4 => clk_count(0),
      I5 => clk_count(1),
      O => \clk_count[3]_i_1_n_0\
    );
\clk_count_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \clk_count[0]_i_1_n_0\,
      Q => clk_count(0)
    );
\clk_count_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \clk_count[1]_i_1_n_0\,
      Q => clk_count(1)
    );
\clk_count_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \clk_count[2]_i_1_n_0\,
      Q => clk_count(2)
    );
\clk_count_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \clk_count[3]_i_1_n_0\,
      Q => clk_count(3)
    );
clk_inter_reg: unisim.vcomponents.FDPE
     port map (
      C => clk,
      CE => '1',
      D => ps2_clk_in,
      PRE => rst,
      Q => clk_inter
    );
\counter[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF5D00"
    )
        port map (
      I0 => counter(0),
      I1 => state_next1,
      I2 => \counter[0]_i_2_n_0\,
      I3 => \FSM_onehot_state_reg_n_0_[7]\,
      I4 => \counter[0]_i_3_n_0\,
      I5 => \counter[0]_i_4_n_0\,
      O => counter_next(0)
    );
\counter[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFFFFFFFFFFF"
    )
        port map (
      I0 => \FSM_onehot_state[8]_i_5_n_0\,
      I1 => \counter[0]_i_5_n_0\,
      I2 => counter(2),
      I3 => counter(3),
      I4 => \counter[0]_i_6_n_0\,
      I5 => counter(1),
      O => \counter[0]_i_2_n_0\
    );
\counter[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FF00BF00000000"
    )
        port map (
      I0 => \FSM_onehot_state[8]_i_5_n_0\,
      I1 => counter(6),
      I2 => counter(7),
      I3 => counter(0),
      I4 => \counter[13]_i_3_n_0\,
      I5 => \FSM_onehot_state_reg_n_0_[5]\,
      O => \counter[0]_i_3_n_0\
    );
\counter[0]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3200"
    )
        port map (
      I0 => \counter[13]_i_2_n_0\,
      I1 => counter(0),
      I2 => \counter[13]_i_3_n_0\,
      I3 => \FSM_onehot_state_reg_n_0_[1]\,
      O => \counter[0]_i_4_n_0\
    );
\counter[0]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFD"
    )
        port map (
      I0 => counter(5),
      I1 => counter(8),
      I2 => counter(10),
      I3 => counter(9),
      O => \counter[0]_i_5_n_0\
    );
\counter[0]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => counter(6),
      I1 => counter(7),
      O => \counter[0]_i_6_n_0\
    );
\counter[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFF00FF00FF00"
    )
        port map (
      I0 => \counter[13]_i_2_n_0\,
      I1 => counter(0),
      I2 => \counter[13]_i_3_n_0\,
      I3 => \counter[10]_i_2_n_0\,
      I4 => \FSM_onehot_state_reg_n_0_[1]\,
      I5 => data1(10),
      O => counter_next(10)
    );
\counter[10]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8880000"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[5]\,
      I1 => \counter[13]_i_7_n_0\,
      I2 => \FSM_onehot_state_reg_n_0_[7]\,
      I3 => \counter[13]_i_8_n_0\,
      I4 => data1(10),
      O => \counter[10]_i_2_n_0\
    );
\counter[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFF00FF00FF00"
    )
        port map (
      I0 => \counter[13]_i_2_n_0\,
      I1 => counter(0),
      I2 => \counter[13]_i_3_n_0\,
      I3 => \counter[11]_i_2_n_0\,
      I4 => \FSM_onehot_state_reg_n_0_[1]\,
      I5 => data1(11),
      O => counter_next(11)
    );
\counter[11]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8880000"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[5]\,
      I1 => \counter[13]_i_7_n_0\,
      I2 => \FSM_onehot_state_reg_n_0_[7]\,
      I3 => \counter[13]_i_8_n_0\,
      I4 => data1(11),
      O => \counter[11]_i_2_n_0\
    );
\counter[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFF00FF00FF00"
    )
        port map (
      I0 => \counter[13]_i_2_n_0\,
      I1 => counter(0),
      I2 => \counter[13]_i_3_n_0\,
      I3 => \counter[12]_i_2_n_0\,
      I4 => \FSM_onehot_state_reg_n_0_[1]\,
      I5 => data1(12),
      O => counter_next(12)
    );
\counter[12]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8880000"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[5]\,
      I1 => \counter[13]_i_7_n_0\,
      I2 => \FSM_onehot_state_reg_n_0_[7]\,
      I3 => \counter[13]_i_8_n_0\,
      I4 => data1(12),
      O => \counter[12]_i_2_n_0\
    );
\counter[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFF00FF00FF00"
    )
        port map (
      I0 => \counter[13]_i_2_n_0\,
      I1 => counter(0),
      I2 => \counter[13]_i_3_n_0\,
      I3 => \counter[13]_i_4_n_0\,
      I4 => \FSM_onehot_state_reg_n_0_[1]\,
      I5 => data1(13),
      O => counter_next(13)
    );
\counter[13]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFF7FFFFFFFF"
    )
        port map (
      I0 => counter(7),
      I1 => counter(6),
      I2 => counter(13),
      I3 => counter(12),
      I4 => counter(11),
      I5 => counter(4),
      O => \counter[13]_i_10_n_0\
    );
\counter[13]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEF"
    )
        port map (
      I0 => counter(3),
      I1 => counter(2),
      I2 => counter(8),
      I3 => counter(5),
      O => \counter[13]_i_11_n_0\
    );
\counter[13]_i_12\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => counter(2),
      I1 => counter(3),
      O => \counter[13]_i_12_n_0\
    );
\counter[13]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFDFF"
    )
        port map (
      I0 => counter(13),
      I1 => counter(6),
      I2 => counter(7),
      I3 => counter(4),
      I4 => counter(11),
      I5 => counter(12),
      O => \counter[13]_i_2_n_0\
    );
\counter[13]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFB"
    )
        port map (
      I0 => counter(5),
      I1 => counter(8),
      I2 => counter(2),
      I3 => counter(3),
      I4 => counter(1),
      I5 => \counter[13]_i_6_n_0\,
      O => \counter[13]_i_3_n_0\
    );
\counter[13]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8880000"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[5]\,
      I1 => \counter[13]_i_7_n_0\,
      I2 => \FSM_onehot_state_reg_n_0_[7]\,
      I3 => \counter[13]_i_8_n_0\,
      I4 => data1(13),
      O => \counter[13]_i_4_n_0\
    );
\counter[13]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => counter(9),
      I1 => counter(10),
      O => \counter[13]_i_6_n_0\
    );
\counter[13]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFFFFFFFFFF"
    )
        port map (
      I0 => \counter[13]_i_10_n_0\,
      I1 => counter(0),
      I2 => \counter[13]_i_11_n_0\,
      I3 => counter(1),
      I4 => counter(9),
      I5 => counter(10),
      O => \counter[13]_i_7_n_0\
    );
\counter[13]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFDFFFFFFFF"
    )
        port map (
      I0 => counter(1),
      I1 => \counter[0]_i_6_n_0\,
      I2 => \counter[13]_i_12_n_0\,
      I3 => \counter[0]_i_5_n_0\,
      I4 => \FSM_onehot_state[8]_i_5_n_0\,
      I5 => counter(0),
      O => \counter[13]_i_8_n_0\
    );
\counter[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFF00FF00FF00"
    )
        port map (
      I0 => \counter[13]_i_2_n_0\,
      I1 => counter(0),
      I2 => \counter[13]_i_3_n_0\,
      I3 => \counter[1]_i_2_n_0\,
      I4 => \FSM_onehot_state_reg_n_0_[1]\,
      I5 => data1(1),
      O => counter_next(1)
    );
\counter[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F800F8F0F8008800"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[5]\,
      I1 => \counter[13]_i_7_n_0\,
      I2 => \FSM_onehot_state_reg_n_0_[7]\,
      I3 => data1(1),
      I4 => \counter[13]_i_8_n_0\,
      I5 => state_next1,
      O => \counter[1]_i_2_n_0\
    );
\counter[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFF00FF00FF00"
    )
        port map (
      I0 => \counter[13]_i_2_n_0\,
      I1 => counter(0),
      I2 => \counter[13]_i_3_n_0\,
      I3 => \counter[2]_i_2_n_0\,
      I4 => \FSM_onehot_state_reg_n_0_[1]\,
      I5 => data1(2),
      O => counter_next(2)
    );
\counter[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F800F8F0F8008800"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[5]\,
      I1 => \counter[13]_i_7_n_0\,
      I2 => \FSM_onehot_state_reg_n_0_[7]\,
      I3 => data1(2),
      I4 => \counter[13]_i_8_n_0\,
      I5 => state_next1,
      O => \counter[2]_i_2_n_0\
    );
\counter[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFF00FF00FF00"
    )
        port map (
      I0 => \counter[13]_i_2_n_0\,
      I1 => counter(0),
      I2 => \counter[13]_i_3_n_0\,
      I3 => \counter[3]_i_2_n_0\,
      I4 => \FSM_onehot_state_reg_n_0_[1]\,
      I5 => data1(3),
      O => counter_next(3)
    );
\counter[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F800F8F0F8008800"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[5]\,
      I1 => \counter[13]_i_7_n_0\,
      I2 => \FSM_onehot_state_reg_n_0_[7]\,
      I3 => data1(3),
      I4 => \counter[13]_i_8_n_0\,
      I5 => state_next1,
      O => \counter[3]_i_2_n_0\
    );
\counter[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFF00FF00FF00"
    )
        port map (
      I0 => \counter[13]_i_2_n_0\,
      I1 => counter(0),
      I2 => \counter[13]_i_3_n_0\,
      I3 => \counter[4]_i_2_n_0\,
      I4 => \FSM_onehot_state_reg_n_0_[1]\,
      I5 => data1(4),
      O => counter_next(4)
    );
\counter[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F800F8F0F8008800"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[5]\,
      I1 => \counter[13]_i_7_n_0\,
      I2 => \FSM_onehot_state_reg_n_0_[7]\,
      I3 => data1(4),
      I4 => \counter[13]_i_8_n_0\,
      I5 => state_next1,
      O => \counter[4]_i_2_n_0\
    );
\counter[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFF00FF00FF00"
    )
        port map (
      I0 => \counter[13]_i_2_n_0\,
      I1 => counter(0),
      I2 => \counter[13]_i_3_n_0\,
      I3 => \counter[5]_i_2_n_0\,
      I4 => \FSM_onehot_state_reg_n_0_[1]\,
      I5 => data1(5),
      O => counter_next(5)
    );
\counter[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F800F8F0F8008800"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[5]\,
      I1 => \counter[13]_i_7_n_0\,
      I2 => \FSM_onehot_state_reg_n_0_[7]\,
      I3 => data1(5),
      I4 => \counter[13]_i_8_n_0\,
      I5 => state_next1,
      O => \counter[5]_i_2_n_0\
    );
\counter[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFF00FF00FF00"
    )
        port map (
      I0 => \counter[13]_i_2_n_0\,
      I1 => counter(0),
      I2 => \counter[13]_i_3_n_0\,
      I3 => \counter[6]_i_2_n_0\,
      I4 => \FSM_onehot_state_reg_n_0_[1]\,
      I5 => data1(6),
      O => counter_next(6)
    );
\counter[6]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8880000"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[5]\,
      I1 => \counter[13]_i_7_n_0\,
      I2 => \FSM_onehot_state_reg_n_0_[7]\,
      I3 => \counter[13]_i_8_n_0\,
      I4 => data1(6),
      O => \counter[6]_i_2_n_0\
    );
\counter[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFF00FF00FF00"
    )
        port map (
      I0 => \counter[13]_i_2_n_0\,
      I1 => counter(0),
      I2 => \counter[13]_i_3_n_0\,
      I3 => \counter[7]_i_2_n_0\,
      I4 => \FSM_onehot_state_reg_n_0_[1]\,
      I5 => data1(7),
      O => counter_next(7)
    );
\counter[7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8880000"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[5]\,
      I1 => \counter[13]_i_7_n_0\,
      I2 => \FSM_onehot_state_reg_n_0_[7]\,
      I3 => \counter[13]_i_8_n_0\,
      I4 => data1(7),
      O => \counter[7]_i_2_n_0\
    );
\counter[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFF00FF00FF00"
    )
        port map (
      I0 => \counter[13]_i_2_n_0\,
      I1 => counter(0),
      I2 => \counter[13]_i_3_n_0\,
      I3 => \counter[8]_i_2_n_0\,
      I4 => \FSM_onehot_state_reg_n_0_[1]\,
      I5 => data1(8),
      O => counter_next(8)
    );
\counter[8]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8880000"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[5]\,
      I1 => \counter[13]_i_7_n_0\,
      I2 => \FSM_onehot_state_reg_n_0_[7]\,
      I3 => \counter[13]_i_8_n_0\,
      I4 => data1(8),
      O => \counter[8]_i_2_n_0\
    );
\counter[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFF00FF00FF00"
    )
        port map (
      I0 => \counter[13]_i_2_n_0\,
      I1 => counter(0),
      I2 => \counter[13]_i_3_n_0\,
      I3 => \counter[9]_i_2_n_0\,
      I4 => \FSM_onehot_state_reg_n_0_[1]\,
      I5 => data1(9),
      O => counter_next(9)
    );
\counter[9]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8880000"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[5]\,
      I1 => \counter[13]_i_7_n_0\,
      I2 => \FSM_onehot_state_reg_n_0_[7]\,
      I3 => \counter[13]_i_8_n_0\,
      I4 => data1(9),
      O => \counter[9]_i_2_n_0\
    );
\counter_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => counter_next(0),
      Q => counter(0)
    );
\counter_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => counter_next(10),
      Q => counter(10)
    );
\counter_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => counter_next(11),
      Q => counter(11)
    );
\counter_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => counter_next(12),
      Q => counter(12)
    );
\counter_reg[12]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_reg[8]_i_3_n_0\,
      CO(3) => \counter_reg[12]_i_3_n_0\,
      CO(2) => \counter_reg[12]_i_3_n_1\,
      CO(1) => \counter_reg[12]_i_3_n_2\,
      CO(0) => \counter_reg[12]_i_3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data1(12 downto 9),
      S(3 downto 0) => counter(12 downto 9)
    );
\counter_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => counter_next(13),
      Q => counter(13)
    );
\counter_reg[13]_i_5\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_reg[12]_i_3_n_0\,
      CO(3 downto 0) => \NLW_counter_reg[13]_i_5_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_counter_reg[13]_i_5_O_UNCONNECTED\(3 downto 1),
      O(0) => data1(13),
      S(3 downto 1) => B"000",
      S(0) => counter(13)
    );
\counter_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => counter_next(1),
      Q => counter(1)
    );
\counter_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => counter_next(2),
      Q => counter(2)
    );
\counter_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => counter_next(3),
      Q => counter(3)
    );
\counter_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => counter_next(4),
      Q => counter(4)
    );
\counter_reg[4]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \counter_reg[4]_i_3_n_0\,
      CO(2) => \counter_reg[4]_i_3_n_1\,
      CO(1) => \counter_reg[4]_i_3_n_2\,
      CO(0) => \counter_reg[4]_i_3_n_3\,
      CYINIT => counter(0),
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data1(4 downto 1),
      S(3 downto 0) => counter(4 downto 1)
    );
\counter_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => counter_next(5),
      Q => counter(5)
    );
\counter_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => counter_next(6),
      Q => counter(6)
    );
\counter_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => counter_next(7),
      Q => counter(7)
    );
\counter_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => counter_next(8),
      Q => counter(8)
    );
\counter_reg[8]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_reg[4]_i_3_n_0\,
      CO(3) => \counter_reg[8]_i_3_n_0\,
      CO(2) => \counter_reg[8]_i_3_n_1\,
      CO(1) => \counter_reg[8]_i_3_n_2\,
      CO(0) => \counter_reg[8]_i_3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data1(8 downto 5),
      S(3 downto 0) => counter(8 downto 5)
    );
\counter_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => counter_next(9),
      Q => counter(9)
    );
\data_count[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9000999900009999"
    )
        port map (
      I0 => ps2_data_in,
      I1 => data_inter,
      I2 => data_count(3),
      I3 => data_count(2),
      I4 => data_count(0),
      I5 => data_count(1),
      O => \data_count[0]_i_1_n_0\
    );
\data_count[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9000999999990000"
    )
        port map (
      I0 => ps2_data_in,
      I1 => data_inter,
      I2 => data_count(3),
      I3 => data_count(2),
      I4 => data_count(0),
      I5 => data_count(1),
      O => \data_count[1]_i_1_n_0\
    );
\data_count[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9099990099009900"
    )
        port map (
      I0 => ps2_data_in,
      I1 => data_inter,
      I2 => data_count(3),
      I3 => data_count(2),
      I4 => data_count(0),
      I5 => data_count(1),
      O => \data_count[2]_i_1_n_0\
    );
\data_count[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9990909090909090"
    )
        port map (
      I0 => ps2_data_in,
      I1 => data_inter,
      I2 => data_count(3),
      I3 => data_count(2),
      I4 => data_count(0),
      I5 => data_count(1),
      O => \data_count[3]_i_1_n_0\
    );
\data_count_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \data_count[0]_i_1_n_0\,
      Q => data_count(0)
    );
\data_count_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \data_count[1]_i_1_n_0\,
      Q => data_count(1)
    );
\data_count_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \data_count[2]_i_1_n_0\,
      Q => data_count(2)
    );
\data_count_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \data_count[3]_i_1_n_0\,
      Q => data_count(3)
    );
data_inter_reg: unisim.vcomponents.FDPE
     port map (
      C => clk,
      CE => '1',
      D => ps2_data_in,
      PRE => rst,
      Q => data_inter
    );
err_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF800880088008"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[4]\,
      I1 => err_i_2_n_0,
      I2 => \frame_reg_n_0_[9]\,
      I3 => err_i_3_n_0,
      I4 => \FSM_onehot_state_reg_n_0_[14]\,
      I5 => state_next1,
      O => err_next
    );
err_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2000"
    )
        port map (
      I0 => \bits_count_reg_n_0_[3]\,
      I1 => \bits_count_reg_n_0_[2]\,
      I2 => \bits_count_reg_n_0_[1]\,
      I3 => \bits_count_reg_n_0_[0]\,
      O => err_i_2_n_0
    );
err_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \frame_reg_n_0_[2]\,
      I1 => \frame_reg_n_0_[1]\,
      I2 => \rx_data[7]_i_2_n_0\,
      O => err_i_3_n_0
    );
err_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => err_next,
      Q => \^err\
    );
\frame[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"70"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => tx_valid_reg,
      I2 => \frame_reg_n_0_[1]\,
      O => p_1_in(0)
    );
\frame[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FEEE"
    )
        port map (
      I0 => p_1_in_0,
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => \FSM_onehot_state_reg_n_0_[0]\,
      I3 => tx_valid_reg,
      O => \frame[10]_i_1_n_0\
    );
\frame[10]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => ps2_data_s_reg_n_0,
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      I2 => tx_valid_reg,
      O => p_1_in(10)
    );
\frame[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EA2A"
    )
        port map (
      I0 => \frame_reg_n_0_[2]\,
      I1 => tx_valid_reg,
      I2 => \FSM_onehot_state_reg_n_0_[0]\,
      I3 => \tx_data_reg[2]\,
      O => p_1_in(1)
    );
\frame[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EA2A"
    )
        port map (
      I0 => \frame_reg_n_0_[3]\,
      I1 => tx_valid_reg,
      I2 => \FSM_onehot_state_reg_n_0_[0]\,
      I3 => \tx_data_reg[2]\,
      O => p_1_in(2)
    );
\frame[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EA2A"
    )
        port map (
      I0 => \frame_reg_n_0_[4]\,
      I1 => tx_valid_reg,
      I2 => \FSM_onehot_state_reg_n_0_[0]\,
      I3 => \tx_data_reg[2]\,
      O => p_1_in(3)
    );
\frame[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EA2A"
    )
        port map (
      I0 => \frame_reg_n_0_[5]\,
      I1 => tx_valid_reg,
      I2 => \FSM_onehot_state_reg_n_0_[0]\,
      I3 => \tx_data_reg[7]\,
      O => p_1_in(4)
    );
\frame[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EA2A"
    )
        port map (
      I0 => \frame_reg_n_0_[6]\,
      I1 => tx_valid_reg,
      I2 => \FSM_onehot_state_reg_n_0_[0]\,
      I3 => \tx_data_reg[7]\,
      O => p_1_in(5)
    );
\frame[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EA2A"
    )
        port map (
      I0 => \frame_reg_n_0_[7]\,
      I1 => tx_valid_reg,
      I2 => \FSM_onehot_state_reg_n_0_[0]\,
      I3 => \tx_data_reg[7]\,
      O => p_1_in(6)
    );
\frame[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EA2A"
    )
        port map (
      I0 => \frame_reg_n_0_[8]\,
      I1 => tx_valid_reg,
      I2 => \FSM_onehot_state_reg_n_0_[0]\,
      I3 => \tx_data_reg[7]\,
      O => p_1_in(7)
    );
\frame[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EA2A"
    )
        port map (
      I0 => \frame_reg_n_0_[9]\,
      I1 => tx_valid_reg,
      I2 => \FSM_onehot_state_reg_n_0_[0]\,
      I3 => \tx_data_reg[7]\,
      O => p_1_in(8)
    );
\frame[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EA2A2AEA"
    )
        port map (
      I0 => \frame_reg_n_0_[10]\,
      I1 => tx_valid_reg,
      I2 => \FSM_onehot_state_reg_n_0_[0]\,
      I3 => \tx_data_reg[2]\,
      I4 => \tx_data_reg[7]\,
      O => p_1_in(9)
    );
\frame_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \frame[10]_i_1_n_0\,
      CLR => rst,
      D => p_1_in(0),
      Q => \frame_reg_n_0_[0]\
    );
\frame_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \frame[10]_i_1_n_0\,
      CLR => rst,
      D => p_1_in(10),
      Q => \frame_reg_n_0_[10]\
    );
\frame_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \frame[10]_i_1_n_0\,
      CLR => rst,
      D => p_1_in(1),
      Q => \frame_reg_n_0_[1]\
    );
\frame_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \frame[10]_i_1_n_0\,
      CLR => rst,
      D => p_1_in(2),
      Q => \frame_reg_n_0_[2]\
    );
\frame_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \frame[10]_i_1_n_0\,
      CLR => rst,
      D => p_1_in(3),
      Q => \frame_reg_n_0_[3]\
    );
\frame_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \frame[10]_i_1_n_0\,
      CLR => rst,
      D => p_1_in(4),
      Q => \frame_reg_n_0_[4]\
    );
\frame_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \frame[10]_i_1_n_0\,
      CLR => rst,
      D => p_1_in(5),
      Q => \frame_reg_n_0_[5]\
    );
\frame_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \frame[10]_i_1_n_0\,
      CLR => rst,
      D => p_1_in(6),
      Q => \frame_reg_n_0_[6]\
    );
\frame_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \frame[10]_i_1_n_0\,
      CLR => rst,
      D => p_1_in(7),
      Q => \frame_reg_n_0_[7]\
    );
\frame_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \frame[10]_i_1_n_0\,
      CLR => rst,
      D => p_1_in(8),
      Q => \frame_reg_n_0_[8]\
    );
\frame_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \frame[10]_i_1_n_0\,
      CLR => rst,
      D => p_1_in(9),
      Q => \frame_reg_n_0_[9]\
    );
is_break_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0803"
    )
        port map (
      I0 => \^rx_valid\,
      I1 => \out\(2),
      I2 => \out\(0),
      I3 => \out\(1),
      O => is_break_reg
    );
is_extend_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8000800"
    )
        port map (
      I0 => \out\(0),
      I1 => \^rx_valid\,
      I2 => \out\(1),
      I3 => \out\(2),
      I4 => is_extend,
      O => is_extend_reg
    );
ps2_clk_en_inv_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => \FSM_onehot_state_reg_n_0_[5]\,
      O => ps2_clk_en_next
    );
ps2_clk_en_reg_inv: unisim.vcomponents.FDPE
     port map (
      C => clk,
      CE => '1',
      D => ps2_clk_en_next,
      PRE => rst,
      Q => T0
    );
ps2_clk_out_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[6]\,
      I1 => \FSM_onehot_state_reg_n_0_[7]\,
      I2 => \FSM_onehot_state[5]_i_3_n_0\,
      I3 => \FSM_onehot_state[0]_i_5_n_0\,
      I4 => ps2_clk_out_i_2_n_0,
      O => ps2_clk_out_next
    );
ps2_clk_out_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[9]\,
      I1 => p_1_in_0,
      I2 => \FSM_onehot_state_reg_n_0_[11]\,
      O => ps2_clk_out_i_2_n_0
    );
ps2_clk_out_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => ps2_clk_out_next,
      Q => ps2_clk_out
    );
ps2_clk_s_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FD80"
    )
        port map (
      I0 => ps2_clk_s,
      I1 => ps2_clk_in,
      I2 => clk_inter,
      I3 => state_next1,
      O => ps2_clk_s_i_1_n_0
    );
ps2_clk_s_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => clk_count(3),
      I1 => clk_count(2),
      I2 => clk_count(0),
      I3 => clk_count(1),
      O => ps2_clk_s
    );
ps2_clk_s_reg: unisim.vcomponents.FDPE
     port map (
      C => clk,
      CE => '1',
      D => ps2_clk_s_i_1_n_0,
      PRE => rst,
      Q => state_next1
    );
ps2_data_en_inv_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000007"
    )
        port map (
      I0 => \FSM_onehot_state[11]_i_2_n_0\,
      I1 => \FSM_onehot_state_reg_n_0_[9]\,
      I2 => p_1_in_0,
      I3 => \FSM_onehot_state_reg_n_0_[11]\,
      I4 => ps2_data_en_inv_i_2_n_0,
      I5 => \FSM_onehot_state_reg_n_0_[5]\,
      O => ps2_data_en_next
    );
ps2_data_en_inv_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[6]\,
      I1 => \FSM_onehot_state_reg_n_0_[7]\,
      O => ps2_data_en_inv_i_2_n_0
    );
ps2_data_en_reg_inv: unisim.vcomponents.FDPE
     port map (
      C => clk,
      CE => '1',
      D => ps2_data_en_next,
      PRE => rst,
      Q => ps2_data_en_reg_inv_n_0
    );
ps2_data_out_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFEAAAA"
    )
        port map (
      I0 => \FSM_onehot_state[0]_i_5_n_0\,
      I1 => \FSM_onehot_state_reg_n_0_[11]\,
      I2 => p_1_in_0,
      I3 => \FSM_onehot_state_reg_n_0_[9]\,
      I4 => \frame_reg_n_0_[0]\,
      I5 => \FSM_onehot_state[6]_i_2_n_0\,
      O => ps2_data_out_next
    );
ps2_data_out_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => ps2_data_out_next,
      Q => ps2_data_out
    );
ps2_data_s_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FD80"
    )
        port map (
      I0 => ps2_data_s,
      I1 => ps2_data_in,
      I2 => data_inter,
      I3 => ps2_data_s_reg_n_0,
      O => ps2_data_s_i_1_n_0
    );
ps2_data_s_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => data_count(3),
      I1 => data_count(2),
      I2 => data_count(0),
      I3 => data_count(1),
      O => ps2_data_s
    );
ps2_data_s_reg: unisim.vcomponents.FDPE
     port map (
      C => clk,
      CE => '1',
      D => ps2_data_s_i_1_n_0,
      PRE => rst,
      Q => ps2_data_s_reg_n_0
    );
\rx_data[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2882822800000000"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[4]\,
      I1 => \frame_reg_n_0_[9]\,
      I2 => \frame_reg_n_0_[2]\,
      I3 => \frame_reg_n_0_[1]\,
      I4 => \rx_data[7]_i_2_n_0\,
      I5 => err_i_2_n_0,
      O => rx_finish
    );
\rx_data[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => \frame_reg_n_0_[4]\,
      I1 => \frame_reg_n_0_[3]\,
      I2 => \frame_reg_n_0_[7]\,
      I3 => \frame_reg_n_0_[8]\,
      I4 => \frame_reg_n_0_[5]\,
      I5 => \frame_reg_n_0_[6]\,
      O => \rx_data[7]_i_2_n_0\
    );
\rx_data_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rx_finish,
      CLR => rst,
      D => \frame_reg_n_0_[1]\,
      Q => \^q\(0)
    );
\rx_data_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rx_finish,
      CLR => rst,
      D => \frame_reg_n_0_[2]\,
      Q => \^q\(1)
    );
\rx_data_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rx_finish,
      CLR => rst,
      D => \frame_reg_n_0_[3]\,
      Q => \^q\(2)
    );
\rx_data_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rx_finish,
      CLR => rst,
      D => \frame_reg_n_0_[4]\,
      Q => \^q\(3)
    );
\rx_data_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rx_finish,
      CLR => rst,
      D => \frame_reg_n_0_[5]\,
      Q => \^q\(4)
    );
\rx_data_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rx_finish,
      CLR => rst,
      D => \frame_reg_n_0_[6]\,
      Q => \^q\(5)
    );
\rx_data_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rx_finish,
      CLR => rst,
      D => \frame_reg_n_0_[7]\,
      Q => \^q\(6)
    );
\rx_data_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rx_finish,
      CLR => rst,
      D => \frame_reg_n_0_[8]\,
      Q => \^q\(7)
    );
rx_valid_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => rx_finish,
      Q => \^rx_valid\
    );
tx_valid_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0040"
    )
        port map (
      I0 => \out\(1),
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      I2 => \out\(0),
      I3 => \out\(2),
      O => tx_valid
    );
valid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0A0A88A800000000"
    )
        port map (
      I0 => \^rx_valid\,
      I1 => valid_i_2_n_0,
      I2 => \out\(0),
      I3 => \^q\(4),
      I4 => \out\(1),
      I5 => \out\(2),
      O => valid_reg
    );
valid_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(1),
      I2 => valid_i_3_n_0,
      O => valid_i_2_n_0
    );
valid_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF7FFFF"
    )
        port map (
      I0 => \^q\(5),
      I1 => \^q\(7),
      I2 => \^q\(0),
      I3 => \^q\(2),
      I4 => \^q\(6),
      O => valid_i_3_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity KeyboardCtrl_0_KeyboardCtrl is
  port (
    err : out STD_LOGIC;
    key_in : out STD_LOGIC_VECTOR ( 7 downto 0 );
    is_break : out STD_LOGIC;
    valid : out STD_LOGIC;
    is_extend : out STD_LOGIC;
    PS2_CLK : inout STD_LOGIC;
    PS2_DATA : inout STD_LOGIC;
    clk : in STD_LOGIC;
    rst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of KeyboardCtrl_0_KeyboardCtrl : entity is "KeyboardCtrl";
end KeyboardCtrl_0_KeyboardCtrl;

architecture STRUCTURE of KeyboardCtrl_0_KeyboardCtrl is
  signal Ps2Interface_i_n_11 : STD_LOGIC;
  signal Ps2Interface_i_n_12 : STD_LOGIC;
  signal Ps2Interface_i_n_13 : STD_LOGIC;
  signal Ps2Interface_i_n_15 : STD_LOGIC;
  signal Ps2Interface_i_n_16 : STD_LOGIC;
  signal Ps2Interface_i_n_2 : STD_LOGIC;
  signal \^is_extend\ : STD_LOGIC;
  signal rx_data : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal rx_valid : STD_LOGIC;
  signal state : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of state : signal is "yes";
  signal \tx_data[2]_i_1_n_0\ : STD_LOGIC;
  signal \tx_data[7]_i_1_n_0\ : STD_LOGIC;
  signal \tx_data_reg_n_0_[2]\ : STD_LOGIC;
  signal \tx_data_reg_n_0_[7]\ : STD_LOGIC;
  signal tx_valid : STD_LOGIC;
  signal tx_valid_reg_n_0 : STD_LOGIC;
  attribute KEEP : string;
  attribute KEEP of \FSM_sequential_state_reg[0]\ : label is "yes";
  attribute KEEP of \FSM_sequential_state_reg[1]\ : label is "yes";
  attribute KEEP of \FSM_sequential_state_reg[2]\ : label is "yes";
begin
  is_extend <= \^is_extend\;
\FSM_sequential_state_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => Ps2Interface_i_n_13,
      Q => state(0)
    );
\FSM_sequential_state_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => Ps2Interface_i_n_12,
      Q => state(1)
    );
\FSM_sequential_state_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => Ps2Interface_i_n_11,
      Q => state(2)
    );
Ps2Interface_i: entity work.KeyboardCtrl_0_Ps2Interface
     port map (
      D(2) => Ps2Interface_i_n_11,
      D(1) => Ps2Interface_i_n_12,
      D(0) => Ps2Interface_i_n_13,
      PS2_CLK => PS2_CLK,
      PS2_DATA => PS2_DATA,
      Q(7 downto 0) => rx_data(7 downto 0),
      clk => clk,
      err => err,
      is_break_reg => Ps2Interface_i_n_15,
      is_extend => \^is_extend\,
      is_extend_reg => Ps2Interface_i_n_2,
      \out\(2 downto 0) => state(2 downto 0),
      rst => rst,
      rx_valid => rx_valid,
      \tx_data_reg[2]\ => \tx_data_reg_n_0_[2]\,
      \tx_data_reg[7]\ => \tx_data_reg_n_0_[7]\,
      tx_valid => tx_valid,
      tx_valid_reg => tx_valid_reg_n_0,
      valid_reg => Ps2Interface_i_n_16
    );
is_break_reg: unisim.vcomponents.FDPE
     port map (
      C => clk,
      CE => '1',
      D => Ps2Interface_i_n_15,
      PRE => rst,
      Q => is_break
    );
is_extend_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => Ps2Interface_i_n_2,
      Q => \^is_extend\
    );
\key_in_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rx_valid,
      CLR => rst,
      D => rx_data(0),
      Q => key_in(0)
    );
\key_in_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rx_valid,
      CLR => rst,
      D => rx_data(1),
      Q => key_in(1)
    );
\key_in_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rx_valid,
      CLR => rst,
      D => rx_data(2),
      Q => key_in(2)
    );
\key_in_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rx_valid,
      CLR => rst,
      D => rx_data(3),
      Q => key_in(3)
    );
\key_in_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rx_valid,
      CLR => rst,
      D => rx_data(4),
      Q => key_in(4)
    );
\key_in_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rx_valid,
      CLR => rst,
      D => rx_data(5),
      Q => key_in(5)
    );
\key_in_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rx_valid,
      CLR => rst,
      D => rx_data(6),
      Q => key_in(6)
    );
\key_in_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rx_valid,
      CLR => rst,
      D => rx_data(7),
      Q => key_in(7)
    );
\tx_data[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF01"
    )
        port map (
      I0 => state(1),
      I1 => state(0),
      I2 => state(2),
      I3 => \tx_data_reg_n_0_[2]\,
      O => \tx_data[2]_i_1_n_0\
    );
\tx_data[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF01"
    )
        port map (
      I0 => state(1),
      I1 => state(0),
      I2 => state(2),
      I3 => \tx_data_reg_n_0_[7]\,
      O => \tx_data[7]_i_1_n_0\
    );
\tx_data_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \tx_data[2]_i_1_n_0\,
      Q => \tx_data_reg_n_0_[2]\
    );
\tx_data_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \tx_data[7]_i_1_n_0\,
      Q => \tx_data_reg_n_0_[7]\
    );
tx_valid_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => tx_valid,
      Q => tx_valid_reg_n_0
    );
valid_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => Ps2Interface_i_n_16,
      Q => valid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity KeyboardCtrl_0 is
  port (
    key_in : out STD_LOGIC_VECTOR ( 7 downto 0 );
    is_extend : out STD_LOGIC;
    is_break : out STD_LOGIC;
    valid : out STD_LOGIC;
    err : out STD_LOGIC;
    PS2_DATA : inout STD_LOGIC;
    PS2_CLK : inout STD_LOGIC;
    rst : in STD_LOGIC;
    clk : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of KeyboardCtrl_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of KeyboardCtrl_0 : entity is "KeyboardCtrl_0,KeyboardCtrl,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of KeyboardCtrl_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of KeyboardCtrl_0 : entity is "KeyboardCtrl,Vivado 2016.2";
end KeyboardCtrl_0;

architecture STRUCTURE of KeyboardCtrl_0 is
begin
inst: entity work.KeyboardCtrl_0_KeyboardCtrl
     port map (
      PS2_CLK => PS2_CLK,
      PS2_DATA => PS2_DATA,
      clk => clk,
      err => err,
      is_break => is_break,
      is_extend => is_extend,
      key_in(7 downto 0) => key_in(7 downto 0),
      rst => rst,
      valid => valid
    );
end STRUCTURE;
