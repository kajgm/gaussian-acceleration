// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2.2 (lin64) Build 3118627 Tue Feb  9 05:13:49 MST 2021
// Date        : Wed Nov 22 16:47:16 2023
// Host        : ensc-mmc-14 running 64-bit Ubuntu 18.04.6 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ bd_22c0_gapping_demand_toggle_0_sim_netlist.v
// Design      : bd_22c0_gapping_demand_toggle_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcu50-fsvh2104-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "bd_22c0_gapping_demand_toggle_0,c_counter_binary_v12_0_14,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_counter_binary_v12_0_14,Vivado 2020.2.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (CLK,
    CE,
    Q);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF q_intf:thresh0_intf:l_intf:load_intf:up_intf:sinit_intf:sset_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0, CLK_DOMAIN cd_ctrl_00, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:clockenable:1.0 ce_intf CE" *) (* x_interface_parameter = "XIL_INTERFACENAME ce_intf, POLARITY ACTIVE_HIGH" *) input CE;
  (* x_interface_info = "xilinx.com:signal:data:1.0 q_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME q_intf, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value data} bitwidth {attribs {resolve_type generated dependency bitwidth format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} DATA_WIDTH 1}" *) output [0:0]Q;

  wire CE;
  wire CLK;
  wire [0:0]Q;
  wire NLW_U0_THRESH0_UNCONNECTED;

  (* C_AINIT_VAL = "0" *) 
  (* C_CE_OVERRIDES_SYNC = "0" *) 
  (* C_COUNT_BY = "1" *) 
  (* C_COUNT_MODE = "0" *) 
  (* C_COUNT_TO = "1" *) 
  (* C_FB_LATENCY = "0" *) 
  (* C_HAS_CE = "1" *) 
  (* C_HAS_LOAD = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_HAS_THRESH0 = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_LATENCY = "1" *) 
  (* C_LOAD_LOW = "0" *) 
  (* C_RESTRICT_COUNT = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_THRESH0_VALUE = "1" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_WIDTH = "1" *) 
  (* C_XDEVICEFAMILY = "virtexuplusHBM" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_counter_binary_v12_0_14 U0
       (.CE(CE),
        .CLK(CLK),
        .L(1'b0),
        .LOAD(1'b0),
        .Q(Q),
        .SCLR(1'b0),
        .SINIT(1'b0),
        .SSET(1'b0),
        .THRESH0(NLW_U0_THRESH0_UNCONNECTED),
        .UP(1'b1));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2020.2.2"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
BZ8pe5IFwM98cgii3aKXoPTNX8+uhPtfCo45my+cvdRTcw+yD4/3LrfBLGiWfb/RPhYTyAnzkTcL
OaC5BUIykw==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
h3mGUeYZUrRgeoC0Llc50k4Hv+ilb0iqvKdQc+7PCIGRq7jefDK6/zy9O0x0lBnvd71Ul5PqrWsr
SVZ/Qt3A1el3IUhTCWDTlRc/8CIdbIxac/Q5WUguI60UR3TBf2BQoWGQXjCYfj3Mbg5+3dinBvJZ
Vxi9JXIMMQY5q52mqsE=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
1W92dvzom1ZCjVMqExTRGkUQLObRSu/MUpqx7+R6lU2pH4UsBSraZdnwrmQCqU3SRnoApoZ8jF3e
8Gb5nCICmgML+QXyLXEGJosmXdraXk6/Awt49aYOk6m1ECSZ6sVYft0eBon4szdjzfXdPnLiJchL
3yXMJ0LtNty2ojCLN2gb76SzgSdN3+syLJXuoART0fFi/O/SwLnJ09a4WnAtiS53zEymHxpP3s2Q
vD0kRUockH+HqPkqdB1FmMAiEQnI+gb64C7HfmNnT2Mk31VQQOYXxoPiOvgy1F+9bb7yZimHiWec
RzLyqnC92XckYQ1syY9pQ2fsZ+lLyS1qy7etZA==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
SxxwdjmhmZILP3x8oYF424jyduYsYUCZ4vN39Pah24+0Dmneegc7V1hY47xgCp4OfRZD+WvGlkVE
nbzNwn4FbVEID5/Gg02mhOu0MNkoBU7OEj5Wn4Ug/VhII+25zkj0vJKcpF/wqwIgB0LVzqhmBsZp
lvq7ghH3DID92isSbsyRlg1MF+B9QLXSeUG0ZK5cvZEWwTl0IOlS4FPidMLO8wwFeyeWcVUAC1dP
sb8WOK7KjAaAFy2LSk41xzxmcCUQiv99xo890WekMZsl/kcbqLP2B6OiaXbzjbZQNQGLTK9/Lxd8
YmIekXL1lidg4O5DDgHdpTLQw+wk2vvbk5CxrQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
M3Ze5dP3Gg5huNkHDhewejsLdThh8kEl49KIT9vcRrg/yLeCdNRNqQXKXd7VSxxh7tGqaWpk0drs
hCB0q20LW/VtMvGkfasFE5GBKf49+91da5k7O8GsgkuG7tv8tUQElKfY2c+tN2wdQccdciGtviqb
KWAbpUFu5dTyALM+Z/I=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
WzbqWaYi9ygvm1sojBZ4CHuJxhmnEzKchzYTBGITWLVQ4DcPcJjLh6BRq3qDMKh3pSE+ddZBJLRY
aBaMDIytDXKBYY/gamZIOGj7bxhW406fWVGH+XfQINDjvaVoXCXmZGR4ySj6NaWVLSbgrWQ6LRJE
TiLmiaLQPm9DPu3yU4t+Bc6qLJQb0Y6u0aysejEalS0Uo6z8gZjHwxxoetz1TAXyesSqmf/Nl2/s
UQYmKs4ltVBx+xgmB2EtgrxTXYmWNOFPr663Lo2zm94A05Byfl5mo4CG8AbZK4wvekjf71Km2XSh
ijHbj2PWwHy/8dbuUvHmHMMY3XyFZhrcUXLwhg==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
0B7ZenEVKjljVRBvVd8ZCXIfSbjeMz8RSqA66XFe4A2QeD0T7jhAnlDc2znyD/Se977zE+zWJuIR
/0noOl099OaOs564hg2f8VvJHtzXDFTaT/P3lw1PRc/O4gmS9WK2oLsZiNayza8gprI5TJP2CSh1
4waalnK/fokSDOqGKmYs8FX63A5dQE7iLevhKJnTvNDlwmoFueaoLDMLIYQnHdV/R88oJ2w9aQKr
Kwpo41FOeoSVBXEm7haHOZkKGgscNNHFlfEiaGD9oGMl04mgC3ANKdfbbSWYZpy9Lw7s5kjUFZWw
ANArkPy58XfiNG0MzBZJt5C10pQeVlNaFdXEhw==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2020_08", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
jXvUyCTchS4t8eT9y6UfQwyAEvuBIqIiYmzpxT++Q7TdiA1hWY7wz/SJXpNhiwK/D0IW/eH027bf
n7MB7VC/xXeuIz85pJQaD8XU71+boa0QR6YkM2KVHhJWp+zItlT7Cz06H44iIuIk8RRlhQ39ikVM
XDxrI0HW/Xf8Fj1S5vb9PDSw8bodu0J3xNN0TXGPQw1VC59AVt4o/faz7Imzb8MdzEG0Fvzo1tqv
SENzO3mnF0BxCk+yTnuvbmSd8mwGglAKAAaw/EfWuGAt6ZJirjd6H2ypsnJ6pw9xRjBYiXu/h0Pb
Glgw8dRYXmYHoGY5YNz/yRgUBqk3nmu/QTB87A==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Uw5Dbp7GZRuj0RZpej/DVBeDQhG6KH1fRROD1fLGcOlOdPzGUsTKjSrJz2wHgJOejQTb8JxXO3j4
NGR+6RXiP/607cYXZR9/Bl5sIqPfAN/ttsi6t3iu98pU0D0bhkeEAutyFDrMJ3eb43W/V13C+Jnl
xwXOzVLXo6RpIfJep0L4p0bwAVwd8RiEPUBbT8pvnaKTc6UuqcZyJJhJvHIdVkN5/wyK4RRkzb6J
OfBA9l/eiX6TkquLjAdUrk/VwPaFB1Scc8QFf/IPN9b9Am0sTEN7prsG1vpcihhifDgnycCfjR+T
yaRfU0jFHd7kk2DOkMdi0Rud3DhxDSThn1pjXw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 2336)
`pragma protect data_block
R+sd5UtwEoOksGbP3vzF3kTosEoPW3+Q4PI5CVnI91vvHQuO6bIRJauKGmtufmV2AZZvixQS3l+X
lisZukTjh399VISpWRhj/u6+qGRWmt1V2p1EnApElOzk0IpYZ5K9drC22XPrttAuKzlo0ZhaCLvR
ODefTIaMMHn8qLgdY/o1x5tcrBAiHMnwP22Ewgr/6pSSSqanaQNq8xAE7jEVfuGQh73fFae/spLx
AorK2/4487w7tX9chXS3GtU6MyX/2f6Bj5leXuzDL0zwpJLdQ2b+MK/PtRPgA2er80/OKI8zv1vT
niihSlL2bVPRjFLEQGl46x6Xjxcp4i2/8pB04r8UP3E6byFeuWUaYF8rQfoh2W1Dqm2TZMr2r+tJ
BqNdj2wVIBICxR5ev7yuRS1sWvZWyRve7YuIeKXd/8iKcVuvWBBTXggsRSdlsavYdy3Xj9uqcQou
8U7o1Aw7BT+VuOqisneCAugdJz9J8nGdxXNn1Bw8swDz7hpbF2K4agoMBu2PCjCRjT/2ViYchKzw
rjc3monfoWuCHzHFx0vM8Q3lJNxisKrkYOh/ilTe6cJ5ElCDmwXUaNclFGWiP5mxN0EFjPXbul4I
VQp2wQ5eVY5TGaXbZz7TlTj0AXwA4Ox1jcQEjTauwjDBUOeFsQG/Q2BIX96PysNZ3JFZjXTFHBe3
cHE1Omg+sN7MsdkENWufl2JBeGupMoXsodIE1EyuhPpyCg+2G36b65K8CE84gSqleExemCFnHMvE
SG1xhJa5cx3jE0zw7AXRkuaeu+tv8U8klFBuJhHp2A4tJU/t+/llYcLP98ocXJQjUa40P+SErDpu
dIePN/o2/g6G8bsvvhowFAUa/z0xSvqp1yPTbTVwkncvHGW0NHweCClo9tuNDvK1K6WbcFZhHpbs
dcAaB9jPfcvEXlk7Dh9xWlxNYcqgi1XhMwWrNlqd1KbD2tfNdzmTXTE487geCuUU9lk0KS2VmXbH
0p/Xb1vfgJn3n8o9nf3j4te81yo1/sa5W0Aig68BjtEOQPv97t5HmF2LmPf9bxVnRHImnU971zgo
UhVLIoQ5ok2AkXxoi+iVYWEMi18Lz7cuFZhyTugTO/Plp9D3y3TXHAuTsh6ijMdcItkFIG6BDMXc
5/8gTBCDru0+boa3FfZ15dcyBo7SlKSPgZZEc6k2G64M1VEdx1om/hcXxHUzq0L6IFgEjfoDviDw
l3Vca/8T2+4dcAW9j43uIRPTiVLbH8sW+VXhmhFlzIfuXZuGNJxJhRswakePaFwn7klAQP1m1n1a
DCIe2uJtSyqvodeUFI5Cq1MoYlyJOSlaKeKoNcjZtiwHEBYVky2YdZ3Vpdh+vDkcjr7WTY7qq5bq
piMwtwZNcOpo4aj2+tBE0k17qnD7ekmRrPslG24WIQsMy91N5xWDh9nzTWhawzrSd3RKiMEwJVkm
u+yJPYTOE8lOb9+2V6kotSRGRSSe4KrJa6dHUaWeqUgRk2RusQR4F5TP68VbWGn4otxLwvqeqYTj
nF64R1h6VVvA0TPuSpQK5BV2NfINwGcPuLq6PHmJWFljrWwa1vXxx43MKJPL1EwPYz6Ca7Wm0P1L
4vYMXx6++5paLMxSi3L8All/6LCDwzVBtcAj1G4p8ysks3V8rY05J+QdSLilbiqFrQzCY7b7b7Kr
86nMYDzQs0e4DHkpPRf6KSRSP9UgkZpYlNG0zBK+CHcED73hZ1SyQat2tnN3HOudMzlXAR9PFyng
DVh3r477JadXir9gF0z+2+sOPGyjASPOLn1uYd1t6Celn2cCzvAsBCJkC9BdDMEW2X2OwWruVrLm
7T8Sqqip1qafCvslo+bQE66Rb5HbEDkbY1vl8XnbMQ1e5QTMMbt2ywij8tjtD2rfJPH3RnZsaNAI
k/rbw9GkmRNQ/XRSHAJL83eA7o6YMHidm9K2m/f7bfvsuX2bqIsjHwm3hXncAmMnqvA09S6e0k5v
PI4NxhrftIxMEiN02wkN9zzNJIQ0NmaKnCpt76nqKpROayJZnDw6D2CoZFItcyTGwsDfYzXGpnyd
7ILzg9HM33tFcLeRN8ElT/aOkn++GzbXCZiCwSTO/Edw1Bjx46JUWe7yYDmas6tWW3+qVEDN41iU
b0xEYnZhumS4gcb3oM+yr3gaZxN1ih08O/uV7tjDdEvkIs93f5RgFQwTg3lOA7WU2167PplmV9LR
JT3CFOy1ajCGZtE0vR/AWmjBzwqQJ+5WsTZTK4JlvSiICJM0jaD/YhDddoSr+idklcDLRCPMCkDr
kXWPm9xejv+ZvR5dDT/QWW44mEbUvsUIYmk47BJQBo2RlgXWENvL8+56+hiIhFZSSvLqwhOFBrgV
4uCIuSBQ4JngHmjLJgAdX2fiKZq4zTpdbbVqTxdEnYIFa6blJwc7JFk+ma/DHnWy0T+BMiQrvR4H
FyWX6VTCxzlrrRaDmAx0GnnQwfOrGP1JpylDHIi8pWnpHi+SZgkrGwvBRbvRp9gOfd6a3PlQuCZC
165kZhmZbKCCKOuNoD/tcOY72DUwNunUPF24liiGahLEGngHXrmgDZRXQ3IZ87IC1wXqlxg+iLto
URQkcC2kKdJjVAhO/YmvdO5AUT1+HYSIrrWZ3rejtj2AwRPuFko8OH8fFJrOVP18M6zSwbjZwXo+
nXEUf2dfJQPZtwIPn+jMqY0BHxZreqhLqFZEalMhHlcqWDA/9Km7Tf2qtGuYyE2RSbDf7BsEPquW
NciHUAnpONVE+HcqS8CvclncOjGH5yb2gOt6owJFsUKGwuTdN4MbrZgIDE+h2FbjPCvcY6zJbpuU
+xQrTyTDmXq1znbvQSd0fdPFC7RftfT2bBXQI1JVb90lcbRHdydUeDbYNU0bv5+EG9879UaAMu3y
G9l7HaTa+8m3OwcCpz+SWssR1FrhPAJYTxbIXlp4BzkUJ4wta41h9kVJNL5cXslVYZKIWQftnbyG
f3wiwnpEZDxrKZunEeP05R9PO4kXrOl5XekSEyODrwuj846ox4ov48y9BMZI+QqLTpXK+G38tCv/
wdtqGgjuzNLoUJGv0fDlBl8nB6G8+EfObFDSnVtDFS961m19oMI7bTeEM+grnjl4HRyoEbl+EJI=
`pragma protect end_protected
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2020.2.2"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
BZ8pe5IFwM98cgii3aKXoPTNX8+uhPtfCo45my+cvdRTcw+yD4/3LrfBLGiWfb/RPhYTyAnzkTcL
OaC5BUIykw==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
h3mGUeYZUrRgeoC0Llc50k4Hv+ilb0iqvKdQc+7PCIGRq7jefDK6/zy9O0x0lBnvd71Ul5PqrWsr
SVZ/Qt3A1el3IUhTCWDTlRc/8CIdbIxac/Q5WUguI60UR3TBf2BQoWGQXjCYfj3Mbg5+3dinBvJZ
Vxi9JXIMMQY5q52mqsE=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
1W92dvzom1ZCjVMqExTRGkUQLObRSu/MUpqx7+R6lU2pH4UsBSraZdnwrmQCqU3SRnoApoZ8jF3e
8Gb5nCICmgML+QXyLXEGJosmXdraXk6/Awt49aYOk6m1ECSZ6sVYft0eBon4szdjzfXdPnLiJchL
3yXMJ0LtNty2ojCLN2gb76SzgSdN3+syLJXuoART0fFi/O/SwLnJ09a4WnAtiS53zEymHxpP3s2Q
vD0kRUockH+HqPkqdB1FmMAiEQnI+gb64C7HfmNnT2Mk31VQQOYXxoPiOvgy1F+9bb7yZimHiWec
RzLyqnC92XckYQ1syY9pQ2fsZ+lLyS1qy7etZA==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
SxxwdjmhmZILP3x8oYF424jyduYsYUCZ4vN39Pah24+0Dmneegc7V1hY47xgCp4OfRZD+WvGlkVE
nbzNwn4FbVEID5/Gg02mhOu0MNkoBU7OEj5Wn4Ug/VhII+25zkj0vJKcpF/wqwIgB0LVzqhmBsZp
lvq7ghH3DID92isSbsyRlg1MF+B9QLXSeUG0ZK5cvZEWwTl0IOlS4FPidMLO8wwFeyeWcVUAC1dP
sb8WOK7KjAaAFy2LSk41xzxmcCUQiv99xo890WekMZsl/kcbqLP2B6OiaXbzjbZQNQGLTK9/Lxd8
YmIekXL1lidg4O5DDgHdpTLQw+wk2vvbk5CxrQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
M3Ze5dP3Gg5huNkHDhewejsLdThh8kEl49KIT9vcRrg/yLeCdNRNqQXKXd7VSxxh7tGqaWpk0drs
hCB0q20LW/VtMvGkfasFE5GBKf49+91da5k7O8GsgkuG7tv8tUQElKfY2c+tN2wdQccdciGtviqb
KWAbpUFu5dTyALM+Z/I=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
WzbqWaYi9ygvm1sojBZ4CHuJxhmnEzKchzYTBGITWLVQ4DcPcJjLh6BRq3qDMKh3pSE+ddZBJLRY
aBaMDIytDXKBYY/gamZIOGj7bxhW406fWVGH+XfQINDjvaVoXCXmZGR4ySj6NaWVLSbgrWQ6LRJE
TiLmiaLQPm9DPu3yU4t+Bc6qLJQb0Y6u0aysejEalS0Uo6z8gZjHwxxoetz1TAXyesSqmf/Nl2/s
UQYmKs4ltVBx+xgmB2EtgrxTXYmWNOFPr663Lo2zm94A05Byfl5mo4CG8AbZK4wvekjf71Km2XSh
ijHbj2PWwHy/8dbuUvHmHMMY3XyFZhrcUXLwhg==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
0B7ZenEVKjljVRBvVd8ZCXIfSbjeMz8RSqA66XFe4A2QeD0T7jhAnlDc2znyD/Se977zE+zWJuIR
/0noOl099OaOs564hg2f8VvJHtzXDFTaT/P3lw1PRc/O4gmS9WK2oLsZiNayza8gprI5TJP2CSh1
4waalnK/fokSDOqGKmYs8FX63A5dQE7iLevhKJnTvNDlwmoFueaoLDMLIYQnHdV/R88oJ2w9aQKr
Kwpo41FOeoSVBXEm7haHOZkKGgscNNHFlfEiaGD9oGMl04mgC3ANKdfbbSWYZpy9Lw7s5kjUFZWw
ANArkPy58XfiNG0MzBZJt5C10pQeVlNaFdXEhw==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2020_08", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
jXvUyCTchS4t8eT9y6UfQwyAEvuBIqIiYmzpxT++Q7TdiA1hWY7wz/SJXpNhiwK/D0IW/eH027bf
n7MB7VC/xXeuIz85pJQaD8XU71+boa0QR6YkM2KVHhJWp+zItlT7Cz06H44iIuIk8RRlhQ39ikVM
XDxrI0HW/Xf8Fj1S5vb9PDSw8bodu0J3xNN0TXGPQw1VC59AVt4o/faz7Imzb8MdzEG0Fvzo1tqv
SENzO3mnF0BxCk+yTnuvbmSd8mwGglAKAAaw/EfWuGAt6ZJirjd6H2ypsnJ6pw9xRjBYiXu/h0Pb
Glgw8dRYXmYHoGY5YNz/yRgUBqk3nmu/QTB87A==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Uw5Dbp7GZRuj0RZpej/DVBeDQhG6KH1fRROD1fLGcOlOdPzGUsTKjSrJz2wHgJOejQTb8JxXO3j4
NGR+6RXiP/607cYXZR9/Bl5sIqPfAN/ttsi6t3iu98pU0D0bhkeEAutyFDrMJ3eb43W/V13C+Jnl
xwXOzVLXo6RpIfJep0L4p0bwAVwd8RiEPUBbT8pvnaKTc6UuqcZyJJhJvHIdVkN5/wyK4RRkzb6J
OfBA9l/eiX6TkquLjAdUrk/VwPaFB1Scc8QFf/IPN9b9Am0sTEN7prsG1vpcihhifDgnycCfjR+T
yaRfU0jFHd7kk2DOkMdi0Rud3DhxDSThn1pjXw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
VzJV/WdrNeEXiz6WlHLA7wJU75hHpvvjeqoPYoPMi0eclbHa8FGQljWdWSefmqd4TYIHsZQqQlC7
VR23gx1TfnsLYWfsyj8K4jd7fkJgs5qh5obr2pVZiMG30Sy4xHWxKJudrH4ZqgIRea5Hw/J/wBCU
Sp+5dQ2dSRxtdra/yTM5wi7ZREu/1do7DDPkOkWqaojTVM0ABspqazceS2Brp0+dU+wTbjqzvFa1
/LIG+srYUFgF0YXe1uJxL/uwCtdybh5XOkIi+fUiiVuIuzu/kYEE8CUIHO1EIEPxp+qz9SC79cLB
pmml9zU6uuWLc3i2dNd1ixZMIAY5j6Xl/ecugw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
BQORQ5hqDWyZYzdKRx97kHTGbIwZ7vJMiagY0ENsFe7cAsrWf8lWcHgkh+cXPGy9i/miAjBQXxE7
IiysreO+oRgJNkCRMG89G6xuAcRc9b+9jh3v3Ot/oznXHaCQP8VGjXc/sdrwP0qrjRJ9VSrzlthK
jcepNy9q/6xtxGvgN3TpgagdopqbbQ3+oUhbsORKeC6eaMNFPerf1w/6NVk8Mk2DmSOgQt2Hf3Ux
OQNiPsR3uUzSMvz2CCOKujbfBUbHIFNOmOh2UbbmQ/68DQp1XsnYTfrD8o9FX0R3e+BawvOZqgVw
q4d9xzev/Ag24cn5NmginSisS6jO+Iv8p/lWAw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 2736)
`pragma protect data_block
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
`pragma protect end_protected
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
