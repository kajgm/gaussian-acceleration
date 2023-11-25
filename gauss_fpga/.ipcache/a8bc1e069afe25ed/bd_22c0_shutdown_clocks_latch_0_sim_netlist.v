// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2.2 (lin64) Build 3118627 Tue Feb  9 05:13:49 MST 2021
// Date        : Wed Nov 22 16:40:36 2023
// Host        : ensc-mmc-14 running 64-bit Ubuntu 18.04.6 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ bd_22c0_shutdown_clocks_latch_0_sim_netlist.v
// Design      : bd_22c0_shutdown_clocks_latch_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcu50-fsvh2104-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "bd_22c0_shutdown_clocks_latch_0,c_shift_ram_v12_0_14,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_shift_ram_v12_0_14,Vivado 2020.2.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (D,
    CLK,
    CE,
    Q);
  (* x_interface_info = "xilinx.com:signal:data:1.0 d_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME d_intf, LAYERED_METADATA undef" *) input [0:0]D;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF q_intf:sinit_intf:sset_intf:d_intf:a_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0, CLK_DOMAIN cd_ctrl_00, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:clockenable:1.0 ce_intf CE" *) (* x_interface_parameter = "XIL_INTERFACENAME ce_intf, POLARITY ACTIVE_HIGH" *) input CE;
  (* x_interface_info = "xilinx.com:signal:data:1.0 q_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME q_intf, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value data} bitwidth {attribs {resolve_type generated dependency data_bitwidth format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} DATA_WIDTH 1}" *) output [0:0]Q;

  wire CE;
  wire CLK;
  wire [0:0]D;
  wire [0:0]Q;

  (* C_AINIT_VAL = "0" *) 
  (* C_HAS_CE = "1" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_SYNC_ENABLE = "0" *) 
  (* C_SYNC_PRIORITY = "1" *) 
  (* C_WIDTH = "1" *) 
  (* c_addr_width = "4" *) 
  (* c_default_data = "0" *) 
  (* c_depth = "1" *) 
  (* c_elaboration_dir = "./" *) 
  (* c_has_a = "0" *) 
  (* c_mem_init_file = "no_coe_file_loaded" *) 
  (* c_opt_goal = "0" *) 
  (* c_parser_type = "0" *) 
  (* c_read_mif = "0" *) 
  (* c_reg_last_bit = "1" *) 
  (* c_shift_type = "0" *) 
  (* c_verbosity = "0" *) 
  (* c_xdevicefamily = "virtexuplusHBM" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_shift_ram_v12_0_14 U0
       (.A({1'b0,1'b0,1'b0,1'b0}),
        .CE(CE),
        .CLK(CLK),
        .D(D),
        .Q(Q),
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
MOlMHZaM1pcCc4BOYyxYOVw6InkwyNT5VuM82d/EcwLVlkzbYi7Wl5xwRx60g1X3buXyUH2ZyPVi
FoC2RFZa3g==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
ELunz9khxuxfRrZWyJxPBhChcjeOMxFmuUVVVog4VKfchk/ODFfu21dreD4lF13cEyDSqY6JC/Lq
hiVuLhChLHn6SxcrDyQ7ED916X4i0l3Hglx/gdeihjGAdZeXC6ml41+n8dmK9LJhMrKbnGVEkgvq
1pFeIHmWXoaCU0UO10w=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
OucsAj0KdW3pqb5JbsYYZEM1gdQUPsIR6Q7VbCAMo7XWpcGQhNE5BwPo3opVHoyqzk/3XqG/tvgu
YEiZiBEhoxqOn90YiwnbZ8ZxgnGUOLjOezGYGxo5BVtMyS6e5424RHjupVm49wl50birdMp/TDkR
u6JoZ5xAEPe1fLB5YeBrcXG+8V4ScI9EJAqrv1CrwsvTALIT4/ULsR+jd7O7oNicq7licz6WilSL
tZr4PgwwIo8Zw1kDqutBsLizipVazIRjTC7xa1bE1VsyZHM6008H2W3SA29UhmqnYaQyhKdTJTmU
tIHZk0mYqOVmUTOsbe5Mba7DbEQudmoLl9MVjg==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
ulwNu8GiIz9RmFQUQMZ4DbtJcjo80K6gJPfEK4OeVmR5HcAE0QuPgEeLVB3YCsZO5d38JtWyf1WX
gDyBZq4U3lbpALejDwPnv6XJivcyib/X1PabgU4WPCgHvDtnzQHt2dkuWK7M8Dimpd/J63Qc16xP
fdy1/Wj+K327cO+hZZwl7JuUKXwVHZyAdKFrFk0rSEb9N6Qqh/Au97btH7MuFdd2koASQC45qlRu
idcqLtZybRjo1Tattzx/NfIVMS421BdCK/JFgMbza3++OQ6KBrUD2CgK/i+mkuVHtpGq0iyyfz8i
i/w7hdGfR/aPo2W5Zb9+FW3xWNOOOj65Pl3UaQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
Ra/FsS6S8TXN/iUonjtUS53AG+IZ4FBWkh3lTctP3jjFXupyFrTlJ2OmNWWf3QbriLp8bBTAJwgj
0qtwsPp+5tOVDFwudjd7b3yKgKoX7BPkzjXbwO3IV9iLtvdiGwHVoGKCzttCcGGKfyI+4va0/IUw
gkEba9+2MwqY8WXJRu0=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
TOfCvGguJYmC9BJVO6igB5jC8CPc+NlIsKmud5EkvmYGMMjCo+RhZuImRK3PJiV+ASlgchn1xQkD
bGNOb+EddTls1mVBtLybkuDUxWEbfrvSIBRR3OBerfCQpZw6DT0zYgD4nrmb+kNeycJLbAqSYgHC
hvr3BqQapgZp12gbtd721gH8pXiNjhm4Kw5xUoqGFXtslsfgITKdgYwAyIzDHVxVGX/lO01v2X+H
HmzfRm3CofKxgO5eDN8HX5LnL436Yn9zw+uC4903C6r1FZjQmc44rouNqdNpm8gQpGBh2T2ZeL0g
XR8hi9a2q/OBGSrSMgzZSRNJi+SiqB4wIhz1Gw==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
q1t8gqcCSSl+t3lNAH5ZULE+WSB/olIDeAkHFSvXeY2MUcwEw7r2pgkdvjYmRLWMRS4GzG/cAIjF
SshNpIZ6InDjvXHqHJDBi25/n9SwaUH1962Vp+OaWCA7D6ykSARUpIOOy7gw5ug82loG6YbccCZU
nN1n8VJnUNwI4PAwh0+A5K6/Fk27pJgsMUytnHgqZxlclz+6XjqY6lYkzs1aEq1e/p/NF8mQg3ze
Bo5S9NwpRLZmyjCLT4Wqc21D5n2BWyzGrLlc9Y19E9lWam9DZHeaiMl3KqU4//qObGhu9UA6Tfqv
0LdND1rcSpivszvhDSOHQ5i/Iy1fRmOaUTnu/A==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2020_08", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
dq3HVNRzb5qhfC1Pbx8Bn2DxWZMwc5K9YnPLrb9FXWIMB1DPPsEdxm4pl2w7HXpSuZU+ouMrXteo
vSr9wU28QRyQPWv/RTi2Cj+v+8GA7soR/Tpns6k/h0O93nUah8iBhnYWXT8EnR7CJmZgJaqAMzja
c1FeelSVGhinIJqpfcsmmjpwt8I+2qSBdN8SzAwgLdlm2vL7UYIUdexNCQENd+GWKNYuUxE4fPKg
X8Jld9Zj4MsgOAWLCfdeHRxmyG4R23j+eINChOJIoM/axqbA8k+j+tONDQXZJX+e8gQ524sCf+lT
xiH0weQgl+SjYbDijPDKzdmGaw5/t8lS+usRKg==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
kTYnwH9Qp06BkoHgI//vRKklnObB+92JR/6AZcqYHLOEeQSBJpOead0GhLIV56tzZlbYGW+lwyzm
/xTjX7JGiv/nCkhniLo10YkjhcKP7GwtG0QlzCqxdtT9LlNkSI3RCf546X3PyRQkbx3zi4OPGxJ7
2EETwW3GhWCBhKDEqZ5FSsI6NbfFhFjnODtBFpLD+nqnoSatVASlDAy4PoxfIx6ysKFVrcBg5FDa
r6zqwlBt4CPs5suQxm7ig2eBMABDFnHTyM4lpI1fwSdoybFsqiBzfCtuIy2F2gMOQbzGp1v4G6iT
W/iS8rmSS+sdv0x7k7wBPqkCWuWRjwXQRpCiuA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 2112)
`pragma protect data_block
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
TGRv
`pragma protect end_protected
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2020.2.2"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
HAH/dU9L2R+9CUrC5/cLraCG9uoYsFzeqQYLdvTmEGXQqJQviY6JWU75V9qRuvIVx33+/cgYHWNx
NBW2+944UQ==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
euED63LIQtdFKlR2VxNn1hPheXkri4GYkJvpI6E2g/OuWuyux8p8ut2vT/wjo3WnnuvbUKPJbAUz
V5zHIR69Y+yqU/kdbG6i3Rui7i+CzHdhjHiBSLOBbohj7C95+wEW/qURQIT+0Dy8+sjfG+rGe+i4
qIlKArsm6U+GKjfse0U=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
HvgcSE0ijeXf8dEABd/DaeoB5/H7tLKPLiHBqtj8SxBEOHtieLCoFsVcaLXZ6xotvy+y0dKsDqoD
OW45Qt4gITNp4k7OCQL0jT7xENGOl68knlcvLSAecfUc7ilvvgjfm4seny5rBRI5BvVki0Pb2ums
FVsWXS808YYFvxWcsg8aHPAJkHvPP92e5npK30K3Y+BNNCOhcKgXE+EZaldhi3NyKEwQTWqA/Tmh
zI1a9p8jLrX9Doqj6pNOaOaAPjhvkVPgwBuFuq96Bj38wi+I7G0FGg1n8HplAgLgyBjyb1JKV+63
688+oO1eei25r9qAS+d9WHn6eLFL5uvU1mwDrA==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
ZCveN4g2x2kvkQX+bFSgwCpWTAYoKy5okOFSPDCVJaWBbCAAH10dYAWriCpW7Myl1Se85t5TWLVO
1x05kxEGgMt/k32Xdui0WPzOJJUI+CnAsphKP5ltR09mxZi/mQ8Iqlrg9ZZDIgjCWmjXJwGBImUQ
yQwtAqfTC/ZVchUeAL7qAKefbjtoEMhAMQRfqxVrv/N89aW/J+qvuFOey3buc0W5GVXBYX/cUIYF
0jlz3MvkRq79oS6/TsVB+jTgaKI7hYsn0Xyn73RZpK+Z0Ujjm6R1bB3HxaC0FoIk0wDowaZcoPJo
cJnUZ/sFzg72JToP1Cema+nhWewM2pbk1ptDMw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
eTNLqGVgydBJhiL95t5XN8HG+2nmv15kFMaMndRaFGcAS2x6afG/xQzCw6VDQ63A3oRrgnmYD59O
kbkdW2OQAlZ0hwE1Xgzft9dqNozLZtqamxzklgdZ8Jrc+mXgOOa2uDKDa5UV6rkZKkatvVit8pRB
GXpmLIhhYUABC5dcSCE=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
AqZsUHQYQzVCkq55eWqT5WaCxfnzidNE9UIwjSz9lzLOCIxMGubueTznBOXwpBipQif2IJCWIDUs
gOOO3Z7pNhs/vtgTxf6t7Mz1TZC8IdCdPcGLsFeSHU5MtH4yYPI9pCdxspoLUQKVkjL/SND38QzZ
ygAmtZOTb5wlm2YlYtsiZd5HisNaU7V1X6hKQFcGBM11Alj7FVuC9o4kwOgVHLm7IekW70Kz4NPm
0yKLpu4dly9NyCyvPVMTVrCee2uQPk4avpVqqy4GxeIOFjqINmGb8IAcRZqQQBR+R83Joe2mrYYB
p5xTN9X2bKbGfT2paRN0/JHWj85YxV8QjyIQAg==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
RVP7y/doPZolLlA9AMzFzGuahDDH0o12YIz+ykoZ86kcxJ5krdLZqcypeeiTxE/xNkOgRxMAUppG
5Unk0WJxOS9fSoJrflu5qsNHppU07QfCOGF5WoYh5sPpoUBQpWHqrsQfj73lFHQog3S2wld4IuC6
jzOCU0XT4DAXZfOIhWswrWdUw2bM1JGHwlPSg3JZYOizm3NKiQGIcpC7R6J9Be4hMJIG2UAy2KhL
D2688iLu/CIMFzljlqV+sstTqHSfunnwT0sIBMfTnHvU53g4Mo/ngLB07YujORQZAMZiqJ/OqV+B
EU3UcWrYmjGFvlsAmjAlsCaES2rdhau1MLAIKw==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2020_08", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Mc1/Z/vy7Fq0d6wPjsiRyK8TyD0URNJywDmgSR48iLVnc/XrOW7OrMxaft2sHrbChXhmuh67wl6z
6MU35evMFEFcOvcadmzXqm+t1t3o+aH8ZsQBdulmq1lJf2USzlPzuZaUiT6LwoCP+5DZFIDB+bwg
GdGhOgWHTzz790lMd782DCFPUpp8M6Nl60PIQVZfTrj6ZK0KTHSE3f+JmxTN41YnftFlmAUf4gGx
Blhtj2J2jjfPulL7w9kIDB8Efp5+h7GU3r8wPzBUERgkGE3IylWPRefxTH7HmmslmPD7OtBW55oI
ffEuz0F1zmMEmJit41xqOwvw40XhZR2bEoYejg==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Ioc4HSnA0rc251eEbXobIo4BVN3kfg2vBXqnHBHp5FV/PQ4q+QLvFzOd4AJpAg/4qrztgCQeRz2e
9iuHH8C/DmVBpczY9NYDMLwb8DCYcvEsRYa4MGlKGUizHGBLoEUvUBYdLDyvTrLWaDigck9za6oX
wLZ05O/RHXJq4bKE41BtSOPjdyY4FxXNTo+sWDmGID7hMmv7eHFzRXjjWDsqfmxL4ssgAxamp75s
ocsJ5fDMFBzt1LKVn7IZDatG86pBHLe5jo6WcyDdliFDmK/1ZKCU/JMJKFOmZCM73N/A9Njd1gPP
6aqLhhx/rfeYtsyCAll5KR822NhMbyKAr+kdkg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
PqT22D/34u7rrO6LOU0njv3dVI63VT6IRAkuvoIbON5THq13WpTL4Fpwt/aXctOHtF9JICnWVw2n
JCl+8RpmQJeUgzSfK6l+djjmAtQciODxfV1ye9kaseb4XxjTXlJjJmw758CYsWigAdt3bKr1C1Lt
aEeJDfgwV6zuM7TWOX1lvanzBNLndxPsqNQvJvTb9FMfi2oPhAQFI4tw4fg5Hr7iEzwCOpzA26zK
n8prTlaZi5qVbV67EDire1hq7IManUGjx3sYOVUPIUlb7JnRfho17Iyp5D+V0jFcsPEIYSH8cbZZ
c0F41ck0uyxl/z89wJpw52+NbB8XWtxsJ+A+3w==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
fvLHbtM+OcVN2B+gOSvlU+rCYMure2ZT2C9BhQu9HZ1+38KyiF/A/FwbiyYH8vxy4gt9sBbKzH5f
EKgSS5SQbTOEZrtpn5AeXqxW7dVdtp6XR88+5Xyyq5P0uIVLYHO98aKZt/y1ywn3R8kMHup6lEFV
Hxv1oE3teg5uGpHwCzr8rgjNYv64eQ4WJrRqeU/5yNwWv+5C6VfCoyZd5R99+AQPF2ra2ne7GQck
6WOrAWxFWskWVg9MWO3Y4ZyZ7xOKuueof6ZM1d6S1mQqD1zzzfubw4jTpVf8gHqWFY3H+wSmtnYK
BOIRASriQuWEnziHsOrLqUuRM7IEeidTIpVv6g==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 4704)
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
