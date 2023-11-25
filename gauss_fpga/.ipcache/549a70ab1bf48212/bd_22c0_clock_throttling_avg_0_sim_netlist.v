// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2.2 (lin64) Build 3118627 Tue Feb  9 05:13:49 MST 2021
// Date        : Wed Nov 22 16:49:04 2023
// Host        : ensc-mmc-14 running 64-bit Ubuntu 18.04.6 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ bd_22c0_clock_throttling_avg_0_sim_netlist.v
// Design      : bd_22c0_clock_throttling_avg_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcu50-fsvh2104-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "bd_22c0_clock_throttling_avg_0,shell_utils_clock_throttling_avg,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "shell_utils_clock_throttling_avg,Vivado 2020.2.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (Clk,
    Rst,
    Rate_Upd_Tog,
    Rate,
    Rate_Avg);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 Clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME Clk, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0, CLK_DOMAIN cd_ctrl_00, INSERT_VIP 0" *) input Clk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 Rst RST" *) (* x_interface_parameter = "XIL_INTERFACENAME Rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input Rst;
  input Rate_Upd_Tog;
  input [7:0]Rate;
  output [13:0]Rate_Avg;

  wire Clk;
  wire [7:0]Rate;
  wire [13:0]Rate_Avg;
  wire Rate_Upd_Tog;
  wire Rst;

  (* AVE_NUM_SAMPLES = "50" *) 
  (* AVE_WIDTH = "14" *) 
  (* RST_CNT_BITS = "6" *) 
  (* SAMPLE_SAT_VAL = "128" *) 
  (* SAMPLE_WIDTH = "8" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_shell_utils_clock_throttling_avg U0
       (.Clk(Clk),
        .Rate(Rate),
        .Rate_Avg(Rate_Avg),
        .Rate_Upd_Tog(Rate_Upd_Tog),
        .Rst(Rst));
endmodule

(* AVE_NUM_SAMPLES = "50" *) (* AVE_WIDTH = "14" *) (* RST_CNT_BITS = "6" *) 
(* SAMPLE_SAT_VAL = "128" *) (* SAMPLE_WIDTH = "8" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_shell_utils_clock_throttling_avg
   (Clk,
    Rst,
    Rate_Upd_Tog,
    Rate,
    Rate_Avg);
  input Clk;
  input Rst;
  input Rate_Upd_Tog;
  input [7:0]Rate;
  output [13:0]Rate_Avg;

  wire \Avg[7]_i_2_n_0 ;
  wire \Avg[7]_i_3_n_0 ;
  wire \Avg[7]_i_4_n_0 ;
  wire \Avg[7]_i_5_n_0 ;
  wire \Avg[7]_i_6_n_0 ;
  wire \Avg[7]_i_7_n_0 ;
  wire \Avg[7]_i_8_n_0 ;
  wire \Avg[7]_i_9_n_0 ;
  wire \Avg_reg[13]_i_1_n_3 ;
  wire \Avg_reg[13]_i_1_n_4 ;
  wire \Avg_reg[13]_i_1_n_5 ;
  wire \Avg_reg[13]_i_1_n_6 ;
  wire \Avg_reg[13]_i_1_n_7 ;
  wire \Avg_reg[7]_i_1_n_0 ;
  wire \Avg_reg[7]_i_1_n_1 ;
  wire \Avg_reg[7]_i_1_n_2 ;
  wire \Avg_reg[7]_i_1_n_3 ;
  wire \Avg_reg[7]_i_1_n_4 ;
  wire \Avg_reg[7]_i_1_n_5 ;
  wire \Avg_reg[7]_i_1_n_6 ;
  wire \Avg_reg[7]_i_1_n_7 ;
  wire Clk;
  wire \Pipe[0][Valid]_i_1_n_0 ;
  wire \Pipe[1][New_Sample][1]_i_1_n_0 ;
  wire \Pipe[1][New_Sample][2]_i_1_n_0 ;
  wire \Pipe[1][New_Sample][3]_i_1_n_0 ;
  wire \Pipe[1][New_Sample][4]_i_1_n_0 ;
  wire \Pipe[1][New_Sample][5]_i_1_n_0 ;
  wire \Pipe[1][New_Sample][6]_i_1_n_0 ;
  wire \Pipe[1][New_Sample][7]_i_1_n_0 ;
  wire \Pipe[1][New_Sample][7]_i_2_n_0 ;
  wire \Pipe[3][Avg_Calc][13]_i_2_n_0 ;
  wire \Pipe[3][Avg_Calc][13]_i_3_n_0 ;
  wire \Pipe[3][Avg_Calc][13]_i_4_n_0 ;
  wire \Pipe[3][Avg_Calc][13]_i_5_n_0 ;
  wire \Pipe[3][Avg_Calc][13]_i_6_n_0 ;
  wire \Pipe[3][Avg_Calc][13]_i_7_n_0 ;
  wire \Pipe[3][Avg_Calc][7]_i_2_n_0 ;
  wire \Pipe[3][Avg_Calc][7]_i_3_n_0 ;
  wire \Pipe[3][Avg_Calc][7]_i_4_n_0 ;
  wire \Pipe[3][Avg_Calc][7]_i_5_n_0 ;
  wire \Pipe[3][Avg_Calc][7]_i_6_n_0 ;
  wire \Pipe[3][Avg_Calc][7]_i_7_n_0 ;
  wire \Pipe[3][Avg_Calc][7]_i_8_n_0 ;
  wire \Pipe[3][Avg_Calc][7]_i_9_n_0 ;
  wire \Pipe_reg[0][Flush]__0 ;
  wire [7:0]\Pipe_reg[0][New_Sample] ;
  wire \Pipe_reg[0][Valid]__0 ;
  wire \Pipe_reg[1][Flush_n_0_] ;
  wire [7:0]\Pipe_reg[1][New_Sample] ;
  wire \Pipe_reg[1][Valid_n_0_] ;
  wire [13:0]\Pipe_reg[2][Avg_Calc] ;
  wire [7:0]\Pipe_reg[2][Exprd_Sample] ;
  wire \Pipe_reg[2][Flush]__0 ;
  wire [7:0]\Pipe_reg[2][New_Sample] ;
  wire \Pipe_reg[2][Valid]__0 ;
  wire [13:0]\Pipe_reg[3][Avg_Calc] ;
  wire \Pipe_reg[3][Avg_Calc][13]_i_1_n_10 ;
  wire \Pipe_reg[3][Avg_Calc][13]_i_1_n_11 ;
  wire \Pipe_reg[3][Avg_Calc][13]_i_1_n_12 ;
  wire \Pipe_reg[3][Avg_Calc][13]_i_1_n_13 ;
  wire \Pipe_reg[3][Avg_Calc][13]_i_1_n_14 ;
  wire \Pipe_reg[3][Avg_Calc][13]_i_1_n_15 ;
  wire \Pipe_reg[3][Avg_Calc][13]_i_1_n_3 ;
  wire \Pipe_reg[3][Avg_Calc][13]_i_1_n_4 ;
  wire \Pipe_reg[3][Avg_Calc][13]_i_1_n_5 ;
  wire \Pipe_reg[3][Avg_Calc][13]_i_1_n_6 ;
  wire \Pipe_reg[3][Avg_Calc][13]_i_1_n_7 ;
  wire \Pipe_reg[3][Avg_Calc][7]_i_1_n_0 ;
  wire \Pipe_reg[3][Avg_Calc][7]_i_1_n_1 ;
  wire \Pipe_reg[3][Avg_Calc][7]_i_1_n_10 ;
  wire \Pipe_reg[3][Avg_Calc][7]_i_1_n_11 ;
  wire \Pipe_reg[3][Avg_Calc][7]_i_1_n_12 ;
  wire \Pipe_reg[3][Avg_Calc][7]_i_1_n_13 ;
  wire \Pipe_reg[3][Avg_Calc][7]_i_1_n_14 ;
  wire \Pipe_reg[3][Avg_Calc][7]_i_1_n_15 ;
  wire \Pipe_reg[3][Avg_Calc][7]_i_1_n_2 ;
  wire \Pipe_reg[3][Avg_Calc][7]_i_1_n_3 ;
  wire \Pipe_reg[3][Avg_Calc][7]_i_1_n_4 ;
  wire \Pipe_reg[3][Avg_Calc][7]_i_1_n_5 ;
  wire \Pipe_reg[3][Avg_Calc][7]_i_1_n_6 ;
  wire \Pipe_reg[3][Avg_Calc][7]_i_1_n_7 ;
  wire \Pipe_reg[3][Avg_Calc][7]_i_1_n_8 ;
  wire \Pipe_reg[3][Avg_Calc][7]_i_1_n_9 ;
  wire \Pipe_reg[3][Flush]__0 ;
  wire [7:0]\Pipe_reg[3][New_Sample] ;
  wire \Pipe_reg[3][Valid]__0 ;
  wire [7:0]Rate;
  wire [13:0]Rate_Avg;
  wire Rate_Upd_Tog;
  wire Rate_Upd_Tog_d1;
  wire Rst;
  wire \Rst_Count[1]_i_1_n_0 ;
  wire \Rst_Count[2]_i_1_n_0 ;
  wire \Rst_Count[3]_i_1_n_0 ;
  wire \Rst_Count[4]_i_1_n_0 ;
  wire \Rst_Count[5]_i_1_n_0 ;
  wire \Rst_Count[6]_i_2_n_0 ;
  wire \Rst_Count_reg_n_0_[0] ;
  wire \Rst_Count_reg_n_0_[1] ;
  wire \Rst_Count_reg_n_0_[2] ;
  wire \Rst_Count_reg_n_0_[3] ;
  wire \Rst_Count_reg_n_0_[4] ;
  wire \Rst_Count_reg_n_0_[5] ;
  wire \Sample_Pipe_reg[31][0]_srl32_n_1 ;
  wire \Sample_Pipe_reg[31][1]_srl32_n_1 ;
  wire \Sample_Pipe_reg[31][2]_srl32_n_1 ;
  wire \Sample_Pipe_reg[31][3]_srl32_n_1 ;
  wire \Sample_Pipe_reg[31][4]_srl32_n_1 ;
  wire \Sample_Pipe_reg[31][5]_srl32_n_1 ;
  wire \Sample_Pipe_reg[31][6]_srl32_n_1 ;
  wire \Sample_Pipe_reg[31][7]_srl32_i_1_n_0 ;
  wire \Sample_Pipe_reg[31][7]_srl32_n_1 ;
  wire [7:0]\Sample_Pipe_reg[49] ;
  wire clear;
  wire [0:0]minusOp;
  wire p_0_in;
  wire [13:0]plusOp;
  wire [7:5]\NLW_Avg_reg[13]_i_1_CO_UNCONNECTED ;
  wire [7:6]\NLW_Avg_reg[13]_i_1_O_UNCONNECTED ;
  wire [7:5]\NLW_Pipe_reg[3][Avg_Calc][13]_i_1_CO_UNCONNECTED ;
  wire [7:6]\NLW_Pipe_reg[3][Avg_Calc][13]_i_1_O_UNCONNECTED ;
  wire \NLW_Sample_Pipe_reg[31][0]_srl32_Q_UNCONNECTED ;
  wire \NLW_Sample_Pipe_reg[31][1]_srl32_Q_UNCONNECTED ;
  wire \NLW_Sample_Pipe_reg[31][2]_srl32_Q_UNCONNECTED ;
  wire \NLW_Sample_Pipe_reg[31][3]_srl32_Q_UNCONNECTED ;
  wire \NLW_Sample_Pipe_reg[31][4]_srl32_Q_UNCONNECTED ;
  wire \NLW_Sample_Pipe_reg[31][5]_srl32_Q_UNCONNECTED ;
  wire \NLW_Sample_Pipe_reg[31][6]_srl32_Q_UNCONNECTED ;
  wire \NLW_Sample_Pipe_reg[31][7]_srl32_Q_UNCONNECTED ;
  wire \NLW_Sample_Pipe_reg[49][0]_srl18_Q31_UNCONNECTED ;
  wire \NLW_Sample_Pipe_reg[49][1]_srl18_Q31_UNCONNECTED ;
  wire \NLW_Sample_Pipe_reg[49][2]_srl18_Q31_UNCONNECTED ;
  wire \NLW_Sample_Pipe_reg[49][3]_srl18_Q31_UNCONNECTED ;
  wire \NLW_Sample_Pipe_reg[49][4]_srl18_Q31_UNCONNECTED ;
  wire \NLW_Sample_Pipe_reg[49][5]_srl18_Q31_UNCONNECTED ;
  wire \NLW_Sample_Pipe_reg[49][6]_srl18_Q31_UNCONNECTED ;
  wire \NLW_Sample_Pipe_reg[49][7]_srl18_Q31_UNCONNECTED ;

  LUT2 #(
    .INIT(4'h6)) 
    \Avg[7]_i_2 
       (.I0(\Pipe_reg[3][Avg_Calc] [7]),
        .I1(\Pipe_reg[3][New_Sample] [7]),
        .O(\Avg[7]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Avg[7]_i_3 
       (.I0(\Pipe_reg[3][Avg_Calc] [6]),
        .I1(\Pipe_reg[3][New_Sample] [6]),
        .O(\Avg[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Avg[7]_i_4 
       (.I0(\Pipe_reg[3][Avg_Calc] [5]),
        .I1(\Pipe_reg[3][New_Sample] [5]),
        .O(\Avg[7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Avg[7]_i_5 
       (.I0(\Pipe_reg[3][Avg_Calc] [4]),
        .I1(\Pipe_reg[3][New_Sample] [4]),
        .O(\Avg[7]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Avg[7]_i_6 
       (.I0(\Pipe_reg[3][Avg_Calc] [3]),
        .I1(\Pipe_reg[3][New_Sample] [3]),
        .O(\Avg[7]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Avg[7]_i_7 
       (.I0(\Pipe_reg[3][Avg_Calc] [2]),
        .I1(\Pipe_reg[3][New_Sample] [2]),
        .O(\Avg[7]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Avg[7]_i_8 
       (.I0(\Pipe_reg[3][Avg_Calc] [1]),
        .I1(\Pipe_reg[3][New_Sample] [1]),
        .O(\Avg[7]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Avg[7]_i_9 
       (.I0(\Pipe_reg[3][Avg_Calc] [0]),
        .I1(\Pipe_reg[3][New_Sample] [0]),
        .O(\Avg[7]_i_9_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Avg_reg[0] 
       (.C(Clk),
        .CE(\Pipe_reg[3][Valid]__0 ),
        .D(plusOp[0]),
        .Q(Rate_Avg[0]),
        .R(\Pipe_reg[3][Flush]__0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Avg_reg[10] 
       (.C(Clk),
        .CE(\Pipe_reg[3][Valid]__0 ),
        .D(plusOp[10]),
        .Q(Rate_Avg[10]),
        .R(\Pipe_reg[3][Flush]__0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Avg_reg[11] 
       (.C(Clk),
        .CE(\Pipe_reg[3][Valid]__0 ),
        .D(plusOp[11]),
        .Q(Rate_Avg[11]),
        .R(\Pipe_reg[3][Flush]__0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Avg_reg[12] 
       (.C(Clk),
        .CE(\Pipe_reg[3][Valid]__0 ),
        .D(plusOp[12]),
        .Q(Rate_Avg[12]),
        .R(\Pipe_reg[3][Flush]__0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Avg_reg[13] 
       (.C(Clk),
        .CE(\Pipe_reg[3][Valid]__0 ),
        .D(plusOp[13]),
        .Q(Rate_Avg[13]),
        .R(\Pipe_reg[3][Flush]__0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \Avg_reg[13]_i_1 
       (.CI(\Avg_reg[7]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_Avg_reg[13]_i_1_CO_UNCONNECTED [7:5],\Avg_reg[13]_i_1_n_3 ,\Avg_reg[13]_i_1_n_4 ,\Avg_reg[13]_i_1_n_5 ,\Avg_reg[13]_i_1_n_6 ,\Avg_reg[13]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_Avg_reg[13]_i_1_O_UNCONNECTED [7:6],plusOp[13:8]}),
        .S({1'b0,1'b0,\Pipe_reg[3][Avg_Calc] [13:8]}));
  FDRE #(
    .INIT(1'b0)) 
    \Avg_reg[1] 
       (.C(Clk),
        .CE(\Pipe_reg[3][Valid]__0 ),
        .D(plusOp[1]),
        .Q(Rate_Avg[1]),
        .R(\Pipe_reg[3][Flush]__0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Avg_reg[2] 
       (.C(Clk),
        .CE(\Pipe_reg[3][Valid]__0 ),
        .D(plusOp[2]),
        .Q(Rate_Avg[2]),
        .R(\Pipe_reg[3][Flush]__0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Avg_reg[3] 
       (.C(Clk),
        .CE(\Pipe_reg[3][Valid]__0 ),
        .D(plusOp[3]),
        .Q(Rate_Avg[3]),
        .R(\Pipe_reg[3][Flush]__0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Avg_reg[4] 
       (.C(Clk),
        .CE(\Pipe_reg[3][Valid]__0 ),
        .D(plusOp[4]),
        .Q(Rate_Avg[4]),
        .R(\Pipe_reg[3][Flush]__0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Avg_reg[5] 
       (.C(Clk),
        .CE(\Pipe_reg[3][Valid]__0 ),
        .D(plusOp[5]),
        .Q(Rate_Avg[5]),
        .R(\Pipe_reg[3][Flush]__0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Avg_reg[6] 
       (.C(Clk),
        .CE(\Pipe_reg[3][Valid]__0 ),
        .D(plusOp[6]),
        .Q(Rate_Avg[6]),
        .R(\Pipe_reg[3][Flush]__0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Avg_reg[7] 
       (.C(Clk),
        .CE(\Pipe_reg[3][Valid]__0 ),
        .D(plusOp[7]),
        .Q(Rate_Avg[7]),
        .R(\Pipe_reg[3][Flush]__0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \Avg_reg[7]_i_1 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\Avg_reg[7]_i_1_n_0 ,\Avg_reg[7]_i_1_n_1 ,\Avg_reg[7]_i_1_n_2 ,\Avg_reg[7]_i_1_n_3 ,\Avg_reg[7]_i_1_n_4 ,\Avg_reg[7]_i_1_n_5 ,\Avg_reg[7]_i_1_n_6 ,\Avg_reg[7]_i_1_n_7 }),
        .DI(\Pipe_reg[3][Avg_Calc] [7:0]),
        .O(plusOp[7:0]),
        .S({\Avg[7]_i_2_n_0 ,\Avg[7]_i_3_n_0 ,\Avg[7]_i_4_n_0 ,\Avg[7]_i_5_n_0 ,\Avg[7]_i_6_n_0 ,\Avg[7]_i_7_n_0 ,\Avg[7]_i_8_n_0 ,\Avg[7]_i_9_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \Avg_reg[8] 
       (.C(Clk),
        .CE(\Pipe_reg[3][Valid]__0 ),
        .D(plusOp[8]),
        .Q(Rate_Avg[8]),
        .R(\Pipe_reg[3][Flush]__0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Avg_reg[9] 
       (.C(Clk),
        .CE(\Pipe_reg[3][Valid]__0 ),
        .D(plusOp[9]),
        .Q(Rate_Avg[9]),
        .R(\Pipe_reg[3][Flush]__0 ));
  LUT3 #(
    .INIT(8'h06)) 
    \Pipe[0][Valid]_i_1 
       (.I0(Rate_Upd_Tog),
        .I1(Rate_Upd_Tog_d1),
        .I2(p_0_in),
        .O(\Pipe[0][Valid]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \Pipe[1][New_Sample][1]_i_1 
       (.I0(\Pipe_reg[0][New_Sample] [0]),
        .I1(\Pipe_reg[0][New_Sample] [1]),
        .O(\Pipe[1][New_Sample][1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h1E)) 
    \Pipe[1][New_Sample][2]_i_1 
       (.I0(\Pipe_reg[0][New_Sample] [0]),
        .I1(\Pipe_reg[0][New_Sample] [1]),
        .I2(\Pipe_reg[0][New_Sample] [2]),
        .O(\Pipe[1][New_Sample][2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h01FE)) 
    \Pipe[1][New_Sample][3]_i_1 
       (.I0(\Pipe_reg[0][New_Sample] [2]),
        .I1(\Pipe_reg[0][New_Sample] [1]),
        .I2(\Pipe_reg[0][New_Sample] [0]),
        .I3(\Pipe_reg[0][New_Sample] [3]),
        .O(\Pipe[1][New_Sample][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h0001FFFE)) 
    \Pipe[1][New_Sample][4]_i_1 
       (.I0(\Pipe_reg[0][New_Sample] [3]),
        .I1(\Pipe_reg[0][New_Sample] [0]),
        .I2(\Pipe_reg[0][New_Sample] [1]),
        .I3(\Pipe_reg[0][New_Sample] [2]),
        .I4(\Pipe_reg[0][New_Sample] [4]),
        .O(\Pipe[1][New_Sample][4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000001FFFFFFFE)) 
    \Pipe[1][New_Sample][5]_i_1 
       (.I0(\Pipe_reg[0][New_Sample] [4]),
        .I1(\Pipe_reg[0][New_Sample] [2]),
        .I2(\Pipe_reg[0][New_Sample] [1]),
        .I3(\Pipe_reg[0][New_Sample] [0]),
        .I4(\Pipe_reg[0][New_Sample] [3]),
        .I5(\Pipe_reg[0][New_Sample] [5]),
        .O(\Pipe[1][New_Sample][5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \Pipe[1][New_Sample][6]_i_1 
       (.I0(\Pipe[1][New_Sample][7]_i_2_n_0 ),
        .I1(\Pipe_reg[0][New_Sample] [6]),
        .O(\Pipe[1][New_Sample][6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hB4)) 
    \Pipe[1][New_Sample][7]_i_1 
       (.I0(\Pipe_reg[0][New_Sample] [6]),
        .I1(\Pipe[1][New_Sample][7]_i_2_n_0 ),
        .I2(\Pipe_reg[0][New_Sample] [7]),
        .O(\Pipe[1][New_Sample][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \Pipe[1][New_Sample][7]_i_2 
       (.I0(\Pipe_reg[0][New_Sample] [4]),
        .I1(\Pipe_reg[0][New_Sample] [2]),
        .I2(\Pipe_reg[0][New_Sample] [1]),
        .I3(\Pipe_reg[0][New_Sample] [0]),
        .I4(\Pipe_reg[0][New_Sample] [3]),
        .I5(\Pipe_reg[0][New_Sample] [5]),
        .O(\Pipe[1][New_Sample][7]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \Pipe[3][Avg_Calc][13]_i_2 
       (.I0(\Pipe_reg[2][Avg_Calc] [13]),
        .O(\Pipe[3][Avg_Calc][13]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \Pipe[3][Avg_Calc][13]_i_3 
       (.I0(\Pipe_reg[2][Avg_Calc] [12]),
        .O(\Pipe[3][Avg_Calc][13]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \Pipe[3][Avg_Calc][13]_i_4 
       (.I0(\Pipe_reg[2][Avg_Calc] [11]),
        .O(\Pipe[3][Avg_Calc][13]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \Pipe[3][Avg_Calc][13]_i_5 
       (.I0(\Pipe_reg[2][Avg_Calc] [10]),
        .O(\Pipe[3][Avg_Calc][13]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \Pipe[3][Avg_Calc][13]_i_6 
       (.I0(\Pipe_reg[2][Avg_Calc] [9]),
        .O(\Pipe[3][Avg_Calc][13]_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \Pipe[3][Avg_Calc][13]_i_7 
       (.I0(\Pipe_reg[2][Avg_Calc] [8]),
        .O(\Pipe[3][Avg_Calc][13]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \Pipe[3][Avg_Calc][7]_i_2 
       (.I0(\Pipe_reg[2][Avg_Calc] [7]),
        .I1(\Pipe_reg[2][Exprd_Sample] [7]),
        .O(\Pipe[3][Avg_Calc][7]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \Pipe[3][Avg_Calc][7]_i_3 
       (.I0(\Pipe_reg[2][Avg_Calc] [6]),
        .I1(\Pipe_reg[2][Exprd_Sample] [6]),
        .O(\Pipe[3][Avg_Calc][7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \Pipe[3][Avg_Calc][7]_i_4 
       (.I0(\Pipe_reg[2][Avg_Calc] [5]),
        .I1(\Pipe_reg[2][Exprd_Sample] [5]),
        .O(\Pipe[3][Avg_Calc][7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \Pipe[3][Avg_Calc][7]_i_5 
       (.I0(\Pipe_reg[2][Avg_Calc] [4]),
        .I1(\Pipe_reg[2][Exprd_Sample] [4]),
        .O(\Pipe[3][Avg_Calc][7]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \Pipe[3][Avg_Calc][7]_i_6 
       (.I0(\Pipe_reg[2][Avg_Calc] [3]),
        .I1(\Pipe_reg[2][Exprd_Sample] [3]),
        .O(\Pipe[3][Avg_Calc][7]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \Pipe[3][Avg_Calc][7]_i_7 
       (.I0(\Pipe_reg[2][Avg_Calc] [2]),
        .I1(\Pipe_reg[2][Exprd_Sample] [2]),
        .O(\Pipe[3][Avg_Calc][7]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \Pipe[3][Avg_Calc][7]_i_8 
       (.I0(\Pipe_reg[2][Avg_Calc] [1]),
        .I1(\Pipe_reg[2][Exprd_Sample] [1]),
        .O(\Pipe[3][Avg_Calc][7]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \Pipe[3][Avg_Calc][7]_i_9 
       (.I0(\Pipe_reg[2][Avg_Calc] [0]),
        .I1(\Pipe_reg[2][Exprd_Sample] [0]),
        .O(\Pipe[3][Avg_Calc][7]_i_9_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Pipe_reg[0][Flush] 
       (.C(Clk),
        .CE(1'b1),
        .D(p_0_in),
        .Q(\Pipe_reg[0][Flush]__0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Pipe_reg[0][New_Sample][0] 
       (.C(Clk),
        .CE(1'b1),
        .D(Rate[0]),
        .Q(\Pipe_reg[0][New_Sample] [0]),
        .R(Rate[7]));
  FDRE #(
    .INIT(1'b0)) 
    \Pipe_reg[0][New_Sample][1] 
       (.C(Clk),
        .CE(1'b1),
        .D(Rate[1]),
        .Q(\Pipe_reg[0][New_Sample] [1]),
        .R(Rate[7]));
  FDRE #(
    .INIT(1'b0)) 
    \Pipe_reg[0][New_Sample][2] 
       (.C(Clk),
        .CE(1'b1),
        .D(Rate[2]),
        .Q(\Pipe_reg[0][New_Sample] [2]),
        .R(Rate[7]));
  FDRE #(
    .INIT(1'b0)) 
    \Pipe_reg[0][New_Sample][3] 
       (.C(Clk),
        .CE(1'b1),
        .D(Rate[3]),
        .Q(\Pipe_reg[0][New_Sample] [3]),
        .R(Rate[7]));
  FDRE #(
    .INIT(1'b0)) 
    \Pipe_reg[0][New_Sample][4] 
       (.C(Clk),
        .CE(1'b1),
        .D(Rate[4]),
        .Q(\Pipe_reg[0][New_Sample] [4]),
        .R(Rate[7]));
  FDRE #(
    .INIT(1'b0)) 
    \Pipe_reg[0][New_Sample][5] 
       (.C(Clk),
        .CE(1'b1),
        .D(Rate[5]),
        .Q(\Pipe_reg[0][New_Sample] [5]),
        .R(Rate[7]));
  FDRE #(
    .INIT(1'b0)) 
    \Pipe_reg[0][New_Sample][6] 
       (.C(Clk),
        .CE(1'b1),
        .D(Rate[6]),
        .Q(\Pipe_reg[0][New_Sample] [6]),
        .R(Rate[7]));
  FDSE #(
    .INIT(1'b0)) 
    \Pipe_reg[0][New_Sample][7] 
       (.C(Clk),
        .CE(1'b1),
        .D(Rate[7]),
        .Q(\Pipe_reg[0][New_Sample] [7]),
        .S(Rate[7]));
  FDRE #(
    .INIT(1'b0)) 
    \Pipe_reg[0][Valid] 
       (.C(Clk),
        .CE(1'b1),
        .D(\Pipe[0][Valid]_i_1_n_0 ),
        .Q(\Pipe_reg[0][Valid]__0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Pipe_reg[1][Flush] 
       (.C(Clk),
        .CE(1'b1),
        .D(\Pipe_reg[0][Flush]__0 ),
        .Q(\Pipe_reg[1][Flush_n_0_] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Pipe_reg[1][New_Sample][0] 
       (.C(Clk),
        .CE(\Pipe_reg[0][Valid]__0 ),
        .D(\Pipe_reg[0][New_Sample] [0]),
        .Q(\Pipe_reg[1][New_Sample] [0]),
        .R(\Pipe_reg[0][Flush]__0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Pipe_reg[1][New_Sample][1] 
       (.C(Clk),
        .CE(\Pipe_reg[0][Valid]__0 ),
        .D(\Pipe[1][New_Sample][1]_i_1_n_0 ),
        .Q(\Pipe_reg[1][New_Sample] [1]),
        .R(\Pipe_reg[0][Flush]__0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Pipe_reg[1][New_Sample][2] 
       (.C(Clk),
        .CE(\Pipe_reg[0][Valid]__0 ),
        .D(\Pipe[1][New_Sample][2]_i_1_n_0 ),
        .Q(\Pipe_reg[1][New_Sample] [2]),
        .R(\Pipe_reg[0][Flush]__0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Pipe_reg[1][New_Sample][3] 
       (.C(Clk),
        .CE(\Pipe_reg[0][Valid]__0 ),
        .D(\Pipe[1][New_Sample][3]_i_1_n_0 ),
        .Q(\Pipe_reg[1][New_Sample] [3]),
        .R(\Pipe_reg[0][Flush]__0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Pipe_reg[1][New_Sample][4] 
       (.C(Clk),
        .CE(\Pipe_reg[0][Valid]__0 ),
        .D(\Pipe[1][New_Sample][4]_i_1_n_0 ),
        .Q(\Pipe_reg[1][New_Sample] [4]),
        .R(\Pipe_reg[0][Flush]__0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Pipe_reg[1][New_Sample][5] 
       (.C(Clk),
        .CE(\Pipe_reg[0][Valid]__0 ),
        .D(\Pipe[1][New_Sample][5]_i_1_n_0 ),
        .Q(\Pipe_reg[1][New_Sample] [5]),
        .R(\Pipe_reg[0][Flush]__0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Pipe_reg[1][New_Sample][6] 
       (.C(Clk),
        .CE(\Pipe_reg[0][Valid]__0 ),
        .D(\Pipe[1][New_Sample][6]_i_1_n_0 ),
        .Q(\Pipe_reg[1][New_Sample] [6]),
        .R(\Pipe_reg[0][Flush]__0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Pipe_reg[1][New_Sample][7] 
       (.C(Clk),
        .CE(\Pipe_reg[0][Valid]__0 ),
        .D(\Pipe[1][New_Sample][7]_i_1_n_0 ),
        .Q(\Pipe_reg[1][New_Sample] [7]),
        .R(\Pipe_reg[0][Flush]__0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Pipe_reg[1][Valid] 
       (.C(Clk),
        .CE(1'b1),
        .D(\Pipe_reg[0][Valid]__0 ),
        .Q(\Pipe_reg[1][Valid_n_0_] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Pipe_reg[2][Avg_Calc][0] 
       (.C(Clk),
        .CE(\Pipe_reg[1][Valid_n_0_] ),
        .D(Rate_Avg[0]),
        .Q(\Pipe_reg[2][Avg_Calc] [0]),
        .R(\Pipe_reg[1][Flush_n_0_] ));
  FDRE #(
    .INIT(1'b0)) 
    \Pipe_reg[2][Avg_Calc][10] 
       (.C(Clk),
        .CE(\Pipe_reg[1][Valid_n_0_] ),
        .D(Rate_Avg[10]),
        .Q(\Pipe_reg[2][Avg_Calc] [10]),
        .R(\Pipe_reg[1][Flush_n_0_] ));
  FDRE #(
    .INIT(1'b0)) 
    \Pipe_reg[2][Avg_Calc][11] 
       (.C(Clk),
        .CE(\Pipe_reg[1][Valid_n_0_] ),
        .D(Rate_Avg[11]),
        .Q(\Pipe_reg[2][Avg_Calc] [11]),
        .R(\Pipe_reg[1][Flush_n_0_] ));
  FDRE #(
    .INIT(1'b0)) 
    \Pipe_reg[2][Avg_Calc][12] 
       (.C(Clk),
        .CE(\Pipe_reg[1][Valid_n_0_] ),
        .D(Rate_Avg[12]),
        .Q(\Pipe_reg[2][Avg_Calc] [12]),
        .R(\Pipe_reg[1][Flush_n_0_] ));
  FDRE #(
    .INIT(1'b0)) 
    \Pipe_reg[2][Avg_Calc][13] 
       (.C(Clk),
        .CE(\Pipe_reg[1][Valid_n_0_] ),
        .D(Rate_Avg[13]),
        .Q(\Pipe_reg[2][Avg_Calc] [13]),
        .R(\Pipe_reg[1][Flush_n_0_] ));
  FDRE #(
    .INIT(1'b0)) 
    \Pipe_reg[2][Avg_Calc][1] 
       (.C(Clk),
        .CE(\Pipe_reg[1][Valid_n_0_] ),
        .D(Rate_Avg[1]),
        .Q(\Pipe_reg[2][Avg_Calc] [1]),
        .R(\Pipe_reg[1][Flush_n_0_] ));
  FDRE #(
    .INIT(1'b0)) 
    \Pipe_reg[2][Avg_Calc][2] 
       (.C(Clk),
        .CE(\Pipe_reg[1][Valid_n_0_] ),
        .D(Rate_Avg[2]),
        .Q(\Pipe_reg[2][Avg_Calc] [2]),
        .R(\Pipe_reg[1][Flush_n_0_] ));
  FDRE #(
    .INIT(1'b0)) 
    \Pipe_reg[2][Avg_Calc][3] 
       (.C(Clk),
        .CE(\Pipe_reg[1][Valid_n_0_] ),
        .D(Rate_Avg[3]),
        .Q(\Pipe_reg[2][Avg_Calc] [3]),
        .R(\Pipe_reg[1][Flush_n_0_] ));
  FDRE #(
    .INIT(1'b0)) 
    \Pipe_reg[2][Avg_Calc][4] 
       (.C(Clk),
        .CE(\Pipe_reg[1][Valid_n_0_] ),
        .D(Rate_Avg[4]),
        .Q(\Pipe_reg[2][Avg_Calc] [4]),
        .R(\Pipe_reg[1][Flush_n_0_] ));
  FDRE #(
    .INIT(1'b0)) 
    \Pipe_reg[2][Avg_Calc][5] 
       (.C(Clk),
        .CE(\Pipe_reg[1][Valid_n_0_] ),
        .D(Rate_Avg[5]),
        .Q(\Pipe_reg[2][Avg_Calc] [5]),
        .R(\Pipe_reg[1][Flush_n_0_] ));
  FDRE #(
    .INIT(1'b0)) 
    \Pipe_reg[2][Avg_Calc][6] 
       (.C(Clk),
        .CE(\Pipe_reg[1][Valid_n_0_] ),
        .D(Rate_Avg[6]),
        .Q(\Pipe_reg[2][Avg_Calc] [6]),
        .R(\Pipe_reg[1][Flush_n_0_] ));
  FDRE #(
    .INIT(1'b0)) 
    \Pipe_reg[2][Avg_Calc][7] 
       (.C(Clk),
        .CE(\Pipe_reg[1][Valid_n_0_] ),
        .D(Rate_Avg[7]),
        .Q(\Pipe_reg[2][Avg_Calc] [7]),
        .R(\Pipe_reg[1][Flush_n_0_] ));
  FDRE #(
    .INIT(1'b0)) 
    \Pipe_reg[2][Avg_Calc][8] 
       (.C(Clk),
        .CE(\Pipe_reg[1][Valid_n_0_] ),
        .D(Rate_Avg[8]),
        .Q(\Pipe_reg[2][Avg_Calc] [8]),
        .R(\Pipe_reg[1][Flush_n_0_] ));
  FDRE #(
    .INIT(1'b0)) 
    \Pipe_reg[2][Avg_Calc][9] 
       (.C(Clk),
        .CE(\Pipe_reg[1][Valid_n_0_] ),
        .D(Rate_Avg[9]),
        .Q(\Pipe_reg[2][Avg_Calc] [9]),
        .R(\Pipe_reg[1][Flush_n_0_] ));
  FDRE #(
    .INIT(1'b0)) 
    \Pipe_reg[2][Exprd_Sample][0] 
       (.C(Clk),
        .CE(\Pipe_reg[1][Valid_n_0_] ),
        .D(\Sample_Pipe_reg[49] [0]),
        .Q(\Pipe_reg[2][Exprd_Sample] [0]),
        .R(\Pipe_reg[1][Flush_n_0_] ));
  FDRE #(
    .INIT(1'b0)) 
    \Pipe_reg[2][Exprd_Sample][1] 
       (.C(Clk),
        .CE(\Pipe_reg[1][Valid_n_0_] ),
        .D(\Sample_Pipe_reg[49] [1]),
        .Q(\Pipe_reg[2][Exprd_Sample] [1]),
        .R(\Pipe_reg[1][Flush_n_0_] ));
  FDRE #(
    .INIT(1'b0)) 
    \Pipe_reg[2][Exprd_Sample][2] 
       (.C(Clk),
        .CE(\Pipe_reg[1][Valid_n_0_] ),
        .D(\Sample_Pipe_reg[49] [2]),
        .Q(\Pipe_reg[2][Exprd_Sample] [2]),
        .R(\Pipe_reg[1][Flush_n_0_] ));
  FDRE #(
    .INIT(1'b0)) 
    \Pipe_reg[2][Exprd_Sample][3] 
       (.C(Clk),
        .CE(\Pipe_reg[1][Valid_n_0_] ),
        .D(\Sample_Pipe_reg[49] [3]),
        .Q(\Pipe_reg[2][Exprd_Sample] [3]),
        .R(\Pipe_reg[1][Flush_n_0_] ));
  FDRE #(
    .INIT(1'b0)) 
    \Pipe_reg[2][Exprd_Sample][4] 
       (.C(Clk),
        .CE(\Pipe_reg[1][Valid_n_0_] ),
        .D(\Sample_Pipe_reg[49] [4]),
        .Q(\Pipe_reg[2][Exprd_Sample] [4]),
        .R(\Pipe_reg[1][Flush_n_0_] ));
  FDRE #(
    .INIT(1'b0)) 
    \Pipe_reg[2][Exprd_Sample][5] 
       (.C(Clk),
        .CE(\Pipe_reg[1][Valid_n_0_] ),
        .D(\Sample_Pipe_reg[49] [5]),
        .Q(\Pipe_reg[2][Exprd_Sample] [5]),
        .R(\Pipe_reg[1][Flush_n_0_] ));
  FDRE #(
    .INIT(1'b0)) 
    \Pipe_reg[2][Exprd_Sample][6] 
       (.C(Clk),
        .CE(\Pipe_reg[1][Valid_n_0_] ),
        .D(\Sample_Pipe_reg[49] [6]),
        .Q(\Pipe_reg[2][Exprd_Sample] [6]),
        .R(\Pipe_reg[1][Flush_n_0_] ));
  FDRE #(
    .INIT(1'b0)) 
    \Pipe_reg[2][Exprd_Sample][7] 
       (.C(Clk),
        .CE(\Pipe_reg[1][Valid_n_0_] ),
        .D(\Sample_Pipe_reg[49] [7]),
        .Q(\Pipe_reg[2][Exprd_Sample] [7]),
        .R(\Pipe_reg[1][Flush_n_0_] ));
  FDRE #(
    .INIT(1'b0)) 
    \Pipe_reg[2][Flush] 
       (.C(Clk),
        .CE(1'b1),
        .D(\Pipe_reg[1][Flush_n_0_] ),
        .Q(\Pipe_reg[2][Flush]__0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Pipe_reg[2][New_Sample][0] 
       (.C(Clk),
        .CE(1'b1),
        .D(\Pipe_reg[1][New_Sample] [0]),
        .Q(\Pipe_reg[2][New_Sample] [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Pipe_reg[2][New_Sample][1] 
       (.C(Clk),
        .CE(1'b1),
        .D(\Pipe_reg[1][New_Sample] [1]),
        .Q(\Pipe_reg[2][New_Sample] [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Pipe_reg[2][New_Sample][2] 
       (.C(Clk),
        .CE(1'b1),
        .D(\Pipe_reg[1][New_Sample] [2]),
        .Q(\Pipe_reg[2][New_Sample] [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Pipe_reg[2][New_Sample][3] 
       (.C(Clk),
        .CE(1'b1),
        .D(\Pipe_reg[1][New_Sample] [3]),
        .Q(\Pipe_reg[2][New_Sample] [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Pipe_reg[2][New_Sample][4] 
       (.C(Clk),
        .CE(1'b1),
        .D(\Pipe_reg[1][New_Sample] [4]),
        .Q(\Pipe_reg[2][New_Sample] [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Pipe_reg[2][New_Sample][5] 
       (.C(Clk),
        .CE(1'b1),
        .D(\Pipe_reg[1][New_Sample] [5]),
        .Q(\Pipe_reg[2][New_Sample] [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Pipe_reg[2][New_Sample][6] 
       (.C(Clk),
        .CE(1'b1),
        .D(\Pipe_reg[1][New_Sample] [6]),
        .Q(\Pipe_reg[2][New_Sample] [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Pipe_reg[2][New_Sample][7] 
       (.C(Clk),
        .CE(1'b1),
        .D(\Pipe_reg[1][New_Sample] [7]),
        .Q(\Pipe_reg[2][New_Sample] [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Pipe_reg[2][Valid] 
       (.C(Clk),
        .CE(1'b1),
        .D(\Pipe_reg[1][Valid_n_0_] ),
        .Q(\Pipe_reg[2][Valid]__0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Pipe_reg[3][Avg_Calc][0] 
       (.C(Clk),
        .CE(1'b1),
        .D(\Pipe_reg[3][Avg_Calc][7]_i_1_n_15 ),
        .Q(\Pipe_reg[3][Avg_Calc] [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Pipe_reg[3][Avg_Calc][10] 
       (.C(Clk),
        .CE(1'b1),
        .D(\Pipe_reg[3][Avg_Calc][13]_i_1_n_13 ),
        .Q(\Pipe_reg[3][Avg_Calc] [10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Pipe_reg[3][Avg_Calc][11] 
       (.C(Clk),
        .CE(1'b1),
        .D(\Pipe_reg[3][Avg_Calc][13]_i_1_n_12 ),
        .Q(\Pipe_reg[3][Avg_Calc] [11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Pipe_reg[3][Avg_Calc][12] 
       (.C(Clk),
        .CE(1'b1),
        .D(\Pipe_reg[3][Avg_Calc][13]_i_1_n_11 ),
        .Q(\Pipe_reg[3][Avg_Calc] [12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Pipe_reg[3][Avg_Calc][13] 
       (.C(Clk),
        .CE(1'b1),
        .D(\Pipe_reg[3][Avg_Calc][13]_i_1_n_10 ),
        .Q(\Pipe_reg[3][Avg_Calc] [13]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \Pipe_reg[3][Avg_Calc][13]_i_1 
       (.CI(\Pipe_reg[3][Avg_Calc][7]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_Pipe_reg[3][Avg_Calc][13]_i_1_CO_UNCONNECTED [7:5],\Pipe_reg[3][Avg_Calc][13]_i_1_n_3 ,\Pipe_reg[3][Avg_Calc][13]_i_1_n_4 ,\Pipe_reg[3][Avg_Calc][13]_i_1_n_5 ,\Pipe_reg[3][Avg_Calc][13]_i_1_n_6 ,\Pipe_reg[3][Avg_Calc][13]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,\Pipe_reg[2][Avg_Calc] [12:8]}),
        .O({\NLW_Pipe_reg[3][Avg_Calc][13]_i_1_O_UNCONNECTED [7:6],\Pipe_reg[3][Avg_Calc][13]_i_1_n_10 ,\Pipe_reg[3][Avg_Calc][13]_i_1_n_11 ,\Pipe_reg[3][Avg_Calc][13]_i_1_n_12 ,\Pipe_reg[3][Avg_Calc][13]_i_1_n_13 ,\Pipe_reg[3][Avg_Calc][13]_i_1_n_14 ,\Pipe_reg[3][Avg_Calc][13]_i_1_n_15 }),
        .S({1'b0,1'b0,\Pipe[3][Avg_Calc][13]_i_2_n_0 ,\Pipe[3][Avg_Calc][13]_i_3_n_0 ,\Pipe[3][Avg_Calc][13]_i_4_n_0 ,\Pipe[3][Avg_Calc][13]_i_5_n_0 ,\Pipe[3][Avg_Calc][13]_i_6_n_0 ,\Pipe[3][Avg_Calc][13]_i_7_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \Pipe_reg[3][Avg_Calc][1] 
       (.C(Clk),
        .CE(1'b1),
        .D(\Pipe_reg[3][Avg_Calc][7]_i_1_n_14 ),
        .Q(\Pipe_reg[3][Avg_Calc] [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Pipe_reg[3][Avg_Calc][2] 
       (.C(Clk),
        .CE(1'b1),
        .D(\Pipe_reg[3][Avg_Calc][7]_i_1_n_13 ),
        .Q(\Pipe_reg[3][Avg_Calc] [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Pipe_reg[3][Avg_Calc][3] 
       (.C(Clk),
        .CE(1'b1),
        .D(\Pipe_reg[3][Avg_Calc][7]_i_1_n_12 ),
        .Q(\Pipe_reg[3][Avg_Calc] [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Pipe_reg[3][Avg_Calc][4] 
       (.C(Clk),
        .CE(1'b1),
        .D(\Pipe_reg[3][Avg_Calc][7]_i_1_n_11 ),
        .Q(\Pipe_reg[3][Avg_Calc] [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Pipe_reg[3][Avg_Calc][5] 
       (.C(Clk),
        .CE(1'b1),
        .D(\Pipe_reg[3][Avg_Calc][7]_i_1_n_10 ),
        .Q(\Pipe_reg[3][Avg_Calc] [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Pipe_reg[3][Avg_Calc][6] 
       (.C(Clk),
        .CE(1'b1),
        .D(\Pipe_reg[3][Avg_Calc][7]_i_1_n_9 ),
        .Q(\Pipe_reg[3][Avg_Calc] [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Pipe_reg[3][Avg_Calc][7] 
       (.C(Clk),
        .CE(1'b1),
        .D(\Pipe_reg[3][Avg_Calc][7]_i_1_n_8 ),
        .Q(\Pipe_reg[3][Avg_Calc] [7]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \Pipe_reg[3][Avg_Calc][7]_i_1 
       (.CI(1'b1),
        .CI_TOP(1'b0),
        .CO({\Pipe_reg[3][Avg_Calc][7]_i_1_n_0 ,\Pipe_reg[3][Avg_Calc][7]_i_1_n_1 ,\Pipe_reg[3][Avg_Calc][7]_i_1_n_2 ,\Pipe_reg[3][Avg_Calc][7]_i_1_n_3 ,\Pipe_reg[3][Avg_Calc][7]_i_1_n_4 ,\Pipe_reg[3][Avg_Calc][7]_i_1_n_5 ,\Pipe_reg[3][Avg_Calc][7]_i_1_n_6 ,\Pipe_reg[3][Avg_Calc][7]_i_1_n_7 }),
        .DI(\Pipe_reg[2][Avg_Calc] [7:0]),
        .O({\Pipe_reg[3][Avg_Calc][7]_i_1_n_8 ,\Pipe_reg[3][Avg_Calc][7]_i_1_n_9 ,\Pipe_reg[3][Avg_Calc][7]_i_1_n_10 ,\Pipe_reg[3][Avg_Calc][7]_i_1_n_11 ,\Pipe_reg[3][Avg_Calc][7]_i_1_n_12 ,\Pipe_reg[3][Avg_Calc][7]_i_1_n_13 ,\Pipe_reg[3][Avg_Calc][7]_i_1_n_14 ,\Pipe_reg[3][Avg_Calc][7]_i_1_n_15 }),
        .S({\Pipe[3][Avg_Calc][7]_i_2_n_0 ,\Pipe[3][Avg_Calc][7]_i_3_n_0 ,\Pipe[3][Avg_Calc][7]_i_4_n_0 ,\Pipe[3][Avg_Calc][7]_i_5_n_0 ,\Pipe[3][Avg_Calc][7]_i_6_n_0 ,\Pipe[3][Avg_Calc][7]_i_7_n_0 ,\Pipe[3][Avg_Calc][7]_i_8_n_0 ,\Pipe[3][Avg_Calc][7]_i_9_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \Pipe_reg[3][Avg_Calc][8] 
       (.C(Clk),
        .CE(1'b1),
        .D(\Pipe_reg[3][Avg_Calc][13]_i_1_n_15 ),
        .Q(\Pipe_reg[3][Avg_Calc] [8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Pipe_reg[3][Avg_Calc][9] 
       (.C(Clk),
        .CE(1'b1),
        .D(\Pipe_reg[3][Avg_Calc][13]_i_1_n_14 ),
        .Q(\Pipe_reg[3][Avg_Calc] [9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Pipe_reg[3][Flush] 
       (.C(Clk),
        .CE(1'b1),
        .D(\Pipe_reg[2][Flush]__0 ),
        .Q(\Pipe_reg[3][Flush]__0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Pipe_reg[3][New_Sample][0] 
       (.C(Clk),
        .CE(1'b1),
        .D(\Pipe_reg[2][New_Sample] [0]),
        .Q(\Pipe_reg[3][New_Sample] [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Pipe_reg[3][New_Sample][1] 
       (.C(Clk),
        .CE(1'b1),
        .D(\Pipe_reg[2][New_Sample] [1]),
        .Q(\Pipe_reg[3][New_Sample] [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Pipe_reg[3][New_Sample][2] 
       (.C(Clk),
        .CE(1'b1),
        .D(\Pipe_reg[2][New_Sample] [2]),
        .Q(\Pipe_reg[3][New_Sample] [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Pipe_reg[3][New_Sample][3] 
       (.C(Clk),
        .CE(1'b1),
        .D(\Pipe_reg[2][New_Sample] [3]),
        .Q(\Pipe_reg[3][New_Sample] [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Pipe_reg[3][New_Sample][4] 
       (.C(Clk),
        .CE(1'b1),
        .D(\Pipe_reg[2][New_Sample] [4]),
        .Q(\Pipe_reg[3][New_Sample] [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Pipe_reg[3][New_Sample][5] 
       (.C(Clk),
        .CE(1'b1),
        .D(\Pipe_reg[2][New_Sample] [5]),
        .Q(\Pipe_reg[3][New_Sample] [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Pipe_reg[3][New_Sample][6] 
       (.C(Clk),
        .CE(1'b1),
        .D(\Pipe_reg[2][New_Sample] [6]),
        .Q(\Pipe_reg[3][New_Sample] [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Pipe_reg[3][New_Sample][7] 
       (.C(Clk),
        .CE(1'b1),
        .D(\Pipe_reg[2][New_Sample] [7]),
        .Q(\Pipe_reg[3][New_Sample] [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Pipe_reg[3][Valid] 
       (.C(Clk),
        .CE(1'b1),
        .D(\Pipe_reg[2][Valid]__0 ),
        .Q(\Pipe_reg[3][Valid]__0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    Rate_Upd_Tog_d1_reg
       (.C(Clk),
        .CE(1'b1),
        .D(Rate_Upd_Tog),
        .Q(Rate_Upd_Tog_d1),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \Rst_Count[0]_i_1 
       (.I0(\Rst_Count_reg_n_0_[0] ),
        .O(minusOp));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \Rst_Count[1]_i_1 
       (.I0(\Rst_Count_reg_n_0_[0] ),
        .I1(\Rst_Count_reg_n_0_[1] ),
        .O(\Rst_Count[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hE1)) 
    \Rst_Count[2]_i_1 
       (.I0(\Rst_Count_reg_n_0_[1] ),
        .I1(\Rst_Count_reg_n_0_[0] ),
        .I2(\Rst_Count_reg_n_0_[2] ),
        .O(\Rst_Count[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hFE01)) 
    \Rst_Count[3]_i_1 
       (.I0(\Rst_Count_reg_n_0_[2] ),
        .I1(\Rst_Count_reg_n_0_[0] ),
        .I2(\Rst_Count_reg_n_0_[1] ),
        .I3(\Rst_Count_reg_n_0_[3] ),
        .O(\Rst_Count[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFFFE0001)) 
    \Rst_Count[4]_i_1 
       (.I0(\Rst_Count_reg_n_0_[3] ),
        .I1(\Rst_Count_reg_n_0_[1] ),
        .I2(\Rst_Count_reg_n_0_[0] ),
        .I3(\Rst_Count_reg_n_0_[2] ),
        .I4(\Rst_Count_reg_n_0_[4] ),
        .O(\Rst_Count[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000001)) 
    \Rst_Count[5]_i_1 
       (.I0(\Rst_Count_reg_n_0_[4] ),
        .I1(\Rst_Count_reg_n_0_[2] ),
        .I2(\Rst_Count_reg_n_0_[0] ),
        .I3(\Rst_Count_reg_n_0_[1] ),
        .I4(\Rst_Count_reg_n_0_[3] ),
        .I5(\Rst_Count_reg_n_0_[5] ),
        .O(\Rst_Count[5]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \Rst_Count[6]_i_1 
       (.I0(Rst),
        .O(clear));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \Rst_Count[6]_i_2 
       (.I0(\Rst_Count_reg_n_0_[3] ),
        .I1(\Rst_Count_reg_n_0_[1] ),
        .I2(\Rst_Count_reg_n_0_[0] ),
        .I3(\Rst_Count_reg_n_0_[2] ),
        .I4(\Rst_Count_reg_n_0_[4] ),
        .I5(\Rst_Count_reg_n_0_[5] ),
        .O(\Rst_Count[6]_i_2_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \Rst_Count_reg[0] 
       (.C(Clk),
        .CE(p_0_in),
        .D(minusOp),
        .Q(\Rst_Count_reg_n_0_[0] ),
        .S(clear));
  FDSE #(
    .INIT(1'b0)) 
    \Rst_Count_reg[1] 
       (.C(Clk),
        .CE(p_0_in),
        .D(\Rst_Count[1]_i_1_n_0 ),
        .Q(\Rst_Count_reg_n_0_[1] ),
        .S(clear));
  FDSE #(
    .INIT(1'b0)) 
    \Rst_Count_reg[2] 
       (.C(Clk),
        .CE(p_0_in),
        .D(\Rst_Count[2]_i_1_n_0 ),
        .Q(\Rst_Count_reg_n_0_[2] ),
        .S(clear));
  FDSE #(
    .INIT(1'b0)) 
    \Rst_Count_reg[3] 
       (.C(Clk),
        .CE(p_0_in),
        .D(\Rst_Count[3]_i_1_n_0 ),
        .Q(\Rst_Count_reg_n_0_[3] ),
        .S(clear));
  FDSE #(
    .INIT(1'b0)) 
    \Rst_Count_reg[4] 
       (.C(Clk),
        .CE(p_0_in),
        .D(\Rst_Count[4]_i_1_n_0 ),
        .Q(\Rst_Count_reg_n_0_[4] ),
        .S(clear));
  FDSE #(
    .INIT(1'b0)) 
    \Rst_Count_reg[5] 
       (.C(Clk),
        .CE(p_0_in),
        .D(\Rst_Count[5]_i_1_n_0 ),
        .Q(\Rst_Count_reg_n_0_[5] ),
        .S(clear));
  FDSE #(
    .INIT(1'b0)) 
    \Rst_Count_reg[6] 
       (.C(Clk),
        .CE(p_0_in),
        .D(\Rst_Count[6]_i_2_n_0 ),
        .Q(p_0_in),
        .S(clear));
  (* srl_bus_name = "U0/\Sample_Pipe_reg[31] " *) 
  (* srl_name = "U0/\Sample_Pipe_reg[31][0]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \Sample_Pipe_reg[31][0]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(\Sample_Pipe_reg[31][7]_srl32_i_1_n_0 ),
        .CLK(Clk),
        .D(\Pipe_reg[1][New_Sample] [0]),
        .Q(\NLW_Sample_Pipe_reg[31][0]_srl32_Q_UNCONNECTED ),
        .Q31(\Sample_Pipe_reg[31][0]_srl32_n_1 ));
  (* srl_bus_name = "U0/\Sample_Pipe_reg[31] " *) 
  (* srl_name = "U0/\Sample_Pipe_reg[31][1]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \Sample_Pipe_reg[31][1]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(\Sample_Pipe_reg[31][7]_srl32_i_1_n_0 ),
        .CLK(Clk),
        .D(\Pipe_reg[1][New_Sample] [1]),
        .Q(\NLW_Sample_Pipe_reg[31][1]_srl32_Q_UNCONNECTED ),
        .Q31(\Sample_Pipe_reg[31][1]_srl32_n_1 ));
  (* srl_bus_name = "U0/\Sample_Pipe_reg[31] " *) 
  (* srl_name = "U0/\Sample_Pipe_reg[31][2]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \Sample_Pipe_reg[31][2]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(\Sample_Pipe_reg[31][7]_srl32_i_1_n_0 ),
        .CLK(Clk),
        .D(\Pipe_reg[1][New_Sample] [2]),
        .Q(\NLW_Sample_Pipe_reg[31][2]_srl32_Q_UNCONNECTED ),
        .Q31(\Sample_Pipe_reg[31][2]_srl32_n_1 ));
  (* srl_bus_name = "U0/\Sample_Pipe_reg[31] " *) 
  (* srl_name = "U0/\Sample_Pipe_reg[31][3]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \Sample_Pipe_reg[31][3]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(\Sample_Pipe_reg[31][7]_srl32_i_1_n_0 ),
        .CLK(Clk),
        .D(\Pipe_reg[1][New_Sample] [3]),
        .Q(\NLW_Sample_Pipe_reg[31][3]_srl32_Q_UNCONNECTED ),
        .Q31(\Sample_Pipe_reg[31][3]_srl32_n_1 ));
  (* srl_bus_name = "U0/\Sample_Pipe_reg[31] " *) 
  (* srl_name = "U0/\Sample_Pipe_reg[31][4]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \Sample_Pipe_reg[31][4]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(\Sample_Pipe_reg[31][7]_srl32_i_1_n_0 ),
        .CLK(Clk),
        .D(\Pipe_reg[1][New_Sample] [4]),
        .Q(\NLW_Sample_Pipe_reg[31][4]_srl32_Q_UNCONNECTED ),
        .Q31(\Sample_Pipe_reg[31][4]_srl32_n_1 ));
  (* srl_bus_name = "U0/\Sample_Pipe_reg[31] " *) 
  (* srl_name = "U0/\Sample_Pipe_reg[31][5]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \Sample_Pipe_reg[31][5]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(\Sample_Pipe_reg[31][7]_srl32_i_1_n_0 ),
        .CLK(Clk),
        .D(\Pipe_reg[1][New_Sample] [5]),
        .Q(\NLW_Sample_Pipe_reg[31][5]_srl32_Q_UNCONNECTED ),
        .Q31(\Sample_Pipe_reg[31][5]_srl32_n_1 ));
  (* srl_bus_name = "U0/\Sample_Pipe_reg[31] " *) 
  (* srl_name = "U0/\Sample_Pipe_reg[31][6]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \Sample_Pipe_reg[31][6]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(\Sample_Pipe_reg[31][7]_srl32_i_1_n_0 ),
        .CLK(Clk),
        .D(\Pipe_reg[1][New_Sample] [6]),
        .Q(\NLW_Sample_Pipe_reg[31][6]_srl32_Q_UNCONNECTED ),
        .Q31(\Sample_Pipe_reg[31][6]_srl32_n_1 ));
  (* srl_bus_name = "U0/\Sample_Pipe_reg[31] " *) 
  (* srl_name = "U0/\Sample_Pipe_reg[31][7]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \Sample_Pipe_reg[31][7]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(\Sample_Pipe_reg[31][7]_srl32_i_1_n_0 ),
        .CLK(Clk),
        .D(\Pipe_reg[1][New_Sample] [7]),
        .Q(\NLW_Sample_Pipe_reg[31][7]_srl32_Q_UNCONNECTED ),
        .Q31(\Sample_Pipe_reg[31][7]_srl32_n_1 ));
  LUT2 #(
    .INIT(4'hE)) 
    \Sample_Pipe_reg[31][7]_srl32_i_1 
       (.I0(\Pipe_reg[1][Valid_n_0_] ),
        .I1(\Pipe_reg[1][Flush_n_0_] ),
        .O(\Sample_Pipe_reg[31][7]_srl32_i_1_n_0 ));
  (* srl_bus_name = "U0/\Sample_Pipe_reg[49] " *) 
  (* srl_name = "U0/\Sample_Pipe_reg[49][0]_srl18 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \Sample_Pipe_reg[49][0]_srl18 
       (.A({1'b1,1'b0,1'b0,1'b0,1'b1}),
        .CE(\Sample_Pipe_reg[31][7]_srl32_i_1_n_0 ),
        .CLK(Clk),
        .D(\Sample_Pipe_reg[31][0]_srl32_n_1 ),
        .Q(\Sample_Pipe_reg[49] [0]),
        .Q31(\NLW_Sample_Pipe_reg[49][0]_srl18_Q31_UNCONNECTED ));
  (* srl_bus_name = "U0/\Sample_Pipe_reg[49] " *) 
  (* srl_name = "U0/\Sample_Pipe_reg[49][1]_srl18 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \Sample_Pipe_reg[49][1]_srl18 
       (.A({1'b1,1'b0,1'b0,1'b0,1'b1}),
        .CE(\Sample_Pipe_reg[31][7]_srl32_i_1_n_0 ),
        .CLK(Clk),
        .D(\Sample_Pipe_reg[31][1]_srl32_n_1 ),
        .Q(\Sample_Pipe_reg[49] [1]),
        .Q31(\NLW_Sample_Pipe_reg[49][1]_srl18_Q31_UNCONNECTED ));
  (* srl_bus_name = "U0/\Sample_Pipe_reg[49] " *) 
  (* srl_name = "U0/\Sample_Pipe_reg[49][2]_srl18 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \Sample_Pipe_reg[49][2]_srl18 
       (.A({1'b1,1'b0,1'b0,1'b0,1'b1}),
        .CE(\Sample_Pipe_reg[31][7]_srl32_i_1_n_0 ),
        .CLK(Clk),
        .D(\Sample_Pipe_reg[31][2]_srl32_n_1 ),
        .Q(\Sample_Pipe_reg[49] [2]),
        .Q31(\NLW_Sample_Pipe_reg[49][2]_srl18_Q31_UNCONNECTED ));
  (* srl_bus_name = "U0/\Sample_Pipe_reg[49] " *) 
  (* srl_name = "U0/\Sample_Pipe_reg[49][3]_srl18 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \Sample_Pipe_reg[49][3]_srl18 
       (.A({1'b1,1'b0,1'b0,1'b0,1'b1}),
        .CE(\Sample_Pipe_reg[31][7]_srl32_i_1_n_0 ),
        .CLK(Clk),
        .D(\Sample_Pipe_reg[31][3]_srl32_n_1 ),
        .Q(\Sample_Pipe_reg[49] [3]),
        .Q31(\NLW_Sample_Pipe_reg[49][3]_srl18_Q31_UNCONNECTED ));
  (* srl_bus_name = "U0/\Sample_Pipe_reg[49] " *) 
  (* srl_name = "U0/\Sample_Pipe_reg[49][4]_srl18 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \Sample_Pipe_reg[49][4]_srl18 
       (.A({1'b1,1'b0,1'b0,1'b0,1'b1}),
        .CE(\Sample_Pipe_reg[31][7]_srl32_i_1_n_0 ),
        .CLK(Clk),
        .D(\Sample_Pipe_reg[31][4]_srl32_n_1 ),
        .Q(\Sample_Pipe_reg[49] [4]),
        .Q31(\NLW_Sample_Pipe_reg[49][4]_srl18_Q31_UNCONNECTED ));
  (* srl_bus_name = "U0/\Sample_Pipe_reg[49] " *) 
  (* srl_name = "U0/\Sample_Pipe_reg[49][5]_srl18 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \Sample_Pipe_reg[49][5]_srl18 
       (.A({1'b1,1'b0,1'b0,1'b0,1'b1}),
        .CE(\Sample_Pipe_reg[31][7]_srl32_i_1_n_0 ),
        .CLK(Clk),
        .D(\Sample_Pipe_reg[31][5]_srl32_n_1 ),
        .Q(\Sample_Pipe_reg[49] [5]),
        .Q31(\NLW_Sample_Pipe_reg[49][5]_srl18_Q31_UNCONNECTED ));
  (* srl_bus_name = "U0/\Sample_Pipe_reg[49] " *) 
  (* srl_name = "U0/\Sample_Pipe_reg[49][6]_srl18 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \Sample_Pipe_reg[49][6]_srl18 
       (.A({1'b1,1'b0,1'b0,1'b0,1'b1}),
        .CE(\Sample_Pipe_reg[31][7]_srl32_i_1_n_0 ),
        .CLK(Clk),
        .D(\Sample_Pipe_reg[31][6]_srl32_n_1 ),
        .Q(\Sample_Pipe_reg[49] [6]),
        .Q31(\NLW_Sample_Pipe_reg[49][6]_srl18_Q31_UNCONNECTED ));
  (* srl_bus_name = "U0/\Sample_Pipe_reg[49] " *) 
  (* srl_name = "U0/\Sample_Pipe_reg[49][7]_srl18 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \Sample_Pipe_reg[49][7]_srl18 
       (.A({1'b1,1'b0,1'b0,1'b0,1'b1}),
        .CE(\Sample_Pipe_reg[31][7]_srl32_i_1_n_0 ),
        .CLK(Clk),
        .D(\Sample_Pipe_reg[31][7]_srl32_n_1 ),
        .Q(\Sample_Pipe_reg[49] [7]),
        .Q31(\NLW_Sample_Pipe_reg[49][7]_srl18_Q31_UNCONNECTED ));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
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
    reg GRESTORE_int;

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

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

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

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
