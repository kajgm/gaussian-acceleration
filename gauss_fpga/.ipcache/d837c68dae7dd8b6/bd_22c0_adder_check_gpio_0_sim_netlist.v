// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2.2 (lin64) Build 3118627 Tue Feb  9 05:13:49 MST 2021
// Date        : Wed Nov 22 16:41:43 2023
// Host        : ensc-mmc-14 running 64-bit Ubuntu 18.04.6 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ bd_22c0_adder_check_gpio_0_sim_netlist.v
// Design      : bd_22c0_adder_check_gpio_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcu50-fsvh2104-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "bd_22c0_adder_check_gpio_0,c_addsub_v12_0_14,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_addsub_v12_0_14,Vivado 2020.2.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (A,
    S);
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [15:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 s_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME s_intf, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value data} bitwidth {attribs {resolve_type generated dependency bitwidth format long minimum {} maximum {}} value 16} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type generated dependency signed format bool minimum {} maximum {}} value FALSE}}}} DATA_WIDTH 16}" *) output [15:0]S;

  wire [15:0]A;
  wire [15:0]S;
  wire NLW_U0_C_OUT_UNCONNECTED;

  (* C_BORROW_LOW = "1" *) 
  (* C_CE_OVERRIDES_BYPASS = "1" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "virtexuplusHBM" *) 
  (* KEEP_HIERARCHY = "soft" *) 
  (* c_a_type = "1" *) 
  (* c_a_width = "16" *) 
  (* c_add_mode = "0" *) 
  (* c_ainit_val = "0" *) 
  (* c_b_constant = "1" *) 
  (* c_b_type = "1" *) 
  (* c_b_value = "0010010011100110" *) 
  (* c_b_width = "16" *) 
  (* c_bypass_low = "0" *) 
  (* c_has_bypass = "0" *) 
  (* c_has_c_in = "0" *) 
  (* c_has_c_out = "0" *) 
  (* c_has_ce = "0" *) 
  (* c_has_sclr = "0" *) 
  (* c_has_sinit = "0" *) 
  (* c_has_sset = "0" *) 
  (* c_latency = "0" *) 
  (* c_out_width = "16" *) 
  (* c_sinit_val = "0" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_addsub_v12_0_14 U0
       (.A(A),
        .ADD(1'b1),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BYPASS(1'b0),
        .CE(1'b1),
        .CLK(1'b0),
        .C_IN(1'b0),
        .C_OUT(NLW_U0_C_OUT_UNCONNECTED),
        .S(S),
        .SCLR(1'b0),
        .SINIT(1'b0),
        .SSET(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2020.2.2"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
dH6JX2wk6DlLVpUCnwep6PFOjieQr8RElZaRNFV/BZrOFoWd+p9gbCtY3Ejd8xFXGIjIX4fECT8X
qQgNlod9+w==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
P+oq8XGSTpbfNgofOkG9K9S0PT2G476SrWoltAEq03NYO0p/rqu7XA3LGGvKqANuiYicFaUud3sZ
fgmkryVmTFIrNHxjJl2EwZRdTXpCH7ZRFPF1kDMYgw0yAJKz2or3+Is9sH17ddgQI4ZCQl5m6Cv8
pTYgqv0St1Av/OJ08mE=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
v/f5NeBYAGyP9SiLK17MDC+MA/XHgvCUKo7/mZarA/odqCOB1vqEJ3wP92WNF8HtpxMr4r4O5Zb2
GImeFw5H4N+iVxtgPMkWG35RbTkYIrw/VqjthAHliwVAE5js57L7tLXeGUIcon2gb5upQ3JFAqWy
pOHnjHwGCmOtEWQvrNZAL+BherVn6QEQT6vd+xl65ku88EzTTMHza9lRAOo+HayCoekVMGHMTjHm
0teuenQPhOOSTR80YscsqKhev8N529s3ZrgabRru0+IFok4wUZiX3DXFLVjG7QAOfMwaa4kjJTgX
c4s4ZRDGtV7Ya9L8r3YHJmoq7Bkf70GEBwtfCw==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
LDh4nPdxc4+yY5C6IbUbHHVqRS5lY3WIZlk9SSO3N9l0DtrHIzCkqksIUP+9m7bgBQZOJXuJYLTK
ac7k05KWY433IFrVrwXd+PftSUaVjBc8fmTrzO+8oAjs52uT95SxMs0xlnolTxiUamuzDBJU+QTN
PAgFAXxR5w4jJ2GKw7CcxY+YCsJ73N1NYhQ7oNm/JpHFDYpTLy8ML8AOqQDARsUj46Oaq7w8FW1d
JQdqUBzjUYE+fURu96SmW8dU6+DUvPbIdes8vQeuoTkCMM96CdW5GruFzgSos7HluatxcP8kS9HJ
nHa+B7a+C//xn8CGHbxR6ii+LbsWAnLxPLrMEQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
Qu+RPig5ZC+RxMF2gmauj/QZ+G2XPJx5PnL0I2XkqYqUnzK6Ac4zrYNwCGuhVplDBsTw8d74QxQR
EIvP8Gm7h0Ql73irbvMYohNEyx/UIeMfZ3bwdVk/eAu+CqPJN2vhbAa4e2cHIGd4nydoJQ5vEtr2
oJRPNxcOwvncKhXKteg=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Zwjg73RcdKJIhZISNcJxPx21vpJAoxtbCXlUSRX6dIkSE5riAaqGk7GPegC3/20X55M4oM/LxLhN
rX9sfh51PdEnLWGBu3XtFsnN665KNlor+AX5qRW7W7Q7ej53/Ocl3PRxyXB+XWXS+4q8ljawfSWZ
EiNKa318mcXXtdA+28a0Q1kdivBncnYnwHovCVv1eTLHLAN/EllqKUF6MoJz2rKD1hnk1mibZ7kp
mYIuhNnIfPjw691USkX0CsM2iC/VPZ1islArBG/PyJTUK8SLQi0hcHCYa/FbHEAf0T3rHTjEt2Jt
OE9cwXjfaqvziEh5ISZLIqGaztEYjrLue+xVgw==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
EFs5s7n/bL/k5OuOjlFZTitCHaqMEv7ntrqWs9NCxQFC+fWP0KKXUx+HCaa7ozNrg/fyK7TNUo2H
NTThGy8fpNA/YXWogS12qQh+5MGP7eO8kN97bi8zEhl9ssmzkoRwO9j0WeHNPuwbDAbCPwcuuaTS
rLBGbVCb/dpizk2JvBOdHtdPCCptC8HUW78YTdV2hz358+GrMN7ZrpJi4mVHvE5TG2kSWo2gCjru
1Z2h/uuT/IUUVK733cJPhEOht4p9sz7RrA7KTltuefctG8FwbIdM7z4SvujZ0rk5iymMk+v0JbaN
HwouewWsJcD/rlagJqSTDzFqFwtPvYLBKz88Kw==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2020_08", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
iLL/v6H9Fa42ZwpNQz845krQ0W0oiXYxbELunB1ZM8hMy58vOV4zxmq787+7ConIpGRIECe13Ta0
it5/FgXp1CKGOs901WXld60Wd/5guSHFHj8jBoGmhdnj66Oarg0uNlidDXsRKvuaAWADvcW0hq6I
jmoD2cIU2L7dK3v0DAIweKdrLoDA/AK86EbNkFErd2LQGEqzN+Pt7tM4FTt9oTglxmsTLpN97tNc
aMht22xlH643N2bj9wTGx540ruAHCG6L/5sPkl/UM5BazXd743XRHGm6GH7CpJ40o1IeHe1oT0Kx
rzsf+zlz2mJKsWjuH2EoOURHIwhox8ZvXxkrbQ==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
GQ6QyHl9v8ldqugf9IhMgiP+qN3I7LPETtzyxmTLbSmDxFs5FavM1HCrX5nw3kkYcL6J5cph1duI
1TBoLn05usE8TEqo4noyzSYDkmFGfswO7TvNVR+02cmcV7VRCaEaQufXyi2UPeYfNlprX4rN5n4H
Vg/sSu7IdzDng/XpCzXKStiMuAX++L2I92PoAUd4l25XPusd1conSEWVG1v39w30e7PPC3xmV6wS
QCslucZK/2P3WTc6m1/ldxjJ8l+LG1TL8LQdjVb1XRdSXpkEeJnE7gc9tBlNN1NEsTqnadzD3cgo
++lwtobU2CteZZISh6JcXK61qDpCuHkVLNRL7A==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 2704)
`pragma protect data_block
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
1lpxCNZY0sziGSAEHSb1rFtXatICSGHXEw==
`pragma protect end_protected
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2020.2.2"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
dH6JX2wk6DlLVpUCnwep6PFOjieQr8RElZaRNFV/BZrOFoWd+p9gbCtY3Ejd8xFXGIjIX4fECT8X
qQgNlod9+w==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
P+oq8XGSTpbfNgofOkG9K9S0PT2G476SrWoltAEq03NYO0p/rqu7XA3LGGvKqANuiYicFaUud3sZ
fgmkryVmTFIrNHxjJl2EwZRdTXpCH7ZRFPF1kDMYgw0yAJKz2or3+Is9sH17ddgQI4ZCQl5m6Cv8
pTYgqv0St1Av/OJ08mE=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
v/f5NeBYAGyP9SiLK17MDC+MA/XHgvCUKo7/mZarA/odqCOB1vqEJ3wP92WNF8HtpxMr4r4O5Zb2
GImeFw5H4N+iVxtgPMkWG35RbTkYIrw/VqjthAHliwVAE5js57L7tLXeGUIcon2gb5upQ3JFAqWy
pOHnjHwGCmOtEWQvrNZAL+BherVn6QEQT6vd+xl65ku88EzTTMHza9lRAOo+HayCoekVMGHMTjHm
0teuenQPhOOSTR80YscsqKhev8N529s3ZrgabRru0+IFok4wUZiX3DXFLVjG7QAOfMwaa4kjJTgX
c4s4ZRDGtV7Ya9L8r3YHJmoq7Bkf70GEBwtfCw==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
LDh4nPdxc4+yY5C6IbUbHHVqRS5lY3WIZlk9SSO3N9l0DtrHIzCkqksIUP+9m7bgBQZOJXuJYLTK
ac7k05KWY433IFrVrwXd+PftSUaVjBc8fmTrzO+8oAjs52uT95SxMs0xlnolTxiUamuzDBJU+QTN
PAgFAXxR5w4jJ2GKw7CcxY+YCsJ73N1NYhQ7oNm/JpHFDYpTLy8ML8AOqQDARsUj46Oaq7w8FW1d
JQdqUBzjUYE+fURu96SmW8dU6+DUvPbIdes8vQeuoTkCMM96CdW5GruFzgSos7HluatxcP8kS9HJ
nHa+B7a+C//xn8CGHbxR6ii+LbsWAnLxPLrMEQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
Qu+RPig5ZC+RxMF2gmauj/QZ+G2XPJx5PnL0I2XkqYqUnzK6Ac4zrYNwCGuhVplDBsTw8d74QxQR
EIvP8Gm7h0Ql73irbvMYohNEyx/UIeMfZ3bwdVk/eAu+CqPJN2vhbAa4e2cHIGd4nydoJQ5vEtr2
oJRPNxcOwvncKhXKteg=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Zwjg73RcdKJIhZISNcJxPx21vpJAoxtbCXlUSRX6dIkSE5riAaqGk7GPegC3/20X55M4oM/LxLhN
rX9sfh51PdEnLWGBu3XtFsnN665KNlor+AX5qRW7W7Q7ej53/Ocl3PRxyXB+XWXS+4q8ljawfSWZ
EiNKa318mcXXtdA+28a0Q1kdivBncnYnwHovCVv1eTLHLAN/EllqKUF6MoJz2rKD1hnk1mibZ7kp
mYIuhNnIfPjw691USkX0CsM2iC/VPZ1islArBG/PyJTUK8SLQi0hcHCYa/FbHEAf0T3rHTjEt2Jt
OE9cwXjfaqvziEh5ISZLIqGaztEYjrLue+xVgw==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
EFs5s7n/bL/k5OuOjlFZTitCHaqMEv7ntrqWs9NCxQFC+fWP0KKXUx+HCaa7ozNrg/fyK7TNUo2H
NTThGy8fpNA/YXWogS12qQh+5MGP7eO8kN97bi8zEhl9ssmzkoRwO9j0WeHNPuwbDAbCPwcuuaTS
rLBGbVCb/dpizk2JvBOdHtdPCCptC8HUW78YTdV2hz358+GrMN7ZrpJi4mVHvE5TG2kSWo2gCjru
1Z2h/uuT/IUUVK733cJPhEOht4p9sz7RrA7KTltuefctG8FwbIdM7z4SvujZ0rk5iymMk+v0JbaN
HwouewWsJcD/rlagJqSTDzFqFwtPvYLBKz88Kw==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2020_08", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
iLL/v6H9Fa42ZwpNQz845krQ0W0oiXYxbELunB1ZM8hMy58vOV4zxmq787+7ConIpGRIECe13Ta0
it5/FgXp1CKGOs901WXld60Wd/5guSHFHj8jBoGmhdnj66Oarg0uNlidDXsRKvuaAWADvcW0hq6I
jmoD2cIU2L7dK3v0DAIweKdrLoDA/AK86EbNkFErd2LQGEqzN+Pt7tM4FTt9oTglxmsTLpN97tNc
aMht22xlH643N2bj9wTGx540ruAHCG6L/5sPkl/UM5BazXd743XRHGm6GH7CpJ40o1IeHe1oT0Kx
rzsf+zlz2mJKsWjuH2EoOURHIwhox8ZvXxkrbQ==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
GQ6QyHl9v8ldqugf9IhMgiP+qN3I7LPETtzyxmTLbSmDxFs5FavM1HCrX5nw3kkYcL6J5cph1duI
1TBoLn05usE8TEqo4noyzSYDkmFGfswO7TvNVR+02cmcV7VRCaEaQufXyi2UPeYfNlprX4rN5n4H
Vg/sSu7IdzDng/XpCzXKStiMuAX++L2I92PoAUd4l25XPusd1conSEWVG1v39w30e7PPC3xmV6wS
QCslucZK/2P3WTc6m1/ldxjJ8l+LG1TL8LQdjVb1XRdSXpkEeJnE7gc9tBlNN1NEsTqnadzD3cgo
++lwtobU2CteZZISh6JcXK61qDpCuHkVLNRL7A==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
RVgpPzW9rMbdsY8voluUGfOFMAGucNeZwQpGIYul6hQNT4z0/344WmLnGOr28shG5KRMNfN6XA7y
Ah6WbdZVOlZVI9W1XG4U16WLQqaDbOQWTK0o0I5vlML6MpmHNJttttnUNolm8WAKPXv9Snb2kQnx
vjRR6wPXEmUu5I0rCHde8p6dVeZrDQWP45ckSf+ir+TREHAI+qBV1/YC0ezjbRaUPV/1lkuE8twB
jZwxONbyUECG6A1Cm7CVbvkG8uEHexmjzxAzboef44nw60iihvGkbrFpxg5MdIWdY07qWvwBrCHl
SN731lN3RgPM9AWAQc8nrxj6bIl2fR1b3XWxuQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
wu3cXgb78dklRghYRr1k1eLnrkOsP4xMDpRACgNz+LtGR40iAuIK8h20AgtCk7A7g8JJZDVUEfLT
DHgfOtIiDH4bPihsNEjExop+IJQ5jEndirYsXRnvVIalbROF+xE/yqPNvmGoKZJYkLxpJzwvzCCD
ZdWTkhbCf4bo/IQfMpEkEWclQ+2oM2WVpMBQfV9sPRzzqj0l53cpabkakmJombBNMazfdgESAJzt
sdvz9+xL3vX2XI36I5cIBTmNKDrMmrhxNASX/wCJOX5jaU/xJG8zoNeDHQE/jIij8gfzO+1WSQLA
D+xPGiAxSip86E1LBDj4tjfk5PyBFnYg3olJog==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 6000)
`pragma protect data_block
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
ztchO0tfTzf6zWIsieNm
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
