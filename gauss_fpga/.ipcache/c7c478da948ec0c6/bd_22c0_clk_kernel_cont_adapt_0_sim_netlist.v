// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2.2 (lin64) Build 3118627 Tue Feb  9 05:13:49 MST 2021
// Date        : Wed Nov 22 16:45:51 2023
// Host        : ensc-mmc-14 running 64-bit Ubuntu 18.04.6 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ bd_22c0_clk_kernel_cont_adapt_0_sim_netlist.v
// Design      : bd_22c0_clk_kernel_cont_adapt_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcu50-fsvh2104-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "bd_22c0_clk_kernel_cont_adapt_0,clk_metadata_adapter_v1_0_0,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "clk_metadata_adapter_v1_0_0,Vivado 2020.2.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clk_in,
    clk_out);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLOCK_IN CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLOCK_IN, FREQ_HZ 300000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN bd_22c0_clkwiz_kernel_0_clk_out1_buf, INSERT_VIP 0" *) input clk_in;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLOCK_OUT CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLOCK_OUT, FREQ_HZ 300000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN cd_kernel_00, INSERT_VIP 0" *) output clk_out;

  wire clk_in;
  wire clk_out;

  (* KEEP_HIERARCHY = "soft" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_clk_metadata_adapter_v1_0_0 inst
       (.clk_in(clk_in),
        .clk_out(clk_out));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2019.1"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
AyywBWU3I0zQc5RgrR3iChpKXBvMdAMA27xhh+MGe6Mh5tRmo/57cgaVWWooa4q9CmpFKczA4/mG
svfrQJgEag==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
FXgvu/Ju/3y2Q8ovtwzDK3JsyWtVUt3PS668MtsIey+72PF+sW5ddRCoSHKKZb3YYaeTtGJYWm66
NtQPyIZdVZmJdMRBGkOTpSNSqxRhcbJpqtnDUs/ZmUY0cZYoGc6VvoxUM/c199/gpwt6OTanzcMJ
JiaciI7dnneQqC/bSTk=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
GYQmBI722qMjJWUzYrBkDSBJhMhoaNc/1lNtZDSH1la2aFsVzEip7QfQ4GLAWt4g5J1o6aLpwKWk
OI4rbDRp+A4f/zX753kPU5uT4121eCks8u8EIJmTZuanOBB5qyrkziVfnRNg1HpF2VJ9+YgJFwWf
qTIOkF6KiGuG3Un8OwqYx8nPvhjcPJthdhZn6L9Ww7S2lrAPeAV+MeAaCIumHosVsbwy6lvw9OUf
kEJz34ZYPagX4pdtjixCAPMZ2xN3mwr97aGqQSb3zo1S2uCs8A0m1IVst3rQIrdbTjD10gTrXqJW
u98o3qQb2Xfn8rhAsMAVkCDsLcu0RSAgsmtoKg==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
awZfD5sS6wXogZPJl5LHPZMttRTvu8nUMSmLLkxFMx3Pc2BW5ubYrL1e1lHRYYyHwXrqOZXlJFev
nA51AmrJqjQpqEqAv0jCBzGTyb3DZiPSJbK+dsjQSotZDmSH2lTQ+tSvvZ+lgmq7K/A/nfG5BiRe
7POKFw6/G+vqhDlGCRzKfdGbAEsBPq+2wdcombJa5Fd159RS8aJM7uhZgHCt7osCOALOhv5tlnqJ
krA+hOF0yevtXcsi5NKx4fIjm/ykCrrsrh1k36z0GjQwQxybZBwGhp1E9rsxFfKI1brBxsakKV8f
WZTrLzVQhPkRNWx3/46Zz/zDZfxcSWBVV2ZMug==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2019_02", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
VXQasTBG9shgYH2gH0qz0Yc+uw3zU3aSd/WGie0aEDWNUmEJFYhlvljQQBuevhEBTvcDHWmsZ1yo
SnMX+FBcYz1201CnVxpSemXo1p65r6Mhr5XptqSQiamZ7jSXaGoEYcVn0Wj0f/UmzoL2I1w5QzWS
dpGU1uXvPvv7IO/gdvuXIzvPwQtc9S0v+ktmQetDwXmh3y40DI+jKCmOZQFN8uoGk+2mHPzzoMMv
JyV0P40BdVP3qp2lSJyzhOuzWtkXpW82ge3jFqv7WBuODu2IBH/TMhdGn0IKNJq9FWEzgPe9gLiE
0kpVCipgqMCQUBWkMkOMZXudWiFCdNYX1I2trA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
dTdpoe4SogJMN3GFRUyEh1d9OlwzQuE/wDpqK0CQnna7vbUCR4o5fxs7KD7rBoclsLHNb2wXo+2l
VwSBLpJBIG7gA2VyUOyqdyDUTZ1cGMBAr5wFYRAd5opbpFWrS0TG4FE0WFxvCU7NS3bblfiwX1Z8
5ibWdlaIZbWjyxjuZgo=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
fKynujfRgwcb62ZQvbXCI63ZrNRBekYnDwE0bn1UnQAQHczPaMhOm45bfdZRZiyHMIWSwQjOuSFb
ocDGcz2FhWVtLjBMk2OlSj2qyscl2bbXnzoeHspbhDe0dYxh8fn/9n6onEExTRKXgYuYI37vGpvo
MIlut7iL5VIC6zoxLdtrZZaWJRfguQplAmuAUsv3p39VxHELD4v3j+6vv/i4N6q+gVR4KOMyddQC
ggiotsFObvd3KY6pfb4i7wSgj8TplT3uDv65Xkvk2NPKTygHU9mlZvDRtKxDvsCL7/1UOIjgVvua
6bZNJojrE7+sFVbgF0cvfm7vL/Cwgzax/GmIkA==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
EgTCocaIITNNFz8bK/lPvfNuRE7Y4kxq+HC0/PBrEd8vD8od3ahyOKr0g4zaX7iRXbFffAtXUUlO
rtfukr4iiQfztiWn0+EygKAzO4+oVsYHZNUlOOeq3dBxWVWELwV7PdN6TX3QR5gmddGLhw4puD8W
ah2bsZPnh0GElbFC9w4teR4HMDRw6ACP6Z4MlM/QrzXA33UDI/OtlgMIxQqlSTqdKmR2Y1UiOhCJ
v6yXAN7UO+HgFQ7BuHYPMjiUaL1FL3t1Qgmkigtey2pQ/X5TriXL69Z0oLik1xjibdf5pxjv1RqL
O0fjv08eGYZ2aRymOkJo3llorgODGMsxG6erKg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 288)
`pragma protect data_block
QapVok7s/GCXIta5lmb2M8D6mXk21Oq2pa5mItcxSmMdHMNwPSbneYMBy7UUbMwypoGmRFMjU//D
CTt7H7JYdOS/CYvXG0vDh8k0dIXFH5lEkCbWUPyaM+OJ+gZGluyKyahVFbMYvoEPKaadJTk0I6Ar
8+y8Islqmqm2WTFhz75RFnB51D7b1rrpytlKkAyt6hsOtMlJnC90wLaMQP5ZzO+CMViFURbsHeN/
lqGriRbJd7ntQi2FkrZrSkgHQNc7fAAh3hJTGFQDYOwgUh5dBfP4jZr38k4slYPfi9QHiZpLUnR+
w42xHROPKAFIBMRiXdYSAMXcofwN2rrR/DBjzKLjcdQJkVSd2aDmJ4XgwEsl+oyW9Dnef34El0wa
RmxT
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
