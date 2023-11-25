// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2.2 (lin64) Build 3118627 Tue Feb  9 05:13:49 MST 2021
// Date        : Wed Nov 22 16:35:42 2023
// Host        : ensc-mmc-14 running 64-bit Ubuntu 18.04.6 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ bd_0349_lut_buffer_0_sim_netlist.v
// Design      : bd_0349_lut_buffer_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcu50-fsvh2104-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "bd_0349_lut_buffer_0,lut_buffer_v2_0_0_lut_buffer,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "lut_buffer_v2_0_0_lut_buffer,Vivado 2020.2.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (tdi_i,
    tms_i,
    tck_i,
    drck_i,
    sel_i,
    shift_i,
    update_i,
    capture_i,
    runtest_i,
    reset_i,
    bscanid_en_i,
    tdo_o,
    tdi_o,
    tms_o,
    tck_o,
    drck_o,
    sel_o,
    shift_o,
    update_o,
    capture_o,
    runtest_o,
    reset_o,
    bscanid_en_o,
    tdo_i);
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 s_bscan TDI" *) input tdi_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 s_bscan TMS" *) input tms_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 s_bscan TCK" *) input tck_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 s_bscan DRCK" *) input drck_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 s_bscan SEL" *) input sel_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 s_bscan SHIFT" *) input shift_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 s_bscan UPDATE" *) input update_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 s_bscan CAPTURE" *) input capture_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 s_bscan RUNTEST" *) input runtest_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 s_bscan RESET" *) input reset_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 s_bscan BSCANID_EN" *) input bscanid_en_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 s_bscan TDO" *) output tdo_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 m_bscan TDI" *) output tdi_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 m_bscan TMS" *) output tms_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 m_bscan TCK" *) output tck_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 m_bscan DRCK" *) output drck_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 m_bscan SEL" *) output sel_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 m_bscan SHIFT" *) output shift_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 m_bscan UPDATE" *) output update_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 m_bscan CAPTURE" *) output capture_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 m_bscan RUNTEST" *) output runtest_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 m_bscan RESET" *) output reset_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 m_bscan BSCANID_EN" *) output bscanid_en_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 m_bscan TDO" *) input tdo_i;

  wire bscanid_en_i;
  wire bscanid_en_o;
  wire capture_i;
  wire capture_o;
  wire drck_i;
  wire drck_o;
  wire reset_i;
  wire reset_o;
  wire runtest_i;
  wire runtest_o;
  wire sel_i;
  wire sel_o;
  wire shift_i;
  wire shift_o;
  wire tck_i;
  wire tck_o;
  wire tdi_i;
  wire tdi_o;
  wire tdo_i;
  wire tdo_o;
  wire tms_i;
  wire tms_o;
  wire update_i;
  wire update_o;
  wire [31:0]NLW_inst_bscanid_o_UNCONNECTED;

  (* C_EN_BSCANID_VEC = "0" *) 
  (* DONT_TOUCH *) 
  (* KEEP_HIERARCHY = "soft" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_lut_buffer_v2_0_0_lut_buffer inst
       (.bscanid_en_i(bscanid_en_i),
        .bscanid_en_o(bscanid_en_o),
        .bscanid_i({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .bscanid_o(NLW_inst_bscanid_o_UNCONNECTED[31:0]),
        .capture_i(capture_i),
        .capture_o(capture_o),
        .drck_i(drck_i),
        .drck_o(drck_o),
        .reset_i(reset_i),
        .reset_o(reset_o),
        .runtest_i(runtest_i),
        .runtest_o(runtest_o),
        .sel_i(sel_i),
        .sel_o(sel_o),
        .shift_i(shift_i),
        .shift_o(shift_o),
        .tck_i(tck_i),
        .tck_o(tck_o),
        .tdi_i(tdi_i),
        .tdi_o(tdi_o),
        .tdo_i(tdo_i),
        .tdo_o(tdo_o),
        .tms_i(tms_i),
        .tms_o(tms_o),
        .update_i(update_i),
        .update_o(update_o));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2020.2.2"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
iBeW7PM0CRC32/PyaKTBD9Nb0GPn2dO8QQ+68whDedex6Tkqy1bXAtryMKhWbVZUWGI5eWkyDD8M
bfQtTjrBEA==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
A9KVnSCrCvLRLr0Se2FJtfQX5CPCiLNIQnQhCE6S1QrzrlPjPv5f1wSDeP+EiZhguCzjDjecKLGv
KkWdDTZhvh9sL7nh1zgFQuAbTsIaJ7ERumn720pG3jniQD1YFs1ecmX/oPD6hKD/9hL2/7Dd7Tz/
pePYpUwQoVKSeofL/cM=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
xyBmV0GBf2ASdUV/+GxfzBpk2JvBHVowerB1n3ZQ6fpMzPszvUCBejxmazFb4QCqaUjmf7WQl8PT
bbYPknTErkwfjphY04MVSBEQOAUponVa3PO18PMDk2zLpf9rfagSmjVxEHJ4FXWjtbrDVJXZj7Dw
lcos3ClgivkmtVV3H3XAod5/GuJzgbc8NGBfM0L7+ow22NkhO6YshPIHKb1K1o6FYFuK3ukxv+Wc
OexbPjFhvmGY7GwvxGukApLDBLz6JI33/mIN4aDypVmOINDVrYagQaIoQYVdHx6+RMP6teI9XxvC
mz4MFe1hOjOAw856/fXlj1dlj2Bae/XskEjDOQ==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
E+GxFs1kbdksQPNIji9YEf35HGIY1GCV5VtnaOccppvHj4qb9Dr1ylQTBxXyRWgbykeyjlzr4IVl
WR6jM7NAXUvK9jUli4xhNjhj12RdUYiSH6ff1gmvROIj9KugfWIF+a5tnTPj3AQ28r9VW8ybBg4S
GLXYi7D2Z1Y7zqr1nq/ldIbYVz9ePfv9wk5cntfUNXM35aWKVmEebPypflL+UyLuzw6tGhLLXiSz
sHSc9fSZeopeFDekPkzAwQ4d95d9RjJ+aJhIXlUAdGUyvc4RU2QC3BzFdjTIC2S4pDus19bqnzJl
/A72P25hKzTRhfcNxKRVvPGwRdhZvslLa/SS7w==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
ls1ZkRyWGc+Pzhpg0KfvsabLXepB6qnXmCSudjWzd/oapNCHimurUyk/zABbzkaCOBQsXtXV3H9M
qPCPlG18VWTK0U+2jkek/O2Fn1+l3dpb19Rl7WXU7T309TdbtVsKuYg1vS0d5ujlvjHeNikK4gLK
gqVu3jEi6c11KaB/pUg=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
CODAimzI5Z988nDD3GlIWLB4ndv3+NxL+fDUFT3MDQAaSzhhz+YTR06tkl5xLF+kVvKcIXFi/UP4
JnMNUC/gjJ6kS4Ox8F+O/4vcNQpNcMYo3kWPxRcryG56ZEEvuhMZFB7n5LPbULlyIu252UyCmcee
Pbb8ywBqg+O+No1bwl3Yp+KFv16n05uCWFUHVLaddgXmBkp0k8H+Gh8z5hOJpsb7MSkP9PU6+xdj
vAe3wL8CLqUOb+hMZtENCO0PxycsYyLhVzxNB6Bh9cofoBJHYWK06MwQ6+1meobnPSSvjhfPknrN
hYBBsdQ+gzN1I42eOrTsxxDBRf451CrS8CFIEg==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
A3jEr8N50Kl51Yn2AFlFvEoPY4veINfpmQ35aaFx4swYec4XLYgaQntG3teMCUKZDULdNmSy3oEf
p/IQYgnPXo73KjuVqqyxK9Zh7dRwYlWhoQHoPkBd1VY1FBBXlY5jHpOFpx7JHpF/cwQ0vyDeHcOS
rQYpYeupk1HQwDSfbtsfkGXy/PBLZs8jRQzm0l9bodncAQio6WX3jDu/V5JsDB2OrHTZtv9RqYCT
Aou/2x78p19vkpT45ppoFeenjREGtevtYfX1Gqd6EUwfYYx3hybJ55rWsQSrQR1aIMmag+jXjb68
JHuzfRPa0gKKuAMK9PO0VUr5a72EivIkM30elA==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
TWebfsxvxY0p0s2EfSaBLU/jTcaHWH1r3gWDB/9bXtjErwzHe8HkJBHlLptM7l7Glx6qRmbjaD9b
vPQvYw14hiLzsZ500IMzZdN/wL56CI/z1Y654YPSZD79bTcMjxI6XfN/fUeO78MDtGpZEzDcYyxJ
+gD3qanEUCLVY7Y6ZooZVxCzGX1tYWYdzUkqRBI4H+lNW7P0142nZp2cpO7jzb8YsN50Ik4kkWYS
4eYNDyDSj1gH3/YYdM3G8MIertW85AHPvgBL1KSGBhTC0eTintuPynDIx5f70+K6JObdWA9bbLjq
Fv9hUkvsW48S9rD3gJcpW6F0cKUiwbVaqgzprA==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2020_08", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
T5KR4C+HnneOJroYzBjywZaqWPZZDtvy0gEi4l0xhrOC4NByRF1DuMA8c2PCrZLIUd6VBxp0f3Az
hWhNvXhHBpsdXXxmNHvs5GpBEWT+N7XTkpQRNtsZsQg4vs+vm6D0BIF8/NTZZShVLlm5uvlkHmTg
YZBvKlWYMo9I/cRSUEi2LRKEXoLZmb0tT3q3oNu3x2VDOpSxsaKIwpbWb2MmzPp55hrPhcr+5jpQ
dMOrwpe1zbtxDsYpDTliXXjpLadKTCzWysmvYGn9E7Xuu+UpXv/efUna8VEnGXktJIJPG5UuDFX5
9txZSbUPkE9ArhCeBkyu/TcTAM3VeC7zXSo1Qg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 2960)
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
