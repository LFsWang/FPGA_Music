// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.2 (lin64) Build 1577090 Thu Jun  2 16:32:35 MDT 2016
// Date        : Mon Jan  9 21:34:24 2017
// Host        : leinadv running 64-bit Ubuntu 16.04.1 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/leinadv/Desktop/Vivado/HardwareFinal/HardwareFinal.srcs/sources_1/ip/KeyboardCtrl_0/KeyboardCtrl_0_sim_netlist.v
// Design      : KeyboardCtrl_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "KeyboardCtrl_0,KeyboardCtrl,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "KeyboardCtrl,Vivado 2016.2" *) 
(* NotValidForBitStream *)
module KeyboardCtrl_0
   (key_in,
    is_extend,
    is_break,
    valid,
    err,
    PS2_DATA,
    PS2_CLK,
    rst,
    clk);
  output [7:0]key_in;
  output is_extend;
  output is_break;
  output valid;
  output err;
  inout PS2_DATA;
  inout PS2_CLK;
  input rst;
  input clk;

  (* DRIVE = "12" *) (* IBUF_LOW_PWR *) (* SLEW = "SLOW" *) wire PS2_CLK;
  (* DRIVE = "12" *) (* IBUF_LOW_PWR *) (* SLEW = "SLOW" *) wire PS2_DATA;
  wire clk;
  wire err;
  wire is_break;
  wire is_extend;
  wire [7:0]key_in;
  wire rst;
  wire valid;

  KeyboardCtrl_0_KeyboardCtrl inst
       (.PS2_CLK(PS2_CLK),
        .PS2_DATA(PS2_DATA),
        .clk(clk),
        .err(err),
        .is_break(is_break),
        .is_extend(is_extend),
        .key_in(key_in),
        .rst(rst),
        .valid(valid));
endmodule

(* ORIG_REF_NAME = "KeyboardCtrl" *) 
module KeyboardCtrl_0_KeyboardCtrl
   (err,
    key_in,
    is_break,
    valid,
    is_extend,
    PS2_CLK,
    PS2_DATA,
    clk,
    rst);
  output err;
  output [7:0]key_in;
  output is_break;
  output valid;
  output is_extend;
  inout PS2_CLK;
  inout PS2_DATA;
  input clk;
  input rst;

  wire PS2_CLK;
  wire PS2_DATA;
  wire Ps2Interface_i_n_11;
  wire Ps2Interface_i_n_12;
  wire Ps2Interface_i_n_13;
  wire Ps2Interface_i_n_15;
  wire Ps2Interface_i_n_16;
  wire Ps2Interface_i_n_2;
  wire clk;
  wire err;
  wire is_break;
  wire is_extend;
  wire [7:0]key_in;
  wire rst;
  wire [7:0]rx_data;
  wire rx_valid;
  (* RTL_KEEP = "yes" *) wire [2:0]state;
  wire \tx_data[2]_i_1_n_0 ;
  wire \tx_data[7]_i_1_n_0 ;
  wire \tx_data_reg_n_0_[2] ;
  wire \tx_data_reg_n_0_[7] ;
  wire tx_valid;
  wire tx_valid_reg_n_0;
  wire valid;

  (* KEEP = "yes" *) 
  FDCE \FSM_sequential_state_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(Ps2Interface_i_n_13),
        .Q(state[0]));
  (* KEEP = "yes" *) 
  FDCE \FSM_sequential_state_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(Ps2Interface_i_n_12),
        .Q(state[1]));
  (* KEEP = "yes" *) 
  FDCE \FSM_sequential_state_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(Ps2Interface_i_n_11),
        .Q(state[2]));
  KeyboardCtrl_0_Ps2Interface Ps2Interface_i
       (.D({Ps2Interface_i_n_11,Ps2Interface_i_n_12,Ps2Interface_i_n_13}),
        .PS2_CLK(PS2_CLK),
        .PS2_DATA(PS2_DATA),
        .Q(rx_data),
        .clk(clk),
        .err(err),
        .is_break_reg(Ps2Interface_i_n_15),
        .is_extend(is_extend),
        .is_extend_reg(Ps2Interface_i_n_2),
        .out(state),
        .rst(rst),
        .rx_valid(rx_valid),
        .\tx_data_reg[2] (\tx_data_reg_n_0_[2] ),
        .\tx_data_reg[7] (\tx_data_reg_n_0_[7] ),
        .tx_valid(tx_valid),
        .tx_valid_reg(tx_valid_reg_n_0),
        .valid_reg(Ps2Interface_i_n_16));
  FDPE is_break_reg
       (.C(clk),
        .CE(1'b1),
        .D(Ps2Interface_i_n_15),
        .PRE(rst),
        .Q(is_break));
  FDCE is_extend_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(Ps2Interface_i_n_2),
        .Q(is_extend));
  FDCE \key_in_reg[0] 
       (.C(clk),
        .CE(rx_valid),
        .CLR(rst),
        .D(rx_data[0]),
        .Q(key_in[0]));
  FDCE \key_in_reg[1] 
       (.C(clk),
        .CE(rx_valid),
        .CLR(rst),
        .D(rx_data[1]),
        .Q(key_in[1]));
  FDCE \key_in_reg[2] 
       (.C(clk),
        .CE(rx_valid),
        .CLR(rst),
        .D(rx_data[2]),
        .Q(key_in[2]));
  FDCE \key_in_reg[3] 
       (.C(clk),
        .CE(rx_valid),
        .CLR(rst),
        .D(rx_data[3]),
        .Q(key_in[3]));
  FDCE \key_in_reg[4] 
       (.C(clk),
        .CE(rx_valid),
        .CLR(rst),
        .D(rx_data[4]),
        .Q(key_in[4]));
  FDCE \key_in_reg[5] 
       (.C(clk),
        .CE(rx_valid),
        .CLR(rst),
        .D(rx_data[5]),
        .Q(key_in[5]));
  FDCE \key_in_reg[6] 
       (.C(clk),
        .CE(rx_valid),
        .CLR(rst),
        .D(rx_data[6]),
        .Q(key_in[6]));
  FDCE \key_in_reg[7] 
       (.C(clk),
        .CE(rx_valid),
        .CLR(rst),
        .D(rx_data[7]),
        .Q(key_in[7]));
  LUT4 #(
    .INIT(16'hFF01)) 
    \tx_data[2]_i_1 
       (.I0(state[1]),
        .I1(state[0]),
        .I2(state[2]),
        .I3(\tx_data_reg_n_0_[2] ),
        .O(\tx_data[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFF01)) 
    \tx_data[7]_i_1 
       (.I0(state[1]),
        .I1(state[0]),
        .I2(state[2]),
        .I3(\tx_data_reg_n_0_[7] ),
        .O(\tx_data[7]_i_1_n_0 ));
  FDCE \tx_data_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\tx_data[2]_i_1_n_0 ),
        .Q(\tx_data_reg_n_0_[2] ));
  FDCE \tx_data_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\tx_data[7]_i_1_n_0 ),
        .Q(\tx_data_reg_n_0_[7] ));
  FDCE tx_valid_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(tx_valid),
        .Q(tx_valid_reg_n_0));
  FDCE valid_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(Ps2Interface_i_n_16),
        .Q(valid));
endmodule

(* ORIG_REF_NAME = "Ps2Interface" *) 
module KeyboardCtrl_0_Ps2Interface
   (rx_valid,
    err,
    is_extend_reg,
    Q,
    D,
    tx_valid,
    is_break_reg,
    valid_reg,
    PS2_CLK,
    PS2_DATA,
    clk,
    rst,
    out,
    is_extend,
    tx_valid_reg,
    \tx_data_reg[2] ,
    \tx_data_reg[7] );
  output rx_valid;
  output err;
  output is_extend_reg;
  output [7:0]Q;
  output [2:0]D;
  output tx_valid;
  output is_break_reg;
  output valid_reg;
  inout PS2_CLK;
  inout PS2_DATA;
  input clk;
  input rst;
  input [2:0]out;
  input is_extend;
  input tx_valid_reg;
  input \tx_data_reg[2] ;
  input \tx_data_reg[7] ;

  wire [2:0]D;
  wire \FSM_onehot_state[0]_i_1_n_0 ;
  wire \FSM_onehot_state[0]_i_2_n_0 ;
  wire \FSM_onehot_state[0]_i_3_n_0 ;
  wire \FSM_onehot_state[0]_i_4_n_0 ;
  wire \FSM_onehot_state[0]_i_5_n_0 ;
  wire \FSM_onehot_state[10]_i_1_n_0 ;
  wire \FSM_onehot_state[10]_i_2_n_0 ;
  wire \FSM_onehot_state[10]_i_3_n_0 ;
  wire \FSM_onehot_state[11]_i_1_n_0 ;
  wire \FSM_onehot_state[11]_i_2_n_0 ;
  wire \FSM_onehot_state[11]_i_3_n_0 ;
  wire \FSM_onehot_state[12]_i_1_n_0 ;
  wire \FSM_onehot_state[12]_i_2_n_0 ;
  wire \FSM_onehot_state[13]_i_1_n_0 ;
  wire \FSM_onehot_state[14]_i_1_n_0 ;
  wire \FSM_onehot_state[14]_i_2_n_0 ;
  wire \FSM_onehot_state[1]_i_1_n_0 ;
  wire \FSM_onehot_state[2]_i_1_n_0 ;
  wire \FSM_onehot_state[2]_i_2_n_0 ;
  wire \FSM_onehot_state[3]_i_1_n_0 ;
  wire \FSM_onehot_state[4]_i_1_n_0 ;
  wire \FSM_onehot_state[4]_i_2_n_0 ;
  wire \FSM_onehot_state[5]_i_1_n_0 ;
  wire \FSM_onehot_state[5]_i_2_n_0 ;
  wire \FSM_onehot_state[5]_i_3_n_0 ;
  wire \FSM_onehot_state[5]_i_4_n_0 ;
  wire \FSM_onehot_state[6]_i_1_n_0 ;
  wire \FSM_onehot_state[6]_i_2_n_0 ;
  wire \FSM_onehot_state[6]_i_3_n_0 ;
  wire \FSM_onehot_state[6]_i_4_n_0 ;
  wire \FSM_onehot_state[7]_i_1_n_0 ;
  wire \FSM_onehot_state[8]_i_1_n_0 ;
  wire \FSM_onehot_state[8]_i_2_n_0 ;
  wire \FSM_onehot_state[8]_i_3_n_0 ;
  wire \FSM_onehot_state[8]_i_4_n_0 ;
  wire \FSM_onehot_state[8]_i_5_n_0 ;
  wire \FSM_onehot_state[8]_i_6_n_0 ;
  wire \FSM_onehot_state[9]_i_1_n_0 ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_state_reg_n_0_[0] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_state_reg_n_0_[10] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_state_reg_n_0_[11] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_state_reg_n_0_[12] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_state_reg_n_0_[13] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_state_reg_n_0_[14] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_state_reg_n_0_[1] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_state_reg_n_0_[2] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_state_reg_n_0_[3] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_state_reg_n_0_[4] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_state_reg_n_0_[5] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_state_reg_n_0_[6] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_state_reg_n_0_[7] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_state_reg_n_0_[9] ;
  wire \FSM_sequential_state[0]_i_2_n_0 ;
  wire \FSM_sequential_state[0]_i_3_n_0 ;
  wire \FSM_sequential_state[1]_i_2_n_0 ;
  wire \FSM_sequential_state[1]_i_3_n_0 ;
  wire \FSM_sequential_state[2]_i_2_n_0 ;
  wire \FSM_sequential_state[2]_i_3_n_0 ;
  wire \FSM_sequential_state[2]_i_6_n_0 ;
  wire PS2_CLK;
  wire PS2_DATA;
  wire [7:0]Q;
  wire T0;
  wire bits_count;
  wire \bits_count[0]_i_1_n_0 ;
  wire \bits_count[1]_i_1_n_0 ;
  wire \bits_count[2]_i_1_n_0 ;
  wire \bits_count[3]_i_2_n_0 ;
  wire \bits_count_reg_n_0_[0] ;
  wire \bits_count_reg_n_0_[1] ;
  wire \bits_count_reg_n_0_[2] ;
  wire \bits_count_reg_n_0_[3] ;
  wire clk;
  wire [3:0]clk_count;
  wire \clk_count[0]_i_1_n_0 ;
  wire \clk_count[1]_i_1_n_0 ;
  wire \clk_count[2]_i_1_n_0 ;
  wire \clk_count[3]_i_1_n_0 ;
  wire clk_inter;
  wire [13:0]counter;
  wire \counter[0]_i_2_n_0 ;
  wire \counter[0]_i_3_n_0 ;
  wire \counter[0]_i_4_n_0 ;
  wire \counter[0]_i_5_n_0 ;
  wire \counter[0]_i_6_n_0 ;
  wire \counter[10]_i_2_n_0 ;
  wire \counter[11]_i_2_n_0 ;
  wire \counter[12]_i_2_n_0 ;
  wire \counter[13]_i_10_n_0 ;
  wire \counter[13]_i_11_n_0 ;
  wire \counter[13]_i_12_n_0 ;
  wire \counter[13]_i_2_n_0 ;
  wire \counter[13]_i_3_n_0 ;
  wire \counter[13]_i_4_n_0 ;
  wire \counter[13]_i_6_n_0 ;
  wire \counter[13]_i_7_n_0 ;
  wire \counter[13]_i_8_n_0 ;
  wire \counter[1]_i_2_n_0 ;
  wire \counter[2]_i_2_n_0 ;
  wire \counter[3]_i_2_n_0 ;
  wire \counter[4]_i_2_n_0 ;
  wire \counter[5]_i_2_n_0 ;
  wire \counter[6]_i_2_n_0 ;
  wire \counter[7]_i_2_n_0 ;
  wire \counter[8]_i_2_n_0 ;
  wire \counter[9]_i_2_n_0 ;
  wire [13:0]counter_next;
  wire \counter_reg[12]_i_3_n_0 ;
  wire \counter_reg[12]_i_3_n_1 ;
  wire \counter_reg[12]_i_3_n_2 ;
  wire \counter_reg[12]_i_3_n_3 ;
  wire \counter_reg[4]_i_3_n_0 ;
  wire \counter_reg[4]_i_3_n_1 ;
  wire \counter_reg[4]_i_3_n_2 ;
  wire \counter_reg[4]_i_3_n_3 ;
  wire \counter_reg[8]_i_3_n_0 ;
  wire \counter_reg[8]_i_3_n_1 ;
  wire \counter_reg[8]_i_3_n_2 ;
  wire \counter_reg[8]_i_3_n_3 ;
  wire [13:1]data1;
  wire [3:0]data_count;
  wire \data_count[0]_i_1_n_0 ;
  wire \data_count[1]_i_1_n_0 ;
  wire \data_count[2]_i_1_n_0 ;
  wire \data_count[3]_i_1_n_0 ;
  wire data_inter;
  wire err;
  wire err_i_2_n_0;
  wire err_i_3_n_0;
  wire err_next;
  wire \frame[10]_i_1_n_0 ;
  wire \frame_reg_n_0_[0] ;
  wire \frame_reg_n_0_[10] ;
  wire \frame_reg_n_0_[1] ;
  wire \frame_reg_n_0_[2] ;
  wire \frame_reg_n_0_[3] ;
  wire \frame_reg_n_0_[4] ;
  wire \frame_reg_n_0_[5] ;
  wire \frame_reg_n_0_[6] ;
  wire \frame_reg_n_0_[7] ;
  wire \frame_reg_n_0_[8] ;
  wire \frame_reg_n_0_[9] ;
  wire is_break_reg;
  wire is_extend;
  wire is_extend_reg;
  wire [2:0]out;
  wire [10:0]p_1_in;
  (* RTL_KEEP = "yes" *) wire p_1_in_0;
  wire ps2_clk_en_next;
  wire ps2_clk_in;
  wire ps2_clk_out;
  wire ps2_clk_out_i_2_n_0;
  wire ps2_clk_out_next;
  wire ps2_clk_s;
  wire ps2_clk_s_i_1_n_0;
  wire ps2_data_en_inv_i_2_n_0;
  wire ps2_data_en_next;
  wire ps2_data_en_reg_inv_n_0;
  wire ps2_data_in;
  wire ps2_data_out;
  wire ps2_data_out_next;
  wire ps2_data_s;
  wire ps2_data_s_i_1_n_0;
  wire ps2_data_s_reg_n_0;
  wire rst;
  wire \rx_data[7]_i_2_n_0 ;
  wire rx_finish;
  wire rx_valid;
  wire state1;
  wire state110_out;
  wire state17_out;
  wire state_next1;
  wire \tx_data_reg[2] ;
  wire \tx_data_reg[7] ;
  wire tx_valid;
  wire tx_valid_reg;
  wire valid_i_2_n_0;
  wire valid_i_3_n_0;
  wire valid_reg;
  wire [3:0]\NLW_counter_reg[13]_i_5_CO_UNCONNECTED ;
  wire [3:1]\NLW_counter_reg[13]_i_5_O_UNCONNECTED ;

  LUT6 #(
    .INIT(64'hEEAEFFFFEEAAEEAA)) 
    \FSM_onehot_state[0]_i_1 
       (.I0(\FSM_onehot_state[0]_i_2_n_0 ),
        .I1(state_next1),
        .I2(\FSM_onehot_state[0]_i_3_n_0 ),
        .I3(\FSM_onehot_state[0]_i_4_n_0 ),
        .I4(\FSM_onehot_state[0]_i_5_n_0 ),
        .I5(\FSM_onehot_state[12]_i_2_n_0 ),
        .O(\FSM_onehot_state[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000100)) 
    \FSM_onehot_state[0]_i_2 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(\FSM_onehot_state_reg_n_0_[3] ),
        .I3(\FSM_onehot_state_reg_n_0_[4] ),
        .I4(\FSM_onehot_state[4]_i_2_n_0 ),
        .O(\FSM_onehot_state[0]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \FSM_onehot_state[0]_i_3 
       (.I0(\FSM_onehot_state_reg_n_0_[10] ),
        .I1(\FSM_onehot_state_reg_n_0_[12] ),
        .O(\FSM_onehot_state[0]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_onehot_state[0]_i_4 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(tx_valid_reg),
        .O(\FSM_onehot_state[0]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_onehot_state[0]_i_5 
       (.I0(\FSM_onehot_state_reg_n_0_[13] ),
        .I1(\FSM_onehot_state_reg_n_0_[10] ),
        .I2(\FSM_onehot_state_reg_n_0_[12] ),
        .I3(\FSM_onehot_state_reg_n_0_[14] ),
        .O(\FSM_onehot_state[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h8888888888F88888)) 
    \FSM_onehot_state[10]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[10] ),
        .I1(\FSM_onehot_state[14]_i_2_n_0 ),
        .I2(\FSM_onehot_state[11]_i_3_n_0 ),
        .I3(\bits_count_reg_n_0_[0] ),
        .I4(\FSM_onehot_state[10]_i_2_n_0 ),
        .I5(\FSM_onehot_state[10]_i_3_n_0 ),
        .O(\FSM_onehot_state[10]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_onehot_state[10]_i_2 
       (.I0(\FSM_onehot_state_reg_n_0_[9] ),
        .I1(p_1_in_0),
        .O(\FSM_onehot_state[10]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hDF)) 
    \FSM_onehot_state[10]_i_3 
       (.I0(\bits_count_reg_n_0_[3] ),
        .I1(\bits_count_reg_n_0_[2] ),
        .I2(\bits_count_reg_n_0_[1] ),
        .O(\FSM_onehot_state[10]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h080A080000000000)) 
    \FSM_onehot_state[11]_i_1 
       (.I0(state_next1),
        .I1(\FSM_onehot_state[11]_i_2_n_0 ),
        .I2(p_1_in_0),
        .I3(\FSM_onehot_state_reg_n_0_[9] ),
        .I4(\FSM_onehot_state_reg_n_0_[11] ),
        .I5(\FSM_onehot_state[11]_i_3_n_0 ),
        .O(\FSM_onehot_state[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hFFDF)) 
    \FSM_onehot_state[11]_i_2 
       (.I0(\bits_count_reg_n_0_[1] ),
        .I1(\bits_count_reg_n_0_[2] ),
        .I2(\bits_count_reg_n_0_[3] ),
        .I3(\bits_count_reg_n_0_[0] ),
        .O(\FSM_onehot_state[11]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h02)) 
    \FSM_onehot_state[11]_i_3 
       (.I0(\FSM_onehot_state[8]_i_3_n_0 ),
        .I1(\FSM_onehot_state_reg_n_0_[7] ),
        .I2(\FSM_onehot_state_reg_n_0_[6] ),
        .O(\FSM_onehot_state[11]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hA800)) 
    \FSM_onehot_state[12]_i_1 
       (.I0(state_next1),
        .I1(\FSM_onehot_state_reg_n_0_[10] ),
        .I2(\FSM_onehot_state_reg_n_0_[12] ),
        .I3(\FSM_onehot_state[12]_i_2_n_0 ),
        .O(\FSM_onehot_state[12]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0002)) 
    \FSM_onehot_state[12]_i_2 
       (.I0(\FSM_onehot_state[11]_i_3_n_0 ),
        .I1(\FSM_onehot_state_reg_n_0_[11] ),
        .I2(p_1_in_0),
        .I3(\FSM_onehot_state_reg_n_0_[9] ),
        .O(\FSM_onehot_state[12]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h000044C0)) 
    \FSM_onehot_state[13]_i_1 
       (.I0(ps2_data_s_reg_n_0),
        .I1(\FSM_onehot_state[14]_i_2_n_0 ),
        .I2(\FSM_onehot_state_reg_n_0_[13] ),
        .I3(\FSM_onehot_state_reg_n_0_[12] ),
        .I4(\FSM_onehot_state_reg_n_0_[10] ),
        .O(\FSM_onehot_state[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00008888000000C0)) 
    \FSM_onehot_state[14]_i_1 
       (.I0(ps2_data_s_reg_n_0),
        .I1(\FSM_onehot_state[14]_i_2_n_0 ),
        .I2(\FSM_onehot_state_reg_n_0_[14] ),
        .I3(\FSM_onehot_state_reg_n_0_[13] ),
        .I4(\FSM_onehot_state_reg_n_0_[10] ),
        .I5(\FSM_onehot_state_reg_n_0_[12] ),
        .O(\FSM_onehot_state[14]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000100)) 
    \FSM_onehot_state[14]_i_2 
       (.I0(\FSM_onehot_state_reg_n_0_[9] ),
        .I1(p_1_in_0),
        .I2(\FSM_onehot_state_reg_n_0_[11] ),
        .I3(\FSM_onehot_state[11]_i_3_n_0 ),
        .I4(state_next1),
        .O(\FSM_onehot_state[14]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h88F88888)) 
    \FSM_onehot_state[1]_i_1 
       (.I0(tx_valid_reg),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(\FSM_onehot_state_reg_n_0_[1] ),
        .I3(\FSM_onehot_state[5]_i_3_n_0 ),
        .I4(\FSM_onehot_state[5]_i_2_n_0 ),
        .O(\FSM_onehot_state[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0022002200F20022)) 
    \FSM_onehot_state[2]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(tx_valid_reg),
        .I2(\FSM_onehot_state[4]_i_2_n_0 ),
        .I3(state_next1),
        .I4(\FSM_onehot_state_reg_n_0_[4] ),
        .I5(\FSM_onehot_state[2]_i_2_n_0 ),
        .O(\FSM_onehot_state[2]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \FSM_onehot_state[2]_i_2 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(\FSM_onehot_state_reg_n_0_[3] ),
        .O(\FSM_onehot_state[2]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h2232)) 
    \FSM_onehot_state[3]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(\FSM_onehot_state_reg_n_0_[3] ),
        .I3(state_next1),
        .O(\FSM_onehot_state[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h1010100010001000)) 
    \FSM_onehot_state[4]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(state_next1),
        .I3(\FSM_onehot_state_reg_n_0_[3] ),
        .I4(\FSM_onehot_state[4]_i_2_n_0 ),
        .I5(\FSM_onehot_state_reg_n_0_[4] ),
        .O(\FSM_onehot_state[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'hDFFF)) 
    \FSM_onehot_state[4]_i_2 
       (.I0(\bits_count_reg_n_0_[1] ),
        .I1(\bits_count_reg_n_0_[2] ),
        .I2(\bits_count_reg_n_0_[3] ),
        .I3(\bits_count_reg_n_0_[0] ),
        .O(\FSM_onehot_state[4]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h005C0050)) 
    \FSM_onehot_state[5]_i_1 
       (.I0(\FSM_onehot_state[5]_i_2_n_0 ),
        .I1(\FSM_onehot_state_reg_n_0_[5] ),
        .I2(\FSM_onehot_state_reg_n_0_[1] ),
        .I3(\FSM_onehot_state[5]_i_3_n_0 ),
        .I4(\FSM_onehot_state[6]_i_3_n_0 ),
        .O(\FSM_onehot_state[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \FSM_onehot_state[5]_i_2 
       (.I0(\counter[13]_i_2_n_0 ),
        .I1(\FSM_onehot_state[5]_i_4_n_0 ),
        .I2(counter[1]),
        .I3(counter[0]),
        .I4(counter[3]),
        .I5(counter[2]),
        .O(\FSM_onehot_state[5]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_onehot_state[5]_i_3 
       (.I0(\FSM_onehot_state_reg_n_0_[3] ),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(\FSM_onehot_state_reg_n_0_[2] ),
        .I3(\FSM_onehot_state_reg_n_0_[4] ),
        .O(\FSM_onehot_state[5]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hDFFF)) 
    \FSM_onehot_state[5]_i_4 
       (.I0(counter[8]),
        .I1(counter[5]),
        .I2(counter[10]),
        .I3(counter[9]),
        .O(\FSM_onehot_state[5]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \FSM_onehot_state[6]_i_1 
       (.I0(\FSM_onehot_state[6]_i_2_n_0 ),
        .I1(\FSM_onehot_state_reg_n_0_[5] ),
        .I2(\FSM_onehot_state[6]_i_3_n_0 ),
        .O(\FSM_onehot_state[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \FSM_onehot_state[6]_i_2 
       (.I0(\FSM_onehot_state_reg_n_0_[4] ),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(\FSM_onehot_state_reg_n_0_[0] ),
        .I3(\FSM_onehot_state_reg_n_0_[3] ),
        .I4(\FSM_onehot_state_reg_n_0_[1] ),
        .O(\FSM_onehot_state[6]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'hEFFF)) 
    \FSM_onehot_state[6]_i_3 
       (.I0(\FSM_onehot_state[8]_i_5_n_0 ),
        .I1(\FSM_onehot_state[6]_i_4_n_0 ),
        .I2(counter[7]),
        .I3(counter[6]),
        .O(\FSM_onehot_state[6]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \FSM_onehot_state[6]_i_4 
       (.I0(counter[2]),
        .I1(counter[3]),
        .I2(counter[0]),
        .I3(counter[1]),
        .I4(\FSM_onehot_state[5]_i_4_n_0 ),
        .O(\FSM_onehot_state[6]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hC888)) 
    \FSM_onehot_state[7]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[6] ),
        .I1(\FSM_onehot_state[8]_i_3_n_0 ),
        .I2(\FSM_onehot_state_reg_n_0_[7] ),
        .I3(\FSM_onehot_state[8]_i_2_n_0 ),
        .O(\FSM_onehot_state[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h004C0040)) 
    \FSM_onehot_state[8]_i_1 
       (.I0(\FSM_onehot_state[8]_i_2_n_0 ),
        .I1(\FSM_onehot_state[8]_i_3_n_0 ),
        .I2(\FSM_onehot_state_reg_n_0_[7] ),
        .I3(\FSM_onehot_state_reg_n_0_[6] ),
        .I4(\FSM_onehot_state[8]_i_4_n_0 ),
        .O(\FSM_onehot_state[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFBFFFFFFF)) 
    \FSM_onehot_state[8]_i_2 
       (.I0(\FSM_onehot_state[8]_i_5_n_0 ),
        .I1(counter[1]),
        .I2(counter[0]),
        .I3(counter[3]),
        .I4(counter[2]),
        .I5(\FSM_onehot_state[8]_i_6_n_0 ),
        .O(\FSM_onehot_state[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \FSM_onehot_state[8]_i_3 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(\FSM_onehot_state_reg_n_0_[3] ),
        .I2(\FSM_onehot_state_reg_n_0_[0] ),
        .I3(\FSM_onehot_state_reg_n_0_[2] ),
        .I4(\FSM_onehot_state_reg_n_0_[4] ),
        .I5(\FSM_onehot_state_reg_n_0_[5] ),
        .O(\FSM_onehot_state[8]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h0004)) 
    \FSM_onehot_state[8]_i_4 
       (.I0(state_next1),
        .I1(\FSM_onehot_state_reg_n_0_[11] ),
        .I2(\FSM_onehot_state_reg_n_0_[9] ),
        .I3(p_1_in_0),
        .O(\FSM_onehot_state[8]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFFD)) 
    \FSM_onehot_state[8]_i_5 
       (.I0(counter[4]),
        .I1(counter[11]),
        .I2(counter[12]),
        .I3(counter[13]),
        .O(\FSM_onehot_state[8]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFEFF)) 
    \FSM_onehot_state[8]_i_6 
       (.I0(counter[9]),
        .I1(counter[10]),
        .I2(counter[8]),
        .I3(counter[5]),
        .I4(state_next1),
        .I5(\counter[0]_i_6_n_0 ),
        .O(\FSM_onehot_state[8]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h8C888888)) 
    \FSM_onehot_state[9]_i_1 
       (.I0(p_1_in_0),
        .I1(\FSM_onehot_state[11]_i_3_n_0 ),
        .I2(state_next1),
        .I3(\FSM_onehot_state_reg_n_0_[9] ),
        .I4(\FSM_onehot_state[11]_i_2_n_0 ),
        .O(\FSM_onehot_state[9]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_state[0]_i_1_n_0 ),
        .PRE(rst),
        .Q(\FSM_onehot_state_reg_n_0_[0] ));
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\FSM_onehot_state[10]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[10] ));
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\FSM_onehot_state[11]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[11] ));
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\FSM_onehot_state[12]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[12] ));
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\FSM_onehot_state[13]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[13] ));
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\FSM_onehot_state[14]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[14] ));
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\FSM_onehot_state[1]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[1] ));
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\FSM_onehot_state[2]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[2] ));
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\FSM_onehot_state[3]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[3] ));
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\FSM_onehot_state[4]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[4] ));
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\FSM_onehot_state[5]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[5] ));
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\FSM_onehot_state[6]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[6] ));
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\FSM_onehot_state[7]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[7] ));
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\FSM_onehot_state[8]_i_1_n_0 ),
        .Q(p_1_in_0));
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\FSM_onehot_state[9]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[9] ));
  LUT6 #(
    .INIT(64'hF0FFF000F077F077)) 
    \FSM_sequential_state[0]_i_1 
       (.I0(out[0]),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(\FSM_sequential_state[0]_i_2_n_0 ),
        .I3(out[2]),
        .I4(\FSM_sequential_state[0]_i_3_n_0 ),
        .I5(out[1]),
        .O(D[0]));
  LUT6 #(
    .INIT(64'h0000000000550202)) 
    \FSM_sequential_state[0]_i_2 
       (.I0(rx_valid),
        .I1(Q[4]),
        .I2(valid_i_2_n_0),
        .I3(err),
        .I4(out[0]),
        .I5(out[1]),
        .O(\FSM_sequential_state[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h0F001010)) 
    \FSM_sequential_state[0]_i_3 
       (.I0(err),
        .I1(state1),
        .I2(out[0]),
        .I3(state110_out),
        .I4(rx_valid),
        .O(\FSM_sequential_state[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hB8BBB888B888B888)) 
    \FSM_sequential_state[1]_i_1 
       (.I0(\FSM_sequential_state[1]_i_2_n_0 ),
        .I1(out[2]),
        .I2(\FSM_sequential_state[1]_i_3_n_0 ),
        .I3(out[1]),
        .I4(\FSM_onehot_state_reg_n_0_[0] ),
        .I5(out[0]),
        .O(D[1]));
  LUT5 #(
    .INIT(32'h01FF0100)) 
    \FSM_sequential_state[1]_i_2 
       (.I0(rx_valid),
        .I1(err),
        .I2(out[0]),
        .I3(out[1]),
        .I4(state17_out),
        .O(\FSM_sequential_state[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h30003077)) 
    \FSM_sequential_state[1]_i_3 
       (.I0(state1),
        .I1(out[0]),
        .I2(state110_out),
        .I3(rx_valid),
        .I4(err),
        .O(\FSM_sequential_state[1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00000008)) 
    \FSM_sequential_state[1]_i_4 
       (.I0(rx_valid),
        .I1(Q[4]),
        .I2(Q[3]),
        .I3(Q[1]),
        .I4(valid_i_3_n_0),
        .O(state17_out));
  LUT5 #(
    .INIT(32'hF4040000)) 
    \FSM_sequential_state[2]_i_2 
       (.I0(state110_out),
        .I1(rx_valid),
        .I2(out[0]),
        .I3(state1),
        .I4(out[1]),
        .O(\FSM_sequential_state[2]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h5F13)) 
    \FSM_sequential_state[2]_i_3 
       (.I0(out[1]),
        .I1(err),
        .I2(out[0]),
        .I3(rx_valid),
        .O(\FSM_sequential_state[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    \FSM_sequential_state[2]_i_4 
       (.I0(\tx_data_reg[2] ),
        .I1(\tx_data_reg[7] ),
        .I2(Q[4]),
        .I3(Q[3]),
        .I4(Q[1]),
        .I5(valid_i_3_n_0),
        .O(state110_out));
  LUT6 #(
    .INIT(64'h0000000002000000)) 
    \FSM_sequential_state[2]_i_5 
       (.I0(rx_valid),
        .I1(Q[6]),
        .I2(Q[4]),
        .I3(Q[3]),
        .I4(Q[1]),
        .I5(\FSM_sequential_state[2]_i_6_n_0 ),
        .O(state1));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hEFFF)) 
    \FSM_sequential_state[2]_i_6 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[7]),
        .I3(Q[5]),
        .O(\FSM_sequential_state[2]_i_6_n_0 ));
  MUXF7 \FSM_sequential_state_reg[2]_i_1 
       (.I0(\FSM_sequential_state[2]_i_2_n_0 ),
        .I1(\FSM_sequential_state[2]_i_3_n_0 ),
        .O(D[2]),
        .S(out[2]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  IOBUF #(
    .IOSTANDARD("DEFAULT")) 
    IOBUF_inst_0
       (.I(ps2_clk_out),
        .IO(PS2_CLK),
        .O(ps2_clk_in),
        .T(T0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  IOBUF #(
    .IOSTANDARD("DEFAULT")) 
    IOBUF_inst_1
       (.I(ps2_data_out),
        .IO(PS2_DATA),
        .O(ps2_data_in),
        .T(ps2_data_en_reg_inv_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    \bits_count[0]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(\bits_count_reg_n_0_[0] ),
        .O(\bits_count[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h06)) 
    \bits_count[1]_i_1 
       (.I0(\bits_count_reg_n_0_[1] ),
        .I1(\bits_count_reg_n_0_[0] ),
        .I2(\FSM_onehot_state_reg_n_0_[0] ),
        .O(\bits_count[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h006A)) 
    \bits_count[2]_i_1 
       (.I0(\bits_count_reg_n_0_[2] ),
        .I1(\bits_count_reg_n_0_[0] ),
        .I2(\bits_count_reg_n_0_[1] ),
        .I3(\FSM_onehot_state_reg_n_0_[0] ),
        .O(\bits_count[2]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \bits_count[3]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(p_1_in_0),
        .I2(\FSM_onehot_state_reg_n_0_[2] ),
        .O(bits_count));
  LUT5 #(
    .INIT(32'h000078F0)) 
    \bits_count[3]_i_2 
       (.I0(\bits_count_reg_n_0_[1] ),
        .I1(\bits_count_reg_n_0_[0] ),
        .I2(\bits_count_reg_n_0_[3] ),
        .I3(\bits_count_reg_n_0_[2] ),
        .I4(\FSM_onehot_state_reg_n_0_[0] ),
        .O(\bits_count[3]_i_2_n_0 ));
  FDCE \bits_count_reg[0] 
       (.C(clk),
        .CE(bits_count),
        .CLR(rst),
        .D(\bits_count[0]_i_1_n_0 ),
        .Q(\bits_count_reg_n_0_[0] ));
  FDCE \bits_count_reg[1] 
       (.C(clk),
        .CE(bits_count),
        .CLR(rst),
        .D(\bits_count[1]_i_1_n_0 ),
        .Q(\bits_count_reg_n_0_[1] ));
  FDCE \bits_count_reg[2] 
       (.C(clk),
        .CE(bits_count),
        .CLR(rst),
        .D(\bits_count[2]_i_1_n_0 ),
        .Q(\bits_count_reg_n_0_[2] ));
  FDCE \bits_count_reg[3] 
       (.C(clk),
        .CE(bits_count),
        .CLR(rst),
        .D(\bits_count[3]_i_2_n_0 ),
        .Q(\bits_count_reg_n_0_[3] ));
  LUT6 #(
    .INIT(64'h9000999900009999)) 
    \clk_count[0]_i_1 
       (.I0(ps2_clk_in),
        .I1(clk_inter),
        .I2(clk_count[3]),
        .I3(clk_count[2]),
        .I4(clk_count[0]),
        .I5(clk_count[1]),
        .O(\clk_count[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h9000999999990000)) 
    \clk_count[1]_i_1 
       (.I0(ps2_clk_in),
        .I1(clk_inter),
        .I2(clk_count[3]),
        .I3(clk_count[2]),
        .I4(clk_count[0]),
        .I5(clk_count[1]),
        .O(\clk_count[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h9099990099009900)) 
    \clk_count[2]_i_1 
       (.I0(ps2_clk_in),
        .I1(clk_inter),
        .I2(clk_count[3]),
        .I3(clk_count[2]),
        .I4(clk_count[0]),
        .I5(clk_count[1]),
        .O(\clk_count[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h9990909090909090)) 
    \clk_count[3]_i_1 
       (.I0(ps2_clk_in),
        .I1(clk_inter),
        .I2(clk_count[3]),
        .I3(clk_count[2]),
        .I4(clk_count[0]),
        .I5(clk_count[1]),
        .O(\clk_count[3]_i_1_n_0 ));
  FDCE \clk_count_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\clk_count[0]_i_1_n_0 ),
        .Q(clk_count[0]));
  FDCE \clk_count_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\clk_count[1]_i_1_n_0 ),
        .Q(clk_count[1]));
  FDCE \clk_count_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\clk_count[2]_i_1_n_0 ),
        .Q(clk_count[2]));
  FDCE \clk_count_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\clk_count[3]_i_1_n_0 ),
        .Q(clk_count[3]));
  FDPE clk_inter_reg
       (.C(clk),
        .CE(1'b1),
        .D(ps2_clk_in),
        .PRE(rst),
        .Q(clk_inter));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF5D00)) 
    \counter[0]_i_1 
       (.I0(counter[0]),
        .I1(state_next1),
        .I2(\counter[0]_i_2_n_0 ),
        .I3(\FSM_onehot_state_reg_n_0_[7] ),
        .I4(\counter[0]_i_3_n_0 ),
        .I5(\counter[0]_i_4_n_0 ),
        .O(counter_next[0]));
  LUT6 #(
    .INIT(64'hFFFFEFFFFFFFFFFF)) 
    \counter[0]_i_2 
       (.I0(\FSM_onehot_state[8]_i_5_n_0 ),
        .I1(\counter[0]_i_5_n_0 ),
        .I2(counter[2]),
        .I3(counter[3]),
        .I4(\counter[0]_i_6_n_0 ),
        .I5(counter[1]),
        .O(\counter[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00FF00BF00000000)) 
    \counter[0]_i_3 
       (.I0(\FSM_onehot_state[8]_i_5_n_0 ),
        .I1(counter[6]),
        .I2(counter[7]),
        .I3(counter[0]),
        .I4(\counter[13]_i_3_n_0 ),
        .I5(\FSM_onehot_state_reg_n_0_[5] ),
        .O(\counter[0]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h3200)) 
    \counter[0]_i_4 
       (.I0(\counter[13]_i_2_n_0 ),
        .I1(counter[0]),
        .I2(\counter[13]_i_3_n_0 ),
        .I3(\FSM_onehot_state_reg_n_0_[1] ),
        .O(\counter[0]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hFFFD)) 
    \counter[0]_i_5 
       (.I0(counter[5]),
        .I1(counter[8]),
        .I2(counter[10]),
        .I3(counter[9]),
        .O(\counter[0]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \counter[0]_i_6 
       (.I0(counter[6]),
        .I1(counter[7]),
        .O(\counter[0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEFF00FF00FF00)) 
    \counter[10]_i_1 
       (.I0(\counter[13]_i_2_n_0 ),
        .I1(counter[0]),
        .I2(\counter[13]_i_3_n_0 ),
        .I3(\counter[10]_i_2_n_0 ),
        .I4(\FSM_onehot_state_reg_n_0_[1] ),
        .I5(data1[10]),
        .O(counter_next[10]));
  LUT5 #(
    .INIT(32'hF8880000)) 
    \counter[10]_i_2 
       (.I0(\FSM_onehot_state_reg_n_0_[5] ),
        .I1(\counter[13]_i_7_n_0 ),
        .I2(\FSM_onehot_state_reg_n_0_[7] ),
        .I3(\counter[13]_i_8_n_0 ),
        .I4(data1[10]),
        .O(\counter[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEFF00FF00FF00)) 
    \counter[11]_i_1 
       (.I0(\counter[13]_i_2_n_0 ),
        .I1(counter[0]),
        .I2(\counter[13]_i_3_n_0 ),
        .I3(\counter[11]_i_2_n_0 ),
        .I4(\FSM_onehot_state_reg_n_0_[1] ),
        .I5(data1[11]),
        .O(counter_next[11]));
  LUT5 #(
    .INIT(32'hF8880000)) 
    \counter[11]_i_2 
       (.I0(\FSM_onehot_state_reg_n_0_[5] ),
        .I1(\counter[13]_i_7_n_0 ),
        .I2(\FSM_onehot_state_reg_n_0_[7] ),
        .I3(\counter[13]_i_8_n_0 ),
        .I4(data1[11]),
        .O(\counter[11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEFF00FF00FF00)) 
    \counter[12]_i_1 
       (.I0(\counter[13]_i_2_n_0 ),
        .I1(counter[0]),
        .I2(\counter[13]_i_3_n_0 ),
        .I3(\counter[12]_i_2_n_0 ),
        .I4(\FSM_onehot_state_reg_n_0_[1] ),
        .I5(data1[12]),
        .O(counter_next[12]));
  LUT5 #(
    .INIT(32'hF8880000)) 
    \counter[12]_i_2 
       (.I0(\FSM_onehot_state_reg_n_0_[5] ),
        .I1(\counter[13]_i_7_n_0 ),
        .I2(\FSM_onehot_state_reg_n_0_[7] ),
        .I3(\counter[13]_i_8_n_0 ),
        .I4(data1[12]),
        .O(\counter[12]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEFF00FF00FF00)) 
    \counter[13]_i_1 
       (.I0(\counter[13]_i_2_n_0 ),
        .I1(counter[0]),
        .I2(\counter[13]_i_3_n_0 ),
        .I3(\counter[13]_i_4_n_0 ),
        .I4(\FSM_onehot_state_reg_n_0_[1] ),
        .I5(data1[13]),
        .O(counter_next[13]));
  LUT6 #(
    .INIT(64'hFFFFFFF7FFFFFFFF)) 
    \counter[13]_i_10 
       (.I0(counter[7]),
        .I1(counter[6]),
        .I2(counter[13]),
        .I3(counter[12]),
        .I4(counter[11]),
        .I5(counter[4]),
        .O(\counter[13]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'hFFEF)) 
    \counter[13]_i_11 
       (.I0(counter[3]),
        .I1(counter[2]),
        .I2(counter[8]),
        .I3(counter[5]),
        .O(\counter[13]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \counter[13]_i_12 
       (.I0(counter[2]),
        .I1(counter[3]),
        .O(\counter[13]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFDFF)) 
    \counter[13]_i_2 
       (.I0(counter[13]),
        .I1(counter[6]),
        .I2(counter[7]),
        .I3(counter[4]),
        .I4(counter[11]),
        .I5(counter[12]),
        .O(\counter[13]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFB)) 
    \counter[13]_i_3 
       (.I0(counter[5]),
        .I1(counter[8]),
        .I2(counter[2]),
        .I3(counter[3]),
        .I4(counter[1]),
        .I5(\counter[13]_i_6_n_0 ),
        .O(\counter[13]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hF8880000)) 
    \counter[13]_i_4 
       (.I0(\FSM_onehot_state_reg_n_0_[5] ),
        .I1(\counter[13]_i_7_n_0 ),
        .I2(\FSM_onehot_state_reg_n_0_[7] ),
        .I3(\counter[13]_i_8_n_0 ),
        .I4(data1[13]),
        .O(\counter[13]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \counter[13]_i_6 
       (.I0(counter[9]),
        .I1(counter[10]),
        .O(\counter[13]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEFFFFFFFFFFFF)) 
    \counter[13]_i_7 
       (.I0(\counter[13]_i_10_n_0 ),
        .I1(counter[0]),
        .I2(\counter[13]_i_11_n_0 ),
        .I3(counter[1]),
        .I4(counter[9]),
        .I5(counter[10]),
        .O(\counter[13]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFDFFFFFFFF)) 
    \counter[13]_i_8 
       (.I0(counter[1]),
        .I1(\counter[0]_i_6_n_0 ),
        .I2(\counter[13]_i_12_n_0 ),
        .I3(\counter[0]_i_5_n_0 ),
        .I4(\FSM_onehot_state[8]_i_5_n_0 ),
        .I5(counter[0]),
        .O(\counter[13]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEFF00FF00FF00)) 
    \counter[1]_i_1 
       (.I0(\counter[13]_i_2_n_0 ),
        .I1(counter[0]),
        .I2(\counter[13]_i_3_n_0 ),
        .I3(\counter[1]_i_2_n_0 ),
        .I4(\FSM_onehot_state_reg_n_0_[1] ),
        .I5(data1[1]),
        .O(counter_next[1]));
  LUT6 #(
    .INIT(64'hF800F8F0F8008800)) 
    \counter[1]_i_2 
       (.I0(\FSM_onehot_state_reg_n_0_[5] ),
        .I1(\counter[13]_i_7_n_0 ),
        .I2(\FSM_onehot_state_reg_n_0_[7] ),
        .I3(data1[1]),
        .I4(\counter[13]_i_8_n_0 ),
        .I5(state_next1),
        .O(\counter[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEFF00FF00FF00)) 
    \counter[2]_i_1 
       (.I0(\counter[13]_i_2_n_0 ),
        .I1(counter[0]),
        .I2(\counter[13]_i_3_n_0 ),
        .I3(\counter[2]_i_2_n_0 ),
        .I4(\FSM_onehot_state_reg_n_0_[1] ),
        .I5(data1[2]),
        .O(counter_next[2]));
  LUT6 #(
    .INIT(64'hF800F8F0F8008800)) 
    \counter[2]_i_2 
       (.I0(\FSM_onehot_state_reg_n_0_[5] ),
        .I1(\counter[13]_i_7_n_0 ),
        .I2(\FSM_onehot_state_reg_n_0_[7] ),
        .I3(data1[2]),
        .I4(\counter[13]_i_8_n_0 ),
        .I5(state_next1),
        .O(\counter[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEFF00FF00FF00)) 
    \counter[3]_i_1 
       (.I0(\counter[13]_i_2_n_0 ),
        .I1(counter[0]),
        .I2(\counter[13]_i_3_n_0 ),
        .I3(\counter[3]_i_2_n_0 ),
        .I4(\FSM_onehot_state_reg_n_0_[1] ),
        .I5(data1[3]),
        .O(counter_next[3]));
  LUT6 #(
    .INIT(64'hF800F8F0F8008800)) 
    \counter[3]_i_2 
       (.I0(\FSM_onehot_state_reg_n_0_[5] ),
        .I1(\counter[13]_i_7_n_0 ),
        .I2(\FSM_onehot_state_reg_n_0_[7] ),
        .I3(data1[3]),
        .I4(\counter[13]_i_8_n_0 ),
        .I5(state_next1),
        .O(\counter[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEFF00FF00FF00)) 
    \counter[4]_i_1 
       (.I0(\counter[13]_i_2_n_0 ),
        .I1(counter[0]),
        .I2(\counter[13]_i_3_n_0 ),
        .I3(\counter[4]_i_2_n_0 ),
        .I4(\FSM_onehot_state_reg_n_0_[1] ),
        .I5(data1[4]),
        .O(counter_next[4]));
  LUT6 #(
    .INIT(64'hF800F8F0F8008800)) 
    \counter[4]_i_2 
       (.I0(\FSM_onehot_state_reg_n_0_[5] ),
        .I1(\counter[13]_i_7_n_0 ),
        .I2(\FSM_onehot_state_reg_n_0_[7] ),
        .I3(data1[4]),
        .I4(\counter[13]_i_8_n_0 ),
        .I5(state_next1),
        .O(\counter[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEFF00FF00FF00)) 
    \counter[5]_i_1 
       (.I0(\counter[13]_i_2_n_0 ),
        .I1(counter[0]),
        .I2(\counter[13]_i_3_n_0 ),
        .I3(\counter[5]_i_2_n_0 ),
        .I4(\FSM_onehot_state_reg_n_0_[1] ),
        .I5(data1[5]),
        .O(counter_next[5]));
  LUT6 #(
    .INIT(64'hF800F8F0F8008800)) 
    \counter[5]_i_2 
       (.I0(\FSM_onehot_state_reg_n_0_[5] ),
        .I1(\counter[13]_i_7_n_0 ),
        .I2(\FSM_onehot_state_reg_n_0_[7] ),
        .I3(data1[5]),
        .I4(\counter[13]_i_8_n_0 ),
        .I5(state_next1),
        .O(\counter[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEFF00FF00FF00)) 
    \counter[6]_i_1 
       (.I0(\counter[13]_i_2_n_0 ),
        .I1(counter[0]),
        .I2(\counter[13]_i_3_n_0 ),
        .I3(\counter[6]_i_2_n_0 ),
        .I4(\FSM_onehot_state_reg_n_0_[1] ),
        .I5(data1[6]),
        .O(counter_next[6]));
  LUT5 #(
    .INIT(32'hF8880000)) 
    \counter[6]_i_2 
       (.I0(\FSM_onehot_state_reg_n_0_[5] ),
        .I1(\counter[13]_i_7_n_0 ),
        .I2(\FSM_onehot_state_reg_n_0_[7] ),
        .I3(\counter[13]_i_8_n_0 ),
        .I4(data1[6]),
        .O(\counter[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEFF00FF00FF00)) 
    \counter[7]_i_1 
       (.I0(\counter[13]_i_2_n_0 ),
        .I1(counter[0]),
        .I2(\counter[13]_i_3_n_0 ),
        .I3(\counter[7]_i_2_n_0 ),
        .I4(\FSM_onehot_state_reg_n_0_[1] ),
        .I5(data1[7]),
        .O(counter_next[7]));
  LUT5 #(
    .INIT(32'hF8880000)) 
    \counter[7]_i_2 
       (.I0(\FSM_onehot_state_reg_n_0_[5] ),
        .I1(\counter[13]_i_7_n_0 ),
        .I2(\FSM_onehot_state_reg_n_0_[7] ),
        .I3(\counter[13]_i_8_n_0 ),
        .I4(data1[7]),
        .O(\counter[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEFF00FF00FF00)) 
    \counter[8]_i_1 
       (.I0(\counter[13]_i_2_n_0 ),
        .I1(counter[0]),
        .I2(\counter[13]_i_3_n_0 ),
        .I3(\counter[8]_i_2_n_0 ),
        .I4(\FSM_onehot_state_reg_n_0_[1] ),
        .I5(data1[8]),
        .O(counter_next[8]));
  LUT5 #(
    .INIT(32'hF8880000)) 
    \counter[8]_i_2 
       (.I0(\FSM_onehot_state_reg_n_0_[5] ),
        .I1(\counter[13]_i_7_n_0 ),
        .I2(\FSM_onehot_state_reg_n_0_[7] ),
        .I3(\counter[13]_i_8_n_0 ),
        .I4(data1[8]),
        .O(\counter[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEFF00FF00FF00)) 
    \counter[9]_i_1 
       (.I0(\counter[13]_i_2_n_0 ),
        .I1(counter[0]),
        .I2(\counter[13]_i_3_n_0 ),
        .I3(\counter[9]_i_2_n_0 ),
        .I4(\FSM_onehot_state_reg_n_0_[1] ),
        .I5(data1[9]),
        .O(counter_next[9]));
  LUT5 #(
    .INIT(32'hF8880000)) 
    \counter[9]_i_2 
       (.I0(\FSM_onehot_state_reg_n_0_[5] ),
        .I1(\counter[13]_i_7_n_0 ),
        .I2(\FSM_onehot_state_reg_n_0_[7] ),
        .I3(\counter[13]_i_8_n_0 ),
        .I4(data1[9]),
        .O(\counter[9]_i_2_n_0 ));
  FDCE \counter_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(counter_next[0]),
        .Q(counter[0]));
  FDCE \counter_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(counter_next[10]),
        .Q(counter[10]));
  FDCE \counter_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(counter_next[11]),
        .Q(counter[11]));
  FDCE \counter_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(counter_next[12]),
        .Q(counter[12]));
  CARRY4 \counter_reg[12]_i_3 
       (.CI(\counter_reg[8]_i_3_n_0 ),
        .CO({\counter_reg[12]_i_3_n_0 ,\counter_reg[12]_i_3_n_1 ,\counter_reg[12]_i_3_n_2 ,\counter_reg[12]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data1[12:9]),
        .S(counter[12:9]));
  FDCE \counter_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(counter_next[13]),
        .Q(counter[13]));
  CARRY4 \counter_reg[13]_i_5 
       (.CI(\counter_reg[12]_i_3_n_0 ),
        .CO(\NLW_counter_reg[13]_i_5_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_counter_reg[13]_i_5_O_UNCONNECTED [3:1],data1[13]}),
        .S({1'b0,1'b0,1'b0,counter[13]}));
  FDCE \counter_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(counter_next[1]),
        .Q(counter[1]));
  FDCE \counter_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(counter_next[2]),
        .Q(counter[2]));
  FDCE \counter_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(counter_next[3]),
        .Q(counter[3]));
  FDCE \counter_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(counter_next[4]),
        .Q(counter[4]));
  CARRY4 \counter_reg[4]_i_3 
       (.CI(1'b0),
        .CO({\counter_reg[4]_i_3_n_0 ,\counter_reg[4]_i_3_n_1 ,\counter_reg[4]_i_3_n_2 ,\counter_reg[4]_i_3_n_3 }),
        .CYINIT(counter[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data1[4:1]),
        .S(counter[4:1]));
  FDCE \counter_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(counter_next[5]),
        .Q(counter[5]));
  FDCE \counter_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(counter_next[6]),
        .Q(counter[6]));
  FDCE \counter_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(counter_next[7]),
        .Q(counter[7]));
  FDCE \counter_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(counter_next[8]),
        .Q(counter[8]));
  CARRY4 \counter_reg[8]_i_3 
       (.CI(\counter_reg[4]_i_3_n_0 ),
        .CO({\counter_reg[8]_i_3_n_0 ,\counter_reg[8]_i_3_n_1 ,\counter_reg[8]_i_3_n_2 ,\counter_reg[8]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data1[8:5]),
        .S(counter[8:5]));
  FDCE \counter_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(counter_next[9]),
        .Q(counter[9]));
  LUT6 #(
    .INIT(64'h9000999900009999)) 
    \data_count[0]_i_1 
       (.I0(ps2_data_in),
        .I1(data_inter),
        .I2(data_count[3]),
        .I3(data_count[2]),
        .I4(data_count[0]),
        .I5(data_count[1]),
        .O(\data_count[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h9000999999990000)) 
    \data_count[1]_i_1 
       (.I0(ps2_data_in),
        .I1(data_inter),
        .I2(data_count[3]),
        .I3(data_count[2]),
        .I4(data_count[0]),
        .I5(data_count[1]),
        .O(\data_count[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h9099990099009900)) 
    \data_count[2]_i_1 
       (.I0(ps2_data_in),
        .I1(data_inter),
        .I2(data_count[3]),
        .I3(data_count[2]),
        .I4(data_count[0]),
        .I5(data_count[1]),
        .O(\data_count[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h9990909090909090)) 
    \data_count[3]_i_1 
       (.I0(ps2_data_in),
        .I1(data_inter),
        .I2(data_count[3]),
        .I3(data_count[2]),
        .I4(data_count[0]),
        .I5(data_count[1]),
        .O(\data_count[3]_i_1_n_0 ));
  FDCE \data_count_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\data_count[0]_i_1_n_0 ),
        .Q(data_count[0]));
  FDCE \data_count_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\data_count[1]_i_1_n_0 ),
        .Q(data_count[1]));
  FDCE \data_count_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\data_count[2]_i_1_n_0 ),
        .Q(data_count[2]));
  FDCE \data_count_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\data_count[3]_i_1_n_0 ),
        .Q(data_count[3]));
  FDPE data_inter_reg
       (.C(clk),
        .CE(1'b1),
        .D(ps2_data_in),
        .PRE(rst),
        .Q(data_inter));
  LUT6 #(
    .INIT(64'hFFFF800880088008)) 
    err_i_1
       (.I0(\FSM_onehot_state_reg_n_0_[4] ),
        .I1(err_i_2_n_0),
        .I2(\frame_reg_n_0_[9] ),
        .I3(err_i_3_n_0),
        .I4(\FSM_onehot_state_reg_n_0_[14] ),
        .I5(state_next1),
        .O(err_next));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h2000)) 
    err_i_2
       (.I0(\bits_count_reg_n_0_[3] ),
        .I1(\bits_count_reg_n_0_[2] ),
        .I2(\bits_count_reg_n_0_[1] ),
        .I3(\bits_count_reg_n_0_[0] ),
        .O(err_i_2_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    err_i_3
       (.I0(\frame_reg_n_0_[2] ),
        .I1(\frame_reg_n_0_[1] ),
        .I2(\rx_data[7]_i_2_n_0 ),
        .O(err_i_3_n_0));
  FDCE err_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(err_next),
        .Q(err));
  LUT3 #(
    .INIT(8'h70)) 
    \frame[0]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(tx_valid_reg),
        .I2(\frame_reg_n_0_[1] ),
        .O(p_1_in[0]));
  LUT4 #(
    .INIT(16'hFEEE)) 
    \frame[10]_i_1 
       (.I0(p_1_in_0),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(\FSM_onehot_state_reg_n_0_[0] ),
        .I3(tx_valid_reg),
        .O(\frame[10]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hEA)) 
    \frame[10]_i_2 
       (.I0(ps2_data_s_reg_n_0),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(tx_valid_reg),
        .O(p_1_in[10]));
  LUT4 #(
    .INIT(16'hEA2A)) 
    \frame[1]_i_1 
       (.I0(\frame_reg_n_0_[2] ),
        .I1(tx_valid_reg),
        .I2(\FSM_onehot_state_reg_n_0_[0] ),
        .I3(\tx_data_reg[2] ),
        .O(p_1_in[1]));
  LUT4 #(
    .INIT(16'hEA2A)) 
    \frame[2]_i_1 
       (.I0(\frame_reg_n_0_[3] ),
        .I1(tx_valid_reg),
        .I2(\FSM_onehot_state_reg_n_0_[0] ),
        .I3(\tx_data_reg[2] ),
        .O(p_1_in[2]));
  LUT4 #(
    .INIT(16'hEA2A)) 
    \frame[3]_i_1 
       (.I0(\frame_reg_n_0_[4] ),
        .I1(tx_valid_reg),
        .I2(\FSM_onehot_state_reg_n_0_[0] ),
        .I3(\tx_data_reg[2] ),
        .O(p_1_in[3]));
  LUT4 #(
    .INIT(16'hEA2A)) 
    \frame[4]_i_1 
       (.I0(\frame_reg_n_0_[5] ),
        .I1(tx_valid_reg),
        .I2(\FSM_onehot_state_reg_n_0_[0] ),
        .I3(\tx_data_reg[7] ),
        .O(p_1_in[4]));
  LUT4 #(
    .INIT(16'hEA2A)) 
    \frame[5]_i_1 
       (.I0(\frame_reg_n_0_[6] ),
        .I1(tx_valid_reg),
        .I2(\FSM_onehot_state_reg_n_0_[0] ),
        .I3(\tx_data_reg[7] ),
        .O(p_1_in[5]));
  LUT4 #(
    .INIT(16'hEA2A)) 
    \frame[6]_i_1 
       (.I0(\frame_reg_n_0_[7] ),
        .I1(tx_valid_reg),
        .I2(\FSM_onehot_state_reg_n_0_[0] ),
        .I3(\tx_data_reg[7] ),
        .O(p_1_in[6]));
  LUT4 #(
    .INIT(16'hEA2A)) 
    \frame[7]_i_1 
       (.I0(\frame_reg_n_0_[8] ),
        .I1(tx_valid_reg),
        .I2(\FSM_onehot_state_reg_n_0_[0] ),
        .I3(\tx_data_reg[7] ),
        .O(p_1_in[7]));
  LUT4 #(
    .INIT(16'hEA2A)) 
    \frame[8]_i_1 
       (.I0(\frame_reg_n_0_[9] ),
        .I1(tx_valid_reg),
        .I2(\FSM_onehot_state_reg_n_0_[0] ),
        .I3(\tx_data_reg[7] ),
        .O(p_1_in[8]));
  LUT5 #(
    .INIT(32'hEA2A2AEA)) 
    \frame[9]_i_1 
       (.I0(\frame_reg_n_0_[10] ),
        .I1(tx_valid_reg),
        .I2(\FSM_onehot_state_reg_n_0_[0] ),
        .I3(\tx_data_reg[2] ),
        .I4(\tx_data_reg[7] ),
        .O(p_1_in[9]));
  FDCE \frame_reg[0] 
       (.C(clk),
        .CE(\frame[10]_i_1_n_0 ),
        .CLR(rst),
        .D(p_1_in[0]),
        .Q(\frame_reg_n_0_[0] ));
  FDCE \frame_reg[10] 
       (.C(clk),
        .CE(\frame[10]_i_1_n_0 ),
        .CLR(rst),
        .D(p_1_in[10]),
        .Q(\frame_reg_n_0_[10] ));
  FDCE \frame_reg[1] 
       (.C(clk),
        .CE(\frame[10]_i_1_n_0 ),
        .CLR(rst),
        .D(p_1_in[1]),
        .Q(\frame_reg_n_0_[1] ));
  FDCE \frame_reg[2] 
       (.C(clk),
        .CE(\frame[10]_i_1_n_0 ),
        .CLR(rst),
        .D(p_1_in[2]),
        .Q(\frame_reg_n_0_[2] ));
  FDCE \frame_reg[3] 
       (.C(clk),
        .CE(\frame[10]_i_1_n_0 ),
        .CLR(rst),
        .D(p_1_in[3]),
        .Q(\frame_reg_n_0_[3] ));
  FDCE \frame_reg[4] 
       (.C(clk),
        .CE(\frame[10]_i_1_n_0 ),
        .CLR(rst),
        .D(p_1_in[4]),
        .Q(\frame_reg_n_0_[4] ));
  FDCE \frame_reg[5] 
       (.C(clk),
        .CE(\frame[10]_i_1_n_0 ),
        .CLR(rst),
        .D(p_1_in[5]),
        .Q(\frame_reg_n_0_[5] ));
  FDCE \frame_reg[6] 
       (.C(clk),
        .CE(\frame[10]_i_1_n_0 ),
        .CLR(rst),
        .D(p_1_in[6]),
        .Q(\frame_reg_n_0_[6] ));
  FDCE \frame_reg[7] 
       (.C(clk),
        .CE(\frame[10]_i_1_n_0 ),
        .CLR(rst),
        .D(p_1_in[7]),
        .Q(\frame_reg_n_0_[7] ));
  FDCE \frame_reg[8] 
       (.C(clk),
        .CE(\frame[10]_i_1_n_0 ),
        .CLR(rst),
        .D(p_1_in[8]),
        .Q(\frame_reg_n_0_[8] ));
  FDCE \frame_reg[9] 
       (.C(clk),
        .CE(\frame[10]_i_1_n_0 ),
        .CLR(rst),
        .D(p_1_in[9]),
        .Q(\frame_reg_n_0_[9] ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h0803)) 
    is_break_i_1
       (.I0(rx_valid),
        .I1(out[2]),
        .I2(out[0]),
        .I3(out[1]),
        .O(is_break_reg));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hF8000800)) 
    is_extend_i_1
       (.I0(out[0]),
        .I1(rx_valid),
        .I2(out[1]),
        .I3(out[2]),
        .I4(is_extend),
        .O(is_extend_reg));
  LUT2 #(
    .INIT(4'h1)) 
    ps2_clk_en_inv_i_1
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(\FSM_onehot_state_reg_n_0_[5] ),
        .O(ps2_clk_en_next));
  FDPE ps2_clk_en_reg_inv
       (.C(clk),
        .CE(1'b1),
        .D(ps2_clk_en_next),
        .PRE(rst),
        .Q(T0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    ps2_clk_out_i_1
       (.I0(\FSM_onehot_state_reg_n_0_[6] ),
        .I1(\FSM_onehot_state_reg_n_0_[7] ),
        .I2(\FSM_onehot_state[5]_i_3_n_0 ),
        .I3(\FSM_onehot_state[0]_i_5_n_0 ),
        .I4(ps2_clk_out_i_2_n_0),
        .O(ps2_clk_out_next));
  LUT3 #(
    .INIT(8'hFE)) 
    ps2_clk_out_i_2
       (.I0(\FSM_onehot_state_reg_n_0_[9] ),
        .I1(p_1_in_0),
        .I2(\FSM_onehot_state_reg_n_0_[11] ),
        .O(ps2_clk_out_i_2_n_0));
  FDCE ps2_clk_out_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(ps2_clk_out_next),
        .Q(ps2_clk_out));
  LUT4 #(
    .INIT(16'hFD80)) 
    ps2_clk_s_i_1
       (.I0(ps2_clk_s),
        .I1(ps2_clk_in),
        .I2(clk_inter),
        .I3(state_next1),
        .O(ps2_clk_s_i_1_n_0));
  LUT4 #(
    .INIT(16'h8000)) 
    ps2_clk_s_i_2
       (.I0(clk_count[3]),
        .I1(clk_count[2]),
        .I2(clk_count[0]),
        .I3(clk_count[1]),
        .O(ps2_clk_s));
  FDPE ps2_clk_s_reg
       (.C(clk),
        .CE(1'b1),
        .D(ps2_clk_s_i_1_n_0),
        .PRE(rst),
        .Q(state_next1));
  LUT6 #(
    .INIT(64'h0000000000000007)) 
    ps2_data_en_inv_i_1
       (.I0(\FSM_onehot_state[11]_i_2_n_0 ),
        .I1(\FSM_onehot_state_reg_n_0_[9] ),
        .I2(p_1_in_0),
        .I3(\FSM_onehot_state_reg_n_0_[11] ),
        .I4(ps2_data_en_inv_i_2_n_0),
        .I5(\FSM_onehot_state_reg_n_0_[5] ),
        .O(ps2_data_en_next));
  LUT2 #(
    .INIT(4'hE)) 
    ps2_data_en_inv_i_2
       (.I0(\FSM_onehot_state_reg_n_0_[6] ),
        .I1(\FSM_onehot_state_reg_n_0_[7] ),
        .O(ps2_data_en_inv_i_2_n_0));
  FDPE ps2_data_en_reg_inv
       (.C(clk),
        .CE(1'b1),
        .D(ps2_data_en_next),
        .PRE(rst),
        .Q(ps2_data_en_reg_inv_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFEAAAA)) 
    ps2_data_out_i_1
       (.I0(\FSM_onehot_state[0]_i_5_n_0 ),
        .I1(\FSM_onehot_state_reg_n_0_[11] ),
        .I2(p_1_in_0),
        .I3(\FSM_onehot_state_reg_n_0_[9] ),
        .I4(\frame_reg_n_0_[0] ),
        .I5(\FSM_onehot_state[6]_i_2_n_0 ),
        .O(ps2_data_out_next));
  FDCE ps2_data_out_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(ps2_data_out_next),
        .Q(ps2_data_out));
  LUT4 #(
    .INIT(16'hFD80)) 
    ps2_data_s_i_1
       (.I0(ps2_data_s),
        .I1(ps2_data_in),
        .I2(data_inter),
        .I3(ps2_data_s_reg_n_0),
        .O(ps2_data_s_i_1_n_0));
  LUT4 #(
    .INIT(16'h8000)) 
    ps2_data_s_i_2
       (.I0(data_count[3]),
        .I1(data_count[2]),
        .I2(data_count[0]),
        .I3(data_count[1]),
        .O(ps2_data_s));
  FDPE ps2_data_s_reg
       (.C(clk),
        .CE(1'b1),
        .D(ps2_data_s_i_1_n_0),
        .PRE(rst),
        .Q(ps2_data_s_reg_n_0));
  LUT6 #(
    .INIT(64'h2882822800000000)) 
    \rx_data[7]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[4] ),
        .I1(\frame_reg_n_0_[9] ),
        .I2(\frame_reg_n_0_[2] ),
        .I3(\frame_reg_n_0_[1] ),
        .I4(\rx_data[7]_i_2_n_0 ),
        .I5(err_i_2_n_0),
        .O(rx_finish));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \rx_data[7]_i_2 
       (.I0(\frame_reg_n_0_[4] ),
        .I1(\frame_reg_n_0_[3] ),
        .I2(\frame_reg_n_0_[7] ),
        .I3(\frame_reg_n_0_[8] ),
        .I4(\frame_reg_n_0_[5] ),
        .I5(\frame_reg_n_0_[6] ),
        .O(\rx_data[7]_i_2_n_0 ));
  FDCE \rx_data_reg[0] 
       (.C(clk),
        .CE(rx_finish),
        .CLR(rst),
        .D(\frame_reg_n_0_[1] ),
        .Q(Q[0]));
  FDCE \rx_data_reg[1] 
       (.C(clk),
        .CE(rx_finish),
        .CLR(rst),
        .D(\frame_reg_n_0_[2] ),
        .Q(Q[1]));
  FDCE \rx_data_reg[2] 
       (.C(clk),
        .CE(rx_finish),
        .CLR(rst),
        .D(\frame_reg_n_0_[3] ),
        .Q(Q[2]));
  FDCE \rx_data_reg[3] 
       (.C(clk),
        .CE(rx_finish),
        .CLR(rst),
        .D(\frame_reg_n_0_[4] ),
        .Q(Q[3]));
  FDCE \rx_data_reg[4] 
       (.C(clk),
        .CE(rx_finish),
        .CLR(rst),
        .D(\frame_reg_n_0_[5] ),
        .Q(Q[4]));
  FDCE \rx_data_reg[5] 
       (.C(clk),
        .CE(rx_finish),
        .CLR(rst),
        .D(\frame_reg_n_0_[6] ),
        .Q(Q[5]));
  FDCE \rx_data_reg[6] 
       (.C(clk),
        .CE(rx_finish),
        .CLR(rst),
        .D(\frame_reg_n_0_[7] ),
        .Q(Q[6]));
  FDCE \rx_data_reg[7] 
       (.C(clk),
        .CE(rx_finish),
        .CLR(rst),
        .D(\frame_reg_n_0_[8] ),
        .Q(Q[7]));
  FDCE rx_valid_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(rx_finish),
        .Q(rx_valid));
  LUT4 #(
    .INIT(16'h0040)) 
    tx_valid_i_1
       (.I0(out[1]),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(out[0]),
        .I3(out[2]),
        .O(tx_valid));
  LUT6 #(
    .INIT(64'h0A0A88A800000000)) 
    valid_i_1
       (.I0(rx_valid),
        .I1(valid_i_2_n_0),
        .I2(out[0]),
        .I3(Q[4]),
        .I4(out[1]),
        .I5(out[2]),
        .O(valid_reg));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    valid_i_2
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(valid_i_3_n_0),
        .O(valid_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hFFF7FFFF)) 
    valid_i_3
       (.I0(Q[5]),
        .I1(Q[7]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(Q[6]),
        .O(valid_i_3_n_0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
