-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2.2 (lin64) Build 3118627 Tue Feb  9 05:13:49 MST 2021
-- Date        : Wed Nov 22 16:49:04 2023
-- Host        : ensc-mmc-14 running 64-bit Ubuntu 18.04.6 LTS
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ bd_22c0_clock_throttling_avg_0_sim_netlist.vhdl
-- Design      : bd_22c0_clock_throttling_avg_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xcu50-fsvh2104-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_shell_utils_clock_throttling_avg is
  port (
    Clk : in STD_LOGIC;
    Rst : in STD_LOGIC;
    Rate_Upd_Tog : in STD_LOGIC;
    Rate : in STD_LOGIC_VECTOR ( 7 downto 0 );
    Rate_Avg : out STD_LOGIC_VECTOR ( 13 downto 0 )
  );
  attribute AVE_NUM_SAMPLES : integer;
  attribute AVE_NUM_SAMPLES of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_shell_utils_clock_throttling_avg : entity is 50;
  attribute AVE_WIDTH : integer;
  attribute AVE_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_shell_utils_clock_throttling_avg : entity is 14;
  attribute RST_CNT_BITS : integer;
  attribute RST_CNT_BITS of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_shell_utils_clock_throttling_avg : entity is 6;
  attribute SAMPLE_SAT_VAL : integer;
  attribute SAMPLE_SAT_VAL of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_shell_utils_clock_throttling_avg : entity is 128;
  attribute SAMPLE_WIDTH : integer;
  attribute SAMPLE_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_shell_utils_clock_throttling_avg : entity is 8;
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_shell_utils_clock_throttling_avg;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_shell_utils_clock_throttling_avg is
  signal \Avg[7]_i_2_n_0\ : STD_LOGIC;
  signal \Avg[7]_i_3_n_0\ : STD_LOGIC;
  signal \Avg[7]_i_4_n_0\ : STD_LOGIC;
  signal \Avg[7]_i_5_n_0\ : STD_LOGIC;
  signal \Avg[7]_i_6_n_0\ : STD_LOGIC;
  signal \Avg[7]_i_7_n_0\ : STD_LOGIC;
  signal \Avg[7]_i_8_n_0\ : STD_LOGIC;
  signal \Avg[7]_i_9_n_0\ : STD_LOGIC;
  signal \Avg_reg[13]_i_1_n_3\ : STD_LOGIC;
  signal \Avg_reg[13]_i_1_n_4\ : STD_LOGIC;
  signal \Avg_reg[13]_i_1_n_5\ : STD_LOGIC;
  signal \Avg_reg[13]_i_1_n_6\ : STD_LOGIC;
  signal \Avg_reg[13]_i_1_n_7\ : STD_LOGIC;
  signal \Avg_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \Avg_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \Avg_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \Avg_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal \Avg_reg[7]_i_1_n_4\ : STD_LOGIC;
  signal \Avg_reg[7]_i_1_n_5\ : STD_LOGIC;
  signal \Avg_reg[7]_i_1_n_6\ : STD_LOGIC;
  signal \Avg_reg[7]_i_1_n_7\ : STD_LOGIC;
  signal \Pipe[0][Valid]_i_1_n_0\ : STD_LOGIC;
  signal \Pipe[1][New_Sample][1]_i_1_n_0\ : STD_LOGIC;
  signal \Pipe[1][New_Sample][2]_i_1_n_0\ : STD_LOGIC;
  signal \Pipe[1][New_Sample][3]_i_1_n_0\ : STD_LOGIC;
  signal \Pipe[1][New_Sample][4]_i_1_n_0\ : STD_LOGIC;
  signal \Pipe[1][New_Sample][5]_i_1_n_0\ : STD_LOGIC;
  signal \Pipe[1][New_Sample][6]_i_1_n_0\ : STD_LOGIC;
  signal \Pipe[1][New_Sample][7]_i_1_n_0\ : STD_LOGIC;
  signal \Pipe[1][New_Sample][7]_i_2_n_0\ : STD_LOGIC;
  signal \Pipe[3][Avg_Calc][13]_i_2_n_0\ : STD_LOGIC;
  signal \Pipe[3][Avg_Calc][13]_i_3_n_0\ : STD_LOGIC;
  signal \Pipe[3][Avg_Calc][13]_i_4_n_0\ : STD_LOGIC;
  signal \Pipe[3][Avg_Calc][13]_i_5_n_0\ : STD_LOGIC;
  signal \Pipe[3][Avg_Calc][13]_i_6_n_0\ : STD_LOGIC;
  signal \Pipe[3][Avg_Calc][13]_i_7_n_0\ : STD_LOGIC;
  signal \Pipe[3][Avg_Calc][7]_i_2_n_0\ : STD_LOGIC;
  signal \Pipe[3][Avg_Calc][7]_i_3_n_0\ : STD_LOGIC;
  signal \Pipe[3][Avg_Calc][7]_i_4_n_0\ : STD_LOGIC;
  signal \Pipe[3][Avg_Calc][7]_i_5_n_0\ : STD_LOGIC;
  signal \Pipe[3][Avg_Calc][7]_i_6_n_0\ : STD_LOGIC;
  signal \Pipe[3][Avg_Calc][7]_i_7_n_0\ : STD_LOGIC;
  signal \Pipe[3][Avg_Calc][7]_i_8_n_0\ : STD_LOGIC;
  signal \Pipe[3][Avg_Calc][7]_i_9_n_0\ : STD_LOGIC;
  signal \Pipe_reg[0][Flush]__0\ : STD_LOGIC;
  signal \Pipe_reg[0][New_Sample]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \Pipe_reg[0][Valid]__0\ : STD_LOGIC;
  signal \Pipe_reg[1][Flush_n_0_]\ : STD_LOGIC;
  signal \Pipe_reg[1][New_Sample]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \Pipe_reg[1][Valid_n_0_]\ : STD_LOGIC;
  signal \Pipe_reg[2][Avg_Calc]\ : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal \Pipe_reg[2][Exprd_Sample]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \Pipe_reg[2][Flush]__0\ : STD_LOGIC;
  signal \Pipe_reg[2][New_Sample]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \Pipe_reg[2][Valid]__0\ : STD_LOGIC;
  signal \Pipe_reg[3][Avg_Calc]\ : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal \Pipe_reg[3][Avg_Calc][13]_i_1_n_10\ : STD_LOGIC;
  signal \Pipe_reg[3][Avg_Calc][13]_i_1_n_11\ : STD_LOGIC;
  signal \Pipe_reg[3][Avg_Calc][13]_i_1_n_12\ : STD_LOGIC;
  signal \Pipe_reg[3][Avg_Calc][13]_i_1_n_13\ : STD_LOGIC;
  signal \Pipe_reg[3][Avg_Calc][13]_i_1_n_14\ : STD_LOGIC;
  signal \Pipe_reg[3][Avg_Calc][13]_i_1_n_15\ : STD_LOGIC;
  signal \Pipe_reg[3][Avg_Calc][13]_i_1_n_3\ : STD_LOGIC;
  signal \Pipe_reg[3][Avg_Calc][13]_i_1_n_4\ : STD_LOGIC;
  signal \Pipe_reg[3][Avg_Calc][13]_i_1_n_5\ : STD_LOGIC;
  signal \Pipe_reg[3][Avg_Calc][13]_i_1_n_6\ : STD_LOGIC;
  signal \Pipe_reg[3][Avg_Calc][13]_i_1_n_7\ : STD_LOGIC;
  signal \Pipe_reg[3][Avg_Calc][7]_i_1_n_0\ : STD_LOGIC;
  signal \Pipe_reg[3][Avg_Calc][7]_i_1_n_1\ : STD_LOGIC;
  signal \Pipe_reg[3][Avg_Calc][7]_i_1_n_10\ : STD_LOGIC;
  signal \Pipe_reg[3][Avg_Calc][7]_i_1_n_11\ : STD_LOGIC;
  signal \Pipe_reg[3][Avg_Calc][7]_i_1_n_12\ : STD_LOGIC;
  signal \Pipe_reg[3][Avg_Calc][7]_i_1_n_13\ : STD_LOGIC;
  signal \Pipe_reg[3][Avg_Calc][7]_i_1_n_14\ : STD_LOGIC;
  signal \Pipe_reg[3][Avg_Calc][7]_i_1_n_15\ : STD_LOGIC;
  signal \Pipe_reg[3][Avg_Calc][7]_i_1_n_2\ : STD_LOGIC;
  signal \Pipe_reg[3][Avg_Calc][7]_i_1_n_3\ : STD_LOGIC;
  signal \Pipe_reg[3][Avg_Calc][7]_i_1_n_4\ : STD_LOGIC;
  signal \Pipe_reg[3][Avg_Calc][7]_i_1_n_5\ : STD_LOGIC;
  signal \Pipe_reg[3][Avg_Calc][7]_i_1_n_6\ : STD_LOGIC;
  signal \Pipe_reg[3][Avg_Calc][7]_i_1_n_7\ : STD_LOGIC;
  signal \Pipe_reg[3][Avg_Calc][7]_i_1_n_8\ : STD_LOGIC;
  signal \Pipe_reg[3][Avg_Calc][7]_i_1_n_9\ : STD_LOGIC;
  signal \Pipe_reg[3][Flush]__0\ : STD_LOGIC;
  signal \Pipe_reg[3][New_Sample]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \Pipe_reg[3][Valid]__0\ : STD_LOGIC;
  signal \^rate_avg\ : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal Rate_Upd_Tog_d1 : STD_LOGIC;
  signal \Rst_Count[1]_i_1_n_0\ : STD_LOGIC;
  signal \Rst_Count[2]_i_1_n_0\ : STD_LOGIC;
  signal \Rst_Count[3]_i_1_n_0\ : STD_LOGIC;
  signal \Rst_Count[4]_i_1_n_0\ : STD_LOGIC;
  signal \Rst_Count[5]_i_1_n_0\ : STD_LOGIC;
  signal \Rst_Count[6]_i_2_n_0\ : STD_LOGIC;
  signal \Rst_Count_reg_n_0_[0]\ : STD_LOGIC;
  signal \Rst_Count_reg_n_0_[1]\ : STD_LOGIC;
  signal \Rst_Count_reg_n_0_[2]\ : STD_LOGIC;
  signal \Rst_Count_reg_n_0_[3]\ : STD_LOGIC;
  signal \Rst_Count_reg_n_0_[4]\ : STD_LOGIC;
  signal \Rst_Count_reg_n_0_[5]\ : STD_LOGIC;
  signal \Sample_Pipe_reg[31][0]_srl32_n_1\ : STD_LOGIC;
  signal \Sample_Pipe_reg[31][1]_srl32_n_1\ : STD_LOGIC;
  signal \Sample_Pipe_reg[31][2]_srl32_n_1\ : STD_LOGIC;
  signal \Sample_Pipe_reg[31][3]_srl32_n_1\ : STD_LOGIC;
  signal \Sample_Pipe_reg[31][4]_srl32_n_1\ : STD_LOGIC;
  signal \Sample_Pipe_reg[31][5]_srl32_n_1\ : STD_LOGIC;
  signal \Sample_Pipe_reg[31][6]_srl32_n_1\ : STD_LOGIC;
  signal \Sample_Pipe_reg[31][7]_srl32_i_1_n_0\ : STD_LOGIC;
  signal \Sample_Pipe_reg[31][7]_srl32_n_1\ : STD_LOGIC;
  signal \Sample_Pipe_reg[49]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal clear : STD_LOGIC;
  signal minusOp : STD_LOGIC_VECTOR ( 0 to 0 );
  signal p_0_in : STD_LOGIC;
  signal plusOp : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal \NLW_Avg_reg[13]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 5 );
  signal \NLW_Avg_reg[13]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 6 );
  signal \NLW_Pipe_reg[3][Avg_Calc][13]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 5 );
  signal \NLW_Pipe_reg[3][Avg_Calc][13]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 6 );
  signal \NLW_Sample_Pipe_reg[31][0]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_Sample_Pipe_reg[31][1]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_Sample_Pipe_reg[31][2]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_Sample_Pipe_reg[31][3]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_Sample_Pipe_reg[31][4]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_Sample_Pipe_reg[31][5]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_Sample_Pipe_reg[31][6]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_Sample_Pipe_reg[31][7]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_Sample_Pipe_reg[49][0]_srl18_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_Sample_Pipe_reg[49][1]_srl18_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_Sample_Pipe_reg[49][2]_srl18_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_Sample_Pipe_reg[49][3]_srl18_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_Sample_Pipe_reg[49][4]_srl18_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_Sample_Pipe_reg[49][5]_srl18_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_Sample_Pipe_reg[49][6]_srl18_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_Sample_Pipe_reg[49][7]_srl18_Q31_UNCONNECTED\ : STD_LOGIC;
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \Avg_reg[13]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \Avg_reg[7]_i_1\ : label is 35;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \Pipe[1][New_Sample][1]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \Pipe[1][New_Sample][2]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \Pipe[1][New_Sample][3]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \Pipe[1][New_Sample][4]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \Pipe[1][New_Sample][6]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \Pipe[1][New_Sample][7]_i_1\ : label is "soft_lutpair2";
  attribute ADDER_THRESHOLD of \Pipe_reg[3][Avg_Calc][13]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \Pipe_reg[3][Avg_Calc][7]_i_1\ : label is 35;
  attribute SOFT_HLUTNM of \Rst_Count[1]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \Rst_Count[2]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \Rst_Count[3]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \Rst_Count[4]_i_1\ : label is "soft_lutpair0";
  attribute srl_bus_name : string;
  attribute srl_bus_name of \Sample_Pipe_reg[31][0]_srl32\ : label is "U0/\Sample_Pipe_reg[31] ";
  attribute srl_name : string;
  attribute srl_name of \Sample_Pipe_reg[31][0]_srl32\ : label is "U0/\Sample_Pipe_reg[31][0]_srl32 ";
  attribute srl_bus_name of \Sample_Pipe_reg[31][1]_srl32\ : label is "U0/\Sample_Pipe_reg[31] ";
  attribute srl_name of \Sample_Pipe_reg[31][1]_srl32\ : label is "U0/\Sample_Pipe_reg[31][1]_srl32 ";
  attribute srl_bus_name of \Sample_Pipe_reg[31][2]_srl32\ : label is "U0/\Sample_Pipe_reg[31] ";
  attribute srl_name of \Sample_Pipe_reg[31][2]_srl32\ : label is "U0/\Sample_Pipe_reg[31][2]_srl32 ";
  attribute srl_bus_name of \Sample_Pipe_reg[31][3]_srl32\ : label is "U0/\Sample_Pipe_reg[31] ";
  attribute srl_name of \Sample_Pipe_reg[31][3]_srl32\ : label is "U0/\Sample_Pipe_reg[31][3]_srl32 ";
  attribute srl_bus_name of \Sample_Pipe_reg[31][4]_srl32\ : label is "U0/\Sample_Pipe_reg[31] ";
  attribute srl_name of \Sample_Pipe_reg[31][4]_srl32\ : label is "U0/\Sample_Pipe_reg[31][4]_srl32 ";
  attribute srl_bus_name of \Sample_Pipe_reg[31][5]_srl32\ : label is "U0/\Sample_Pipe_reg[31] ";
  attribute srl_name of \Sample_Pipe_reg[31][5]_srl32\ : label is "U0/\Sample_Pipe_reg[31][5]_srl32 ";
  attribute srl_bus_name of \Sample_Pipe_reg[31][6]_srl32\ : label is "U0/\Sample_Pipe_reg[31] ";
  attribute srl_name of \Sample_Pipe_reg[31][6]_srl32\ : label is "U0/\Sample_Pipe_reg[31][6]_srl32 ";
  attribute srl_bus_name of \Sample_Pipe_reg[31][7]_srl32\ : label is "U0/\Sample_Pipe_reg[31] ";
  attribute srl_name of \Sample_Pipe_reg[31][7]_srl32\ : label is "U0/\Sample_Pipe_reg[31][7]_srl32 ";
  attribute srl_bus_name of \Sample_Pipe_reg[49][0]_srl18\ : label is "U0/\Sample_Pipe_reg[49] ";
  attribute srl_name of \Sample_Pipe_reg[49][0]_srl18\ : label is "U0/\Sample_Pipe_reg[49][0]_srl18 ";
  attribute srl_bus_name of \Sample_Pipe_reg[49][1]_srl18\ : label is "U0/\Sample_Pipe_reg[49] ";
  attribute srl_name of \Sample_Pipe_reg[49][1]_srl18\ : label is "U0/\Sample_Pipe_reg[49][1]_srl18 ";
  attribute srl_bus_name of \Sample_Pipe_reg[49][2]_srl18\ : label is "U0/\Sample_Pipe_reg[49] ";
  attribute srl_name of \Sample_Pipe_reg[49][2]_srl18\ : label is "U0/\Sample_Pipe_reg[49][2]_srl18 ";
  attribute srl_bus_name of \Sample_Pipe_reg[49][3]_srl18\ : label is "U0/\Sample_Pipe_reg[49] ";
  attribute srl_name of \Sample_Pipe_reg[49][3]_srl18\ : label is "U0/\Sample_Pipe_reg[49][3]_srl18 ";
  attribute srl_bus_name of \Sample_Pipe_reg[49][4]_srl18\ : label is "U0/\Sample_Pipe_reg[49] ";
  attribute srl_name of \Sample_Pipe_reg[49][4]_srl18\ : label is "U0/\Sample_Pipe_reg[49][4]_srl18 ";
  attribute srl_bus_name of \Sample_Pipe_reg[49][5]_srl18\ : label is "U0/\Sample_Pipe_reg[49] ";
  attribute srl_name of \Sample_Pipe_reg[49][5]_srl18\ : label is "U0/\Sample_Pipe_reg[49][5]_srl18 ";
  attribute srl_bus_name of \Sample_Pipe_reg[49][6]_srl18\ : label is "U0/\Sample_Pipe_reg[49] ";
  attribute srl_name of \Sample_Pipe_reg[49][6]_srl18\ : label is "U0/\Sample_Pipe_reg[49][6]_srl18 ";
  attribute srl_bus_name of \Sample_Pipe_reg[49][7]_srl18\ : label is "U0/\Sample_Pipe_reg[49] ";
  attribute srl_name of \Sample_Pipe_reg[49][7]_srl18\ : label is "U0/\Sample_Pipe_reg[49][7]_srl18 ";
begin
  Rate_Avg(13 downto 0) <= \^rate_avg\(13 downto 0);
\Avg[7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Pipe_reg[3][Avg_Calc]\(7),
      I1 => \Pipe_reg[3][New_Sample]\(7),
      O => \Avg[7]_i_2_n_0\
    );
\Avg[7]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Pipe_reg[3][Avg_Calc]\(6),
      I1 => \Pipe_reg[3][New_Sample]\(6),
      O => \Avg[7]_i_3_n_0\
    );
\Avg[7]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Pipe_reg[3][Avg_Calc]\(5),
      I1 => \Pipe_reg[3][New_Sample]\(5),
      O => \Avg[7]_i_4_n_0\
    );
\Avg[7]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Pipe_reg[3][Avg_Calc]\(4),
      I1 => \Pipe_reg[3][New_Sample]\(4),
      O => \Avg[7]_i_5_n_0\
    );
\Avg[7]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Pipe_reg[3][Avg_Calc]\(3),
      I1 => \Pipe_reg[3][New_Sample]\(3),
      O => \Avg[7]_i_6_n_0\
    );
\Avg[7]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Pipe_reg[3][Avg_Calc]\(2),
      I1 => \Pipe_reg[3][New_Sample]\(2),
      O => \Avg[7]_i_7_n_0\
    );
\Avg[7]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Pipe_reg[3][Avg_Calc]\(1),
      I1 => \Pipe_reg[3][New_Sample]\(1),
      O => \Avg[7]_i_8_n_0\
    );
\Avg[7]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Pipe_reg[3][Avg_Calc]\(0),
      I1 => \Pipe_reg[3][New_Sample]\(0),
      O => \Avg[7]_i_9_n_0\
    );
\Avg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => \Pipe_reg[3][Valid]__0\,
      D => plusOp(0),
      Q => \^rate_avg\(0),
      R => \Pipe_reg[3][Flush]__0\
    );
\Avg_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => \Pipe_reg[3][Valid]__0\,
      D => plusOp(10),
      Q => \^rate_avg\(10),
      R => \Pipe_reg[3][Flush]__0\
    );
\Avg_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => \Pipe_reg[3][Valid]__0\,
      D => plusOp(11),
      Q => \^rate_avg\(11),
      R => \Pipe_reg[3][Flush]__0\
    );
\Avg_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => \Pipe_reg[3][Valid]__0\,
      D => plusOp(12),
      Q => \^rate_avg\(12),
      R => \Pipe_reg[3][Flush]__0\
    );
\Avg_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => \Pipe_reg[3][Valid]__0\,
      D => plusOp(13),
      Q => \^rate_avg\(13),
      R => \Pipe_reg[3][Flush]__0\
    );
\Avg_reg[13]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \Avg_reg[7]_i_1_n_0\,
      CI_TOP => '0',
      CO(7 downto 5) => \NLW_Avg_reg[13]_i_1_CO_UNCONNECTED\(7 downto 5),
      CO(4) => \Avg_reg[13]_i_1_n_3\,
      CO(3) => \Avg_reg[13]_i_1_n_4\,
      CO(2) => \Avg_reg[13]_i_1_n_5\,
      CO(1) => \Avg_reg[13]_i_1_n_6\,
      CO(0) => \Avg_reg[13]_i_1_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7 downto 6) => \NLW_Avg_reg[13]_i_1_O_UNCONNECTED\(7 downto 6),
      O(5 downto 0) => plusOp(13 downto 8),
      S(7 downto 6) => B"00",
      S(5 downto 0) => \Pipe_reg[3][Avg_Calc]\(13 downto 8)
    );
\Avg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => \Pipe_reg[3][Valid]__0\,
      D => plusOp(1),
      Q => \^rate_avg\(1),
      R => \Pipe_reg[3][Flush]__0\
    );
\Avg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => \Pipe_reg[3][Valid]__0\,
      D => plusOp(2),
      Q => \^rate_avg\(2),
      R => \Pipe_reg[3][Flush]__0\
    );
\Avg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => \Pipe_reg[3][Valid]__0\,
      D => plusOp(3),
      Q => \^rate_avg\(3),
      R => \Pipe_reg[3][Flush]__0\
    );
\Avg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => \Pipe_reg[3][Valid]__0\,
      D => plusOp(4),
      Q => \^rate_avg\(4),
      R => \Pipe_reg[3][Flush]__0\
    );
\Avg_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => \Pipe_reg[3][Valid]__0\,
      D => plusOp(5),
      Q => \^rate_avg\(5),
      R => \Pipe_reg[3][Flush]__0\
    );
\Avg_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => \Pipe_reg[3][Valid]__0\,
      D => plusOp(6),
      Q => \^rate_avg\(6),
      R => \Pipe_reg[3][Flush]__0\
    );
\Avg_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => \Pipe_reg[3][Valid]__0\,
      D => plusOp(7),
      Q => \^rate_avg\(7),
      R => \Pipe_reg[3][Flush]__0\
    );
\Avg_reg[7]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => \Avg_reg[7]_i_1_n_0\,
      CO(6) => \Avg_reg[7]_i_1_n_1\,
      CO(5) => \Avg_reg[7]_i_1_n_2\,
      CO(4) => \Avg_reg[7]_i_1_n_3\,
      CO(3) => \Avg_reg[7]_i_1_n_4\,
      CO(2) => \Avg_reg[7]_i_1_n_5\,
      CO(1) => \Avg_reg[7]_i_1_n_6\,
      CO(0) => \Avg_reg[7]_i_1_n_7\,
      DI(7 downto 0) => \Pipe_reg[3][Avg_Calc]\(7 downto 0),
      O(7 downto 0) => plusOp(7 downto 0),
      S(7) => \Avg[7]_i_2_n_0\,
      S(6) => \Avg[7]_i_3_n_0\,
      S(5) => \Avg[7]_i_4_n_0\,
      S(4) => \Avg[7]_i_5_n_0\,
      S(3) => \Avg[7]_i_6_n_0\,
      S(2) => \Avg[7]_i_7_n_0\,
      S(1) => \Avg[7]_i_8_n_0\,
      S(0) => \Avg[7]_i_9_n_0\
    );
\Avg_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => \Pipe_reg[3][Valid]__0\,
      D => plusOp(8),
      Q => \^rate_avg\(8),
      R => \Pipe_reg[3][Flush]__0\
    );
\Avg_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => \Pipe_reg[3][Valid]__0\,
      D => plusOp(9),
      Q => \^rate_avg\(9),
      R => \Pipe_reg[3][Flush]__0\
    );
\Pipe[0][Valid]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
        port map (
      I0 => Rate_Upd_Tog,
      I1 => Rate_Upd_Tog_d1,
      I2 => p_0_in,
      O => \Pipe[0][Valid]_i_1_n_0\
    );
\Pipe[1][New_Sample][1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Pipe_reg[0][New_Sample]\(0),
      I1 => \Pipe_reg[0][New_Sample]\(1),
      O => \Pipe[1][New_Sample][1]_i_1_n_0\
    );
\Pipe[1][New_Sample][2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1E"
    )
        port map (
      I0 => \Pipe_reg[0][New_Sample]\(0),
      I1 => \Pipe_reg[0][New_Sample]\(1),
      I2 => \Pipe_reg[0][New_Sample]\(2),
      O => \Pipe[1][New_Sample][2]_i_1_n_0\
    );
\Pipe[1][New_Sample][3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"01FE"
    )
        port map (
      I0 => \Pipe_reg[0][New_Sample]\(2),
      I1 => \Pipe_reg[0][New_Sample]\(1),
      I2 => \Pipe_reg[0][New_Sample]\(0),
      I3 => \Pipe_reg[0][New_Sample]\(3),
      O => \Pipe[1][New_Sample][3]_i_1_n_0\
    );
\Pipe[1][New_Sample][4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0001FFFE"
    )
        port map (
      I0 => \Pipe_reg[0][New_Sample]\(3),
      I1 => \Pipe_reg[0][New_Sample]\(0),
      I2 => \Pipe_reg[0][New_Sample]\(1),
      I3 => \Pipe_reg[0][New_Sample]\(2),
      I4 => \Pipe_reg[0][New_Sample]\(4),
      O => \Pipe[1][New_Sample][4]_i_1_n_0\
    );
\Pipe[1][New_Sample][5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000001FFFFFFFE"
    )
        port map (
      I0 => \Pipe_reg[0][New_Sample]\(4),
      I1 => \Pipe_reg[0][New_Sample]\(2),
      I2 => \Pipe_reg[0][New_Sample]\(1),
      I3 => \Pipe_reg[0][New_Sample]\(0),
      I4 => \Pipe_reg[0][New_Sample]\(3),
      I5 => \Pipe_reg[0][New_Sample]\(5),
      O => \Pipe[1][New_Sample][5]_i_1_n_0\
    );
\Pipe[1][New_Sample][6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \Pipe[1][New_Sample][7]_i_2_n_0\,
      I1 => \Pipe_reg[0][New_Sample]\(6),
      O => \Pipe[1][New_Sample][6]_i_1_n_0\
    );
\Pipe[1][New_Sample][7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => \Pipe_reg[0][New_Sample]\(6),
      I1 => \Pipe[1][New_Sample][7]_i_2_n_0\,
      I2 => \Pipe_reg[0][New_Sample]\(7),
      O => \Pipe[1][New_Sample][7]_i_1_n_0\
    );
\Pipe[1][New_Sample][7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \Pipe_reg[0][New_Sample]\(4),
      I1 => \Pipe_reg[0][New_Sample]\(2),
      I2 => \Pipe_reg[0][New_Sample]\(1),
      I3 => \Pipe_reg[0][New_Sample]\(0),
      I4 => \Pipe_reg[0][New_Sample]\(3),
      I5 => \Pipe_reg[0][New_Sample]\(5),
      O => \Pipe[1][New_Sample][7]_i_2_n_0\
    );
\Pipe[3][Avg_Calc][13]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \Pipe_reg[2][Avg_Calc]\(13),
      O => \Pipe[3][Avg_Calc][13]_i_2_n_0\
    );
\Pipe[3][Avg_Calc][13]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \Pipe_reg[2][Avg_Calc]\(12),
      O => \Pipe[3][Avg_Calc][13]_i_3_n_0\
    );
\Pipe[3][Avg_Calc][13]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \Pipe_reg[2][Avg_Calc]\(11),
      O => \Pipe[3][Avg_Calc][13]_i_4_n_0\
    );
\Pipe[3][Avg_Calc][13]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \Pipe_reg[2][Avg_Calc]\(10),
      O => \Pipe[3][Avg_Calc][13]_i_5_n_0\
    );
\Pipe[3][Avg_Calc][13]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \Pipe_reg[2][Avg_Calc]\(9),
      O => \Pipe[3][Avg_Calc][13]_i_6_n_0\
    );
\Pipe[3][Avg_Calc][13]_i_7\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \Pipe_reg[2][Avg_Calc]\(8),
      O => \Pipe[3][Avg_Calc][13]_i_7_n_0\
    );
\Pipe[3][Avg_Calc][7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \Pipe_reg[2][Avg_Calc]\(7),
      I1 => \Pipe_reg[2][Exprd_Sample]\(7),
      O => \Pipe[3][Avg_Calc][7]_i_2_n_0\
    );
\Pipe[3][Avg_Calc][7]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \Pipe_reg[2][Avg_Calc]\(6),
      I1 => \Pipe_reg[2][Exprd_Sample]\(6),
      O => \Pipe[3][Avg_Calc][7]_i_3_n_0\
    );
\Pipe[3][Avg_Calc][7]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \Pipe_reg[2][Avg_Calc]\(5),
      I1 => \Pipe_reg[2][Exprd_Sample]\(5),
      O => \Pipe[3][Avg_Calc][7]_i_4_n_0\
    );
\Pipe[3][Avg_Calc][7]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \Pipe_reg[2][Avg_Calc]\(4),
      I1 => \Pipe_reg[2][Exprd_Sample]\(4),
      O => \Pipe[3][Avg_Calc][7]_i_5_n_0\
    );
\Pipe[3][Avg_Calc][7]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \Pipe_reg[2][Avg_Calc]\(3),
      I1 => \Pipe_reg[2][Exprd_Sample]\(3),
      O => \Pipe[3][Avg_Calc][7]_i_6_n_0\
    );
\Pipe[3][Avg_Calc][7]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \Pipe_reg[2][Avg_Calc]\(2),
      I1 => \Pipe_reg[2][Exprd_Sample]\(2),
      O => \Pipe[3][Avg_Calc][7]_i_7_n_0\
    );
\Pipe[3][Avg_Calc][7]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \Pipe_reg[2][Avg_Calc]\(1),
      I1 => \Pipe_reg[2][Exprd_Sample]\(1),
      O => \Pipe[3][Avg_Calc][7]_i_8_n_0\
    );
\Pipe[3][Avg_Calc][7]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \Pipe_reg[2][Avg_Calc]\(0),
      I1 => \Pipe_reg[2][Exprd_Sample]\(0),
      O => \Pipe[3][Avg_Calc][7]_i_9_n_0\
    );
\Pipe_reg[0][Flush]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => '1',
      D => p_0_in,
      Q => \Pipe_reg[0][Flush]__0\,
      R => '0'
    );
\Pipe_reg[0][New_Sample][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => '1',
      D => Rate(0),
      Q => \Pipe_reg[0][New_Sample]\(0),
      R => Rate(7)
    );
\Pipe_reg[0][New_Sample][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => '1',
      D => Rate(1),
      Q => \Pipe_reg[0][New_Sample]\(1),
      R => Rate(7)
    );
\Pipe_reg[0][New_Sample][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => '1',
      D => Rate(2),
      Q => \Pipe_reg[0][New_Sample]\(2),
      R => Rate(7)
    );
\Pipe_reg[0][New_Sample][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => '1',
      D => Rate(3),
      Q => \Pipe_reg[0][New_Sample]\(3),
      R => Rate(7)
    );
\Pipe_reg[0][New_Sample][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => '1',
      D => Rate(4),
      Q => \Pipe_reg[0][New_Sample]\(4),
      R => Rate(7)
    );
\Pipe_reg[0][New_Sample][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => '1',
      D => Rate(5),
      Q => \Pipe_reg[0][New_Sample]\(5),
      R => Rate(7)
    );
\Pipe_reg[0][New_Sample][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => '1',
      D => Rate(6),
      Q => \Pipe_reg[0][New_Sample]\(6),
      R => Rate(7)
    );
\Pipe_reg[0][New_Sample][7]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => '1',
      D => Rate(7),
      Q => \Pipe_reg[0][New_Sample]\(7),
      S => Rate(7)
    );
\Pipe_reg[0][Valid]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => '1',
      D => \Pipe[0][Valid]_i_1_n_0\,
      Q => \Pipe_reg[0][Valid]__0\,
      R => '0'
    );
\Pipe_reg[1][Flush]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => '1',
      D => \Pipe_reg[0][Flush]__0\,
      Q => \Pipe_reg[1][Flush_n_0_]\,
      R => '0'
    );
\Pipe_reg[1][New_Sample][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => \Pipe_reg[0][Valid]__0\,
      D => \Pipe_reg[0][New_Sample]\(0),
      Q => \Pipe_reg[1][New_Sample]\(0),
      R => \Pipe_reg[0][Flush]__0\
    );
\Pipe_reg[1][New_Sample][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => \Pipe_reg[0][Valid]__0\,
      D => \Pipe[1][New_Sample][1]_i_1_n_0\,
      Q => \Pipe_reg[1][New_Sample]\(1),
      R => \Pipe_reg[0][Flush]__0\
    );
\Pipe_reg[1][New_Sample][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => \Pipe_reg[0][Valid]__0\,
      D => \Pipe[1][New_Sample][2]_i_1_n_0\,
      Q => \Pipe_reg[1][New_Sample]\(2),
      R => \Pipe_reg[0][Flush]__0\
    );
\Pipe_reg[1][New_Sample][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => \Pipe_reg[0][Valid]__0\,
      D => \Pipe[1][New_Sample][3]_i_1_n_0\,
      Q => \Pipe_reg[1][New_Sample]\(3),
      R => \Pipe_reg[0][Flush]__0\
    );
\Pipe_reg[1][New_Sample][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => \Pipe_reg[0][Valid]__0\,
      D => \Pipe[1][New_Sample][4]_i_1_n_0\,
      Q => \Pipe_reg[1][New_Sample]\(4),
      R => \Pipe_reg[0][Flush]__0\
    );
\Pipe_reg[1][New_Sample][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => \Pipe_reg[0][Valid]__0\,
      D => \Pipe[1][New_Sample][5]_i_1_n_0\,
      Q => \Pipe_reg[1][New_Sample]\(5),
      R => \Pipe_reg[0][Flush]__0\
    );
\Pipe_reg[1][New_Sample][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => \Pipe_reg[0][Valid]__0\,
      D => \Pipe[1][New_Sample][6]_i_1_n_0\,
      Q => \Pipe_reg[1][New_Sample]\(6),
      R => \Pipe_reg[0][Flush]__0\
    );
\Pipe_reg[1][New_Sample][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => \Pipe_reg[0][Valid]__0\,
      D => \Pipe[1][New_Sample][7]_i_1_n_0\,
      Q => \Pipe_reg[1][New_Sample]\(7),
      R => \Pipe_reg[0][Flush]__0\
    );
\Pipe_reg[1][Valid]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => '1',
      D => \Pipe_reg[0][Valid]__0\,
      Q => \Pipe_reg[1][Valid_n_0_]\,
      R => '0'
    );
\Pipe_reg[2][Avg_Calc][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => \Pipe_reg[1][Valid_n_0_]\,
      D => \^rate_avg\(0),
      Q => \Pipe_reg[2][Avg_Calc]\(0),
      R => \Pipe_reg[1][Flush_n_0_]\
    );
\Pipe_reg[2][Avg_Calc][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => \Pipe_reg[1][Valid_n_0_]\,
      D => \^rate_avg\(10),
      Q => \Pipe_reg[2][Avg_Calc]\(10),
      R => \Pipe_reg[1][Flush_n_0_]\
    );
\Pipe_reg[2][Avg_Calc][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => \Pipe_reg[1][Valid_n_0_]\,
      D => \^rate_avg\(11),
      Q => \Pipe_reg[2][Avg_Calc]\(11),
      R => \Pipe_reg[1][Flush_n_0_]\
    );
\Pipe_reg[2][Avg_Calc][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => \Pipe_reg[1][Valid_n_0_]\,
      D => \^rate_avg\(12),
      Q => \Pipe_reg[2][Avg_Calc]\(12),
      R => \Pipe_reg[1][Flush_n_0_]\
    );
\Pipe_reg[2][Avg_Calc][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => \Pipe_reg[1][Valid_n_0_]\,
      D => \^rate_avg\(13),
      Q => \Pipe_reg[2][Avg_Calc]\(13),
      R => \Pipe_reg[1][Flush_n_0_]\
    );
\Pipe_reg[2][Avg_Calc][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => \Pipe_reg[1][Valid_n_0_]\,
      D => \^rate_avg\(1),
      Q => \Pipe_reg[2][Avg_Calc]\(1),
      R => \Pipe_reg[1][Flush_n_0_]\
    );
\Pipe_reg[2][Avg_Calc][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => \Pipe_reg[1][Valid_n_0_]\,
      D => \^rate_avg\(2),
      Q => \Pipe_reg[2][Avg_Calc]\(2),
      R => \Pipe_reg[1][Flush_n_0_]\
    );
\Pipe_reg[2][Avg_Calc][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => \Pipe_reg[1][Valid_n_0_]\,
      D => \^rate_avg\(3),
      Q => \Pipe_reg[2][Avg_Calc]\(3),
      R => \Pipe_reg[1][Flush_n_0_]\
    );
\Pipe_reg[2][Avg_Calc][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => \Pipe_reg[1][Valid_n_0_]\,
      D => \^rate_avg\(4),
      Q => \Pipe_reg[2][Avg_Calc]\(4),
      R => \Pipe_reg[1][Flush_n_0_]\
    );
\Pipe_reg[2][Avg_Calc][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => \Pipe_reg[1][Valid_n_0_]\,
      D => \^rate_avg\(5),
      Q => \Pipe_reg[2][Avg_Calc]\(5),
      R => \Pipe_reg[1][Flush_n_0_]\
    );
\Pipe_reg[2][Avg_Calc][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => \Pipe_reg[1][Valid_n_0_]\,
      D => \^rate_avg\(6),
      Q => \Pipe_reg[2][Avg_Calc]\(6),
      R => \Pipe_reg[1][Flush_n_0_]\
    );
\Pipe_reg[2][Avg_Calc][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => \Pipe_reg[1][Valid_n_0_]\,
      D => \^rate_avg\(7),
      Q => \Pipe_reg[2][Avg_Calc]\(7),
      R => \Pipe_reg[1][Flush_n_0_]\
    );
\Pipe_reg[2][Avg_Calc][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => \Pipe_reg[1][Valid_n_0_]\,
      D => \^rate_avg\(8),
      Q => \Pipe_reg[2][Avg_Calc]\(8),
      R => \Pipe_reg[1][Flush_n_0_]\
    );
\Pipe_reg[2][Avg_Calc][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => \Pipe_reg[1][Valid_n_0_]\,
      D => \^rate_avg\(9),
      Q => \Pipe_reg[2][Avg_Calc]\(9),
      R => \Pipe_reg[1][Flush_n_0_]\
    );
\Pipe_reg[2][Exprd_Sample][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => \Pipe_reg[1][Valid_n_0_]\,
      D => \Sample_Pipe_reg[49]\(0),
      Q => \Pipe_reg[2][Exprd_Sample]\(0),
      R => \Pipe_reg[1][Flush_n_0_]\
    );
\Pipe_reg[2][Exprd_Sample][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => \Pipe_reg[1][Valid_n_0_]\,
      D => \Sample_Pipe_reg[49]\(1),
      Q => \Pipe_reg[2][Exprd_Sample]\(1),
      R => \Pipe_reg[1][Flush_n_0_]\
    );
\Pipe_reg[2][Exprd_Sample][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => \Pipe_reg[1][Valid_n_0_]\,
      D => \Sample_Pipe_reg[49]\(2),
      Q => \Pipe_reg[2][Exprd_Sample]\(2),
      R => \Pipe_reg[1][Flush_n_0_]\
    );
\Pipe_reg[2][Exprd_Sample][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => \Pipe_reg[1][Valid_n_0_]\,
      D => \Sample_Pipe_reg[49]\(3),
      Q => \Pipe_reg[2][Exprd_Sample]\(3),
      R => \Pipe_reg[1][Flush_n_0_]\
    );
\Pipe_reg[2][Exprd_Sample][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => \Pipe_reg[1][Valid_n_0_]\,
      D => \Sample_Pipe_reg[49]\(4),
      Q => \Pipe_reg[2][Exprd_Sample]\(4),
      R => \Pipe_reg[1][Flush_n_0_]\
    );
\Pipe_reg[2][Exprd_Sample][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => \Pipe_reg[1][Valid_n_0_]\,
      D => \Sample_Pipe_reg[49]\(5),
      Q => \Pipe_reg[2][Exprd_Sample]\(5),
      R => \Pipe_reg[1][Flush_n_0_]\
    );
\Pipe_reg[2][Exprd_Sample][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => \Pipe_reg[1][Valid_n_0_]\,
      D => \Sample_Pipe_reg[49]\(6),
      Q => \Pipe_reg[2][Exprd_Sample]\(6),
      R => \Pipe_reg[1][Flush_n_0_]\
    );
\Pipe_reg[2][Exprd_Sample][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => \Pipe_reg[1][Valid_n_0_]\,
      D => \Sample_Pipe_reg[49]\(7),
      Q => \Pipe_reg[2][Exprd_Sample]\(7),
      R => \Pipe_reg[1][Flush_n_0_]\
    );
\Pipe_reg[2][Flush]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => '1',
      D => \Pipe_reg[1][Flush_n_0_]\,
      Q => \Pipe_reg[2][Flush]__0\,
      R => '0'
    );
\Pipe_reg[2][New_Sample][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => '1',
      D => \Pipe_reg[1][New_Sample]\(0),
      Q => \Pipe_reg[2][New_Sample]\(0),
      R => '0'
    );
\Pipe_reg[2][New_Sample][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => '1',
      D => \Pipe_reg[1][New_Sample]\(1),
      Q => \Pipe_reg[2][New_Sample]\(1),
      R => '0'
    );
\Pipe_reg[2][New_Sample][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => '1',
      D => \Pipe_reg[1][New_Sample]\(2),
      Q => \Pipe_reg[2][New_Sample]\(2),
      R => '0'
    );
\Pipe_reg[2][New_Sample][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => '1',
      D => \Pipe_reg[1][New_Sample]\(3),
      Q => \Pipe_reg[2][New_Sample]\(3),
      R => '0'
    );
\Pipe_reg[2][New_Sample][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => '1',
      D => \Pipe_reg[1][New_Sample]\(4),
      Q => \Pipe_reg[2][New_Sample]\(4),
      R => '0'
    );
\Pipe_reg[2][New_Sample][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => '1',
      D => \Pipe_reg[1][New_Sample]\(5),
      Q => \Pipe_reg[2][New_Sample]\(5),
      R => '0'
    );
\Pipe_reg[2][New_Sample][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => '1',
      D => \Pipe_reg[1][New_Sample]\(6),
      Q => \Pipe_reg[2][New_Sample]\(6),
      R => '0'
    );
\Pipe_reg[2][New_Sample][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => '1',
      D => \Pipe_reg[1][New_Sample]\(7),
      Q => \Pipe_reg[2][New_Sample]\(7),
      R => '0'
    );
\Pipe_reg[2][Valid]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => '1',
      D => \Pipe_reg[1][Valid_n_0_]\,
      Q => \Pipe_reg[2][Valid]__0\,
      R => '0'
    );
\Pipe_reg[3][Avg_Calc][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => '1',
      D => \Pipe_reg[3][Avg_Calc][7]_i_1_n_15\,
      Q => \Pipe_reg[3][Avg_Calc]\(0),
      R => '0'
    );
\Pipe_reg[3][Avg_Calc][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => '1',
      D => \Pipe_reg[3][Avg_Calc][13]_i_1_n_13\,
      Q => \Pipe_reg[3][Avg_Calc]\(10),
      R => '0'
    );
\Pipe_reg[3][Avg_Calc][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => '1',
      D => \Pipe_reg[3][Avg_Calc][13]_i_1_n_12\,
      Q => \Pipe_reg[3][Avg_Calc]\(11),
      R => '0'
    );
\Pipe_reg[3][Avg_Calc][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => '1',
      D => \Pipe_reg[3][Avg_Calc][13]_i_1_n_11\,
      Q => \Pipe_reg[3][Avg_Calc]\(12),
      R => '0'
    );
\Pipe_reg[3][Avg_Calc][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => '1',
      D => \Pipe_reg[3][Avg_Calc][13]_i_1_n_10\,
      Q => \Pipe_reg[3][Avg_Calc]\(13),
      R => '0'
    );
\Pipe_reg[3][Avg_Calc][13]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \Pipe_reg[3][Avg_Calc][7]_i_1_n_0\,
      CI_TOP => '0',
      CO(7 downto 5) => \NLW_Pipe_reg[3][Avg_Calc][13]_i_1_CO_UNCONNECTED\(7 downto 5),
      CO(4) => \Pipe_reg[3][Avg_Calc][13]_i_1_n_3\,
      CO(3) => \Pipe_reg[3][Avg_Calc][13]_i_1_n_4\,
      CO(2) => \Pipe_reg[3][Avg_Calc][13]_i_1_n_5\,
      CO(1) => \Pipe_reg[3][Avg_Calc][13]_i_1_n_6\,
      CO(0) => \Pipe_reg[3][Avg_Calc][13]_i_1_n_7\,
      DI(7 downto 5) => B"000",
      DI(4 downto 0) => \Pipe_reg[2][Avg_Calc]\(12 downto 8),
      O(7 downto 6) => \NLW_Pipe_reg[3][Avg_Calc][13]_i_1_O_UNCONNECTED\(7 downto 6),
      O(5) => \Pipe_reg[3][Avg_Calc][13]_i_1_n_10\,
      O(4) => \Pipe_reg[3][Avg_Calc][13]_i_1_n_11\,
      O(3) => \Pipe_reg[3][Avg_Calc][13]_i_1_n_12\,
      O(2) => \Pipe_reg[3][Avg_Calc][13]_i_1_n_13\,
      O(1) => \Pipe_reg[3][Avg_Calc][13]_i_1_n_14\,
      O(0) => \Pipe_reg[3][Avg_Calc][13]_i_1_n_15\,
      S(7 downto 6) => B"00",
      S(5) => \Pipe[3][Avg_Calc][13]_i_2_n_0\,
      S(4) => \Pipe[3][Avg_Calc][13]_i_3_n_0\,
      S(3) => \Pipe[3][Avg_Calc][13]_i_4_n_0\,
      S(2) => \Pipe[3][Avg_Calc][13]_i_5_n_0\,
      S(1) => \Pipe[3][Avg_Calc][13]_i_6_n_0\,
      S(0) => \Pipe[3][Avg_Calc][13]_i_7_n_0\
    );
\Pipe_reg[3][Avg_Calc][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => '1',
      D => \Pipe_reg[3][Avg_Calc][7]_i_1_n_14\,
      Q => \Pipe_reg[3][Avg_Calc]\(1),
      R => '0'
    );
\Pipe_reg[3][Avg_Calc][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => '1',
      D => \Pipe_reg[3][Avg_Calc][7]_i_1_n_13\,
      Q => \Pipe_reg[3][Avg_Calc]\(2),
      R => '0'
    );
\Pipe_reg[3][Avg_Calc][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => '1',
      D => \Pipe_reg[3][Avg_Calc][7]_i_1_n_12\,
      Q => \Pipe_reg[3][Avg_Calc]\(3),
      R => '0'
    );
\Pipe_reg[3][Avg_Calc][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => '1',
      D => \Pipe_reg[3][Avg_Calc][7]_i_1_n_11\,
      Q => \Pipe_reg[3][Avg_Calc]\(4),
      R => '0'
    );
\Pipe_reg[3][Avg_Calc][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => '1',
      D => \Pipe_reg[3][Avg_Calc][7]_i_1_n_10\,
      Q => \Pipe_reg[3][Avg_Calc]\(5),
      R => '0'
    );
\Pipe_reg[3][Avg_Calc][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => '1',
      D => \Pipe_reg[3][Avg_Calc][7]_i_1_n_9\,
      Q => \Pipe_reg[3][Avg_Calc]\(6),
      R => '0'
    );
\Pipe_reg[3][Avg_Calc][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => '1',
      D => \Pipe_reg[3][Avg_Calc][7]_i_1_n_8\,
      Q => \Pipe_reg[3][Avg_Calc]\(7),
      R => '0'
    );
\Pipe_reg[3][Avg_Calc][7]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => '1',
      CI_TOP => '0',
      CO(7) => \Pipe_reg[3][Avg_Calc][7]_i_1_n_0\,
      CO(6) => \Pipe_reg[3][Avg_Calc][7]_i_1_n_1\,
      CO(5) => \Pipe_reg[3][Avg_Calc][7]_i_1_n_2\,
      CO(4) => \Pipe_reg[3][Avg_Calc][7]_i_1_n_3\,
      CO(3) => \Pipe_reg[3][Avg_Calc][7]_i_1_n_4\,
      CO(2) => \Pipe_reg[3][Avg_Calc][7]_i_1_n_5\,
      CO(1) => \Pipe_reg[3][Avg_Calc][7]_i_1_n_6\,
      CO(0) => \Pipe_reg[3][Avg_Calc][7]_i_1_n_7\,
      DI(7 downto 0) => \Pipe_reg[2][Avg_Calc]\(7 downto 0),
      O(7) => \Pipe_reg[3][Avg_Calc][7]_i_1_n_8\,
      O(6) => \Pipe_reg[3][Avg_Calc][7]_i_1_n_9\,
      O(5) => \Pipe_reg[3][Avg_Calc][7]_i_1_n_10\,
      O(4) => \Pipe_reg[3][Avg_Calc][7]_i_1_n_11\,
      O(3) => \Pipe_reg[3][Avg_Calc][7]_i_1_n_12\,
      O(2) => \Pipe_reg[3][Avg_Calc][7]_i_1_n_13\,
      O(1) => \Pipe_reg[3][Avg_Calc][7]_i_1_n_14\,
      O(0) => \Pipe_reg[3][Avg_Calc][7]_i_1_n_15\,
      S(7) => \Pipe[3][Avg_Calc][7]_i_2_n_0\,
      S(6) => \Pipe[3][Avg_Calc][7]_i_3_n_0\,
      S(5) => \Pipe[3][Avg_Calc][7]_i_4_n_0\,
      S(4) => \Pipe[3][Avg_Calc][7]_i_5_n_0\,
      S(3) => \Pipe[3][Avg_Calc][7]_i_6_n_0\,
      S(2) => \Pipe[3][Avg_Calc][7]_i_7_n_0\,
      S(1) => \Pipe[3][Avg_Calc][7]_i_8_n_0\,
      S(0) => \Pipe[3][Avg_Calc][7]_i_9_n_0\
    );
\Pipe_reg[3][Avg_Calc][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => '1',
      D => \Pipe_reg[3][Avg_Calc][13]_i_1_n_15\,
      Q => \Pipe_reg[3][Avg_Calc]\(8),
      R => '0'
    );
\Pipe_reg[3][Avg_Calc][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => '1',
      D => \Pipe_reg[3][Avg_Calc][13]_i_1_n_14\,
      Q => \Pipe_reg[3][Avg_Calc]\(9),
      R => '0'
    );
\Pipe_reg[3][Flush]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => '1',
      D => \Pipe_reg[2][Flush]__0\,
      Q => \Pipe_reg[3][Flush]__0\,
      R => '0'
    );
\Pipe_reg[3][New_Sample][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => '1',
      D => \Pipe_reg[2][New_Sample]\(0),
      Q => \Pipe_reg[3][New_Sample]\(0),
      R => '0'
    );
\Pipe_reg[3][New_Sample][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => '1',
      D => \Pipe_reg[2][New_Sample]\(1),
      Q => \Pipe_reg[3][New_Sample]\(1),
      R => '0'
    );
\Pipe_reg[3][New_Sample][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => '1',
      D => \Pipe_reg[2][New_Sample]\(2),
      Q => \Pipe_reg[3][New_Sample]\(2),
      R => '0'
    );
\Pipe_reg[3][New_Sample][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => '1',
      D => \Pipe_reg[2][New_Sample]\(3),
      Q => \Pipe_reg[3][New_Sample]\(3),
      R => '0'
    );
\Pipe_reg[3][New_Sample][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => '1',
      D => \Pipe_reg[2][New_Sample]\(4),
      Q => \Pipe_reg[3][New_Sample]\(4),
      R => '0'
    );
\Pipe_reg[3][New_Sample][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => '1',
      D => \Pipe_reg[2][New_Sample]\(5),
      Q => \Pipe_reg[3][New_Sample]\(5),
      R => '0'
    );
\Pipe_reg[3][New_Sample][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => '1',
      D => \Pipe_reg[2][New_Sample]\(6),
      Q => \Pipe_reg[3][New_Sample]\(6),
      R => '0'
    );
\Pipe_reg[3][New_Sample][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => '1',
      D => \Pipe_reg[2][New_Sample]\(7),
      Q => \Pipe_reg[3][New_Sample]\(7),
      R => '0'
    );
\Pipe_reg[3][Valid]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => '1',
      D => \Pipe_reg[2][Valid]__0\,
      Q => \Pipe_reg[3][Valid]__0\,
      R => '0'
    );
Rate_Upd_Tog_d1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => '1',
      D => Rate_Upd_Tog,
      Q => Rate_Upd_Tog_d1,
      R => '0'
    );
\Rst_Count[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \Rst_Count_reg_n_0_[0]\,
      O => minusOp(0)
    );
\Rst_Count[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \Rst_Count_reg_n_0_[0]\,
      I1 => \Rst_Count_reg_n_0_[1]\,
      O => \Rst_Count[1]_i_1_n_0\
    );
\Rst_Count[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E1"
    )
        port map (
      I0 => \Rst_Count_reg_n_0_[1]\,
      I1 => \Rst_Count_reg_n_0_[0]\,
      I2 => \Rst_Count_reg_n_0_[2]\,
      O => \Rst_Count[2]_i_1_n_0\
    );
\Rst_Count[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE01"
    )
        port map (
      I0 => \Rst_Count_reg_n_0_[2]\,
      I1 => \Rst_Count_reg_n_0_[0]\,
      I2 => \Rst_Count_reg_n_0_[1]\,
      I3 => \Rst_Count_reg_n_0_[3]\,
      O => \Rst_Count[3]_i_1_n_0\
    );
\Rst_Count[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0001"
    )
        port map (
      I0 => \Rst_Count_reg_n_0_[3]\,
      I1 => \Rst_Count_reg_n_0_[1]\,
      I2 => \Rst_Count_reg_n_0_[0]\,
      I3 => \Rst_Count_reg_n_0_[2]\,
      I4 => \Rst_Count_reg_n_0_[4]\,
      O => \Rst_Count[4]_i_1_n_0\
    );
\Rst_Count[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000001"
    )
        port map (
      I0 => \Rst_Count_reg_n_0_[4]\,
      I1 => \Rst_Count_reg_n_0_[2]\,
      I2 => \Rst_Count_reg_n_0_[0]\,
      I3 => \Rst_Count_reg_n_0_[1]\,
      I4 => \Rst_Count_reg_n_0_[3]\,
      I5 => \Rst_Count_reg_n_0_[5]\,
      O => \Rst_Count[5]_i_1_n_0\
    );
\Rst_Count[6]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Rst,
      O => clear
    );
\Rst_Count[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \Rst_Count_reg_n_0_[3]\,
      I1 => \Rst_Count_reg_n_0_[1]\,
      I2 => \Rst_Count_reg_n_0_[0]\,
      I3 => \Rst_Count_reg_n_0_[2]\,
      I4 => \Rst_Count_reg_n_0_[4]\,
      I5 => \Rst_Count_reg_n_0_[5]\,
      O => \Rst_Count[6]_i_2_n_0\
    );
\Rst_Count_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => p_0_in,
      D => minusOp(0),
      Q => \Rst_Count_reg_n_0_[0]\,
      S => clear
    );
\Rst_Count_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => p_0_in,
      D => \Rst_Count[1]_i_1_n_0\,
      Q => \Rst_Count_reg_n_0_[1]\,
      S => clear
    );
\Rst_Count_reg[2]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => p_0_in,
      D => \Rst_Count[2]_i_1_n_0\,
      Q => \Rst_Count_reg_n_0_[2]\,
      S => clear
    );
\Rst_Count_reg[3]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => p_0_in,
      D => \Rst_Count[3]_i_1_n_0\,
      Q => \Rst_Count_reg_n_0_[3]\,
      S => clear
    );
\Rst_Count_reg[4]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => p_0_in,
      D => \Rst_Count[4]_i_1_n_0\,
      Q => \Rst_Count_reg_n_0_[4]\,
      S => clear
    );
\Rst_Count_reg[5]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => p_0_in,
      D => \Rst_Count[5]_i_1_n_0\,
      Q => \Rst_Count_reg_n_0_[5]\,
      S => clear
    );
\Rst_Count_reg[6]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => p_0_in,
      D => \Rst_Count[6]_i_2_n_0\,
      Q => p_0_in,
      S => clear
    );
\Sample_Pipe_reg[31][0]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11111",
      CE => \Sample_Pipe_reg[31][7]_srl32_i_1_n_0\,
      CLK => Clk,
      D => \Pipe_reg[1][New_Sample]\(0),
      Q => \NLW_Sample_Pipe_reg[31][0]_srl32_Q_UNCONNECTED\,
      Q31 => \Sample_Pipe_reg[31][0]_srl32_n_1\
    );
\Sample_Pipe_reg[31][1]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11111",
      CE => \Sample_Pipe_reg[31][7]_srl32_i_1_n_0\,
      CLK => Clk,
      D => \Pipe_reg[1][New_Sample]\(1),
      Q => \NLW_Sample_Pipe_reg[31][1]_srl32_Q_UNCONNECTED\,
      Q31 => \Sample_Pipe_reg[31][1]_srl32_n_1\
    );
\Sample_Pipe_reg[31][2]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11111",
      CE => \Sample_Pipe_reg[31][7]_srl32_i_1_n_0\,
      CLK => Clk,
      D => \Pipe_reg[1][New_Sample]\(2),
      Q => \NLW_Sample_Pipe_reg[31][2]_srl32_Q_UNCONNECTED\,
      Q31 => \Sample_Pipe_reg[31][2]_srl32_n_1\
    );
\Sample_Pipe_reg[31][3]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11111",
      CE => \Sample_Pipe_reg[31][7]_srl32_i_1_n_0\,
      CLK => Clk,
      D => \Pipe_reg[1][New_Sample]\(3),
      Q => \NLW_Sample_Pipe_reg[31][3]_srl32_Q_UNCONNECTED\,
      Q31 => \Sample_Pipe_reg[31][3]_srl32_n_1\
    );
\Sample_Pipe_reg[31][4]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11111",
      CE => \Sample_Pipe_reg[31][7]_srl32_i_1_n_0\,
      CLK => Clk,
      D => \Pipe_reg[1][New_Sample]\(4),
      Q => \NLW_Sample_Pipe_reg[31][4]_srl32_Q_UNCONNECTED\,
      Q31 => \Sample_Pipe_reg[31][4]_srl32_n_1\
    );
\Sample_Pipe_reg[31][5]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11111",
      CE => \Sample_Pipe_reg[31][7]_srl32_i_1_n_0\,
      CLK => Clk,
      D => \Pipe_reg[1][New_Sample]\(5),
      Q => \NLW_Sample_Pipe_reg[31][5]_srl32_Q_UNCONNECTED\,
      Q31 => \Sample_Pipe_reg[31][5]_srl32_n_1\
    );
\Sample_Pipe_reg[31][6]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11111",
      CE => \Sample_Pipe_reg[31][7]_srl32_i_1_n_0\,
      CLK => Clk,
      D => \Pipe_reg[1][New_Sample]\(6),
      Q => \NLW_Sample_Pipe_reg[31][6]_srl32_Q_UNCONNECTED\,
      Q31 => \Sample_Pipe_reg[31][6]_srl32_n_1\
    );
\Sample_Pipe_reg[31][7]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11111",
      CE => \Sample_Pipe_reg[31][7]_srl32_i_1_n_0\,
      CLK => Clk,
      D => \Pipe_reg[1][New_Sample]\(7),
      Q => \NLW_Sample_Pipe_reg[31][7]_srl32_Q_UNCONNECTED\,
      Q31 => \Sample_Pipe_reg[31][7]_srl32_n_1\
    );
\Sample_Pipe_reg[31][7]_srl32_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \Pipe_reg[1][Valid_n_0_]\,
      I1 => \Pipe_reg[1][Flush_n_0_]\,
      O => \Sample_Pipe_reg[31][7]_srl32_i_1_n_0\
    );
\Sample_Pipe_reg[49][0]_srl18\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"10001",
      CE => \Sample_Pipe_reg[31][7]_srl32_i_1_n_0\,
      CLK => Clk,
      D => \Sample_Pipe_reg[31][0]_srl32_n_1\,
      Q => \Sample_Pipe_reg[49]\(0),
      Q31 => \NLW_Sample_Pipe_reg[49][0]_srl18_Q31_UNCONNECTED\
    );
\Sample_Pipe_reg[49][1]_srl18\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"10001",
      CE => \Sample_Pipe_reg[31][7]_srl32_i_1_n_0\,
      CLK => Clk,
      D => \Sample_Pipe_reg[31][1]_srl32_n_1\,
      Q => \Sample_Pipe_reg[49]\(1),
      Q31 => \NLW_Sample_Pipe_reg[49][1]_srl18_Q31_UNCONNECTED\
    );
\Sample_Pipe_reg[49][2]_srl18\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"10001",
      CE => \Sample_Pipe_reg[31][7]_srl32_i_1_n_0\,
      CLK => Clk,
      D => \Sample_Pipe_reg[31][2]_srl32_n_1\,
      Q => \Sample_Pipe_reg[49]\(2),
      Q31 => \NLW_Sample_Pipe_reg[49][2]_srl18_Q31_UNCONNECTED\
    );
\Sample_Pipe_reg[49][3]_srl18\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"10001",
      CE => \Sample_Pipe_reg[31][7]_srl32_i_1_n_0\,
      CLK => Clk,
      D => \Sample_Pipe_reg[31][3]_srl32_n_1\,
      Q => \Sample_Pipe_reg[49]\(3),
      Q31 => \NLW_Sample_Pipe_reg[49][3]_srl18_Q31_UNCONNECTED\
    );
\Sample_Pipe_reg[49][4]_srl18\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"10001",
      CE => \Sample_Pipe_reg[31][7]_srl32_i_1_n_0\,
      CLK => Clk,
      D => \Sample_Pipe_reg[31][4]_srl32_n_1\,
      Q => \Sample_Pipe_reg[49]\(4),
      Q31 => \NLW_Sample_Pipe_reg[49][4]_srl18_Q31_UNCONNECTED\
    );
\Sample_Pipe_reg[49][5]_srl18\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"10001",
      CE => \Sample_Pipe_reg[31][7]_srl32_i_1_n_0\,
      CLK => Clk,
      D => \Sample_Pipe_reg[31][5]_srl32_n_1\,
      Q => \Sample_Pipe_reg[49]\(5),
      Q31 => \NLW_Sample_Pipe_reg[49][5]_srl18_Q31_UNCONNECTED\
    );
\Sample_Pipe_reg[49][6]_srl18\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"10001",
      CE => \Sample_Pipe_reg[31][7]_srl32_i_1_n_0\,
      CLK => Clk,
      D => \Sample_Pipe_reg[31][6]_srl32_n_1\,
      Q => \Sample_Pipe_reg[49]\(6),
      Q31 => \NLW_Sample_Pipe_reg[49][6]_srl18_Q31_UNCONNECTED\
    );
\Sample_Pipe_reg[49][7]_srl18\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"10001",
      CE => \Sample_Pipe_reg[31][7]_srl32_i_1_n_0\,
      CLK => Clk,
      D => \Sample_Pipe_reg[31][7]_srl32_n_1\,
      Q => \Sample_Pipe_reg[49]\(7),
      Q31 => \NLW_Sample_Pipe_reg[49][7]_srl18_Q31_UNCONNECTED\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    Clk : in STD_LOGIC;
    Rst : in STD_LOGIC;
    Rate_Upd_Tog : in STD_LOGIC;
    Rate : in STD_LOGIC_VECTOR ( 7 downto 0 );
    Rate_Avg : out STD_LOGIC_VECTOR ( 13 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "bd_22c0_clock_throttling_avg_0,shell_utils_clock_throttling_avg,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "shell_utils_clock_throttling_avg,Vivado 2020.2.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  attribute AVE_NUM_SAMPLES : integer;
  attribute AVE_NUM_SAMPLES of U0 : label is 50;
  attribute AVE_WIDTH : integer;
  attribute AVE_WIDTH of U0 : label is 14;
  attribute RST_CNT_BITS : integer;
  attribute RST_CNT_BITS of U0 : label is 6;
  attribute SAMPLE_SAT_VAL : integer;
  attribute SAMPLE_SAT_VAL of U0 : label is 128;
  attribute SAMPLE_WIDTH : integer;
  attribute SAMPLE_WIDTH of U0 : label is 8;
  attribute x_interface_info : string;
  attribute x_interface_info of Clk : signal is "xilinx.com:signal:clock:1.0 Clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of Clk : signal is "XIL_INTERFACENAME Clk, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0, CLK_DOMAIN cd_ctrl_00, INSERT_VIP 0";
  attribute x_interface_info of Rst : signal is "xilinx.com:signal:reset:1.0 Rst RST";
  attribute x_interface_parameter of Rst : signal is "XIL_INTERFACENAME Rst, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
U0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_shell_utils_clock_throttling_avg
     port map (
      Clk => Clk,
      Rate(7 downto 0) => Rate(7 downto 0),
      Rate_Avg(13 downto 0) => Rate_Avg(13 downto 0),
      Rate_Upd_Tog => Rate_Upd_Tog,
      Rst => Rst
    );
end STRUCTURE;
