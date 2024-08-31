// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Wed Aug 23 01:09:17 2023
// Host        : Dell-G5 running 64-bit major release  (build 9200)
// Command     : write_verilog -force SPI_Wrapper_netlist_gray.v
// Design      : SPI_Wrapper
// Purpose     : This is a Verilog netlist of the current design or from a specific cell of the design. The output is an
//               IEEE 1364-2001 compliant Verilog HDL file that contains netlist information obtained from the input
//               design files.
// Device      : xc7a35ticpg236-1L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module RAM
   (SR,
    tx_valid_RAM_out,
    MISO_reg,
    CLK,
    \rx_data_reg[9] ,
    \rx_data_reg[8] ,
    Q,
    rst_n_IBUF,
    \rx_data_reg[8]_0 ,
    \counter_ps_reg[2] ,
    \counter_ps_reg[1] ,
    \counter_ps_reg[0] ,
    E);
  output [0:0]SR;
  output tx_valid_RAM_out;
  output MISO_reg;
  input CLK;
  input \rx_data_reg[9] ;
  input \rx_data_reg[8] ;
  input [7:0]Q;
  input rst_n_IBUF;
  input \rx_data_reg[8]_0 ;
  input \counter_ps_reg[2] ;
  input \counter_ps_reg[1] ;
  input \counter_ps_reg[0] ;
  input [0:0]E;

  wire \<const0> ;
  wire \<const1> ;
  wire CLK;
  wire [0:0]E;
  wire MISO_i_4_n_0;
  wire MISO_i_5_n_0;
  wire MISO_reg;
  wire [7:0]Q;
  wire [0:0]SR;
  wire [7:0]address;
  wire \counter_ps_reg[0] ;
  wire \counter_ps_reg[1] ;
  wire \counter_ps_reg[2] ;
  wire rst_n_IBUF;
  wire \rx_data_reg[8] ;
  wire \rx_data_reg[8]_0 ;
  wire \rx_data_reg[9] ;
  wire [7:0]tx_data_RAM_out;
  wire tx_valid_RAM_out;

  LUT1 #(
    .INIT(2'h1)) 
    \FSM_onehot_cs[4]_i_1 
       (.I0(rst_n_IBUF),
        .O(SR));
  GND GND
       (.G(\<const0> ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    MISO_i_4
       (.I0(tx_data_RAM_out[3]),
        .I1(tx_data_RAM_out[2]),
        .I2(\counter_ps_reg[1] ),
        .I3(tx_data_RAM_out[1]),
        .I4(\counter_ps_reg[0] ),
        .I5(tx_data_RAM_out[0]),
        .O(MISO_i_4_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    MISO_i_5
       (.I0(tx_data_RAM_out[7]),
        .I1(tx_data_RAM_out[6]),
        .I2(\counter_ps_reg[1] ),
        .I3(tx_data_RAM_out[5]),
        .I4(\counter_ps_reg[0] ),
        .I5(tx_data_RAM_out[4]),
        .O(MISO_i_5_n_0));
  MUXF7 MISO_reg_i_3
       (.I0(MISO_i_4_n_0),
        .I1(MISO_i_5_n_0),
        .O(MISO_reg),
        .S(\counter_ps_reg[2] ));
  VCC VCC
       (.P(\<const1> ));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[0] 
       (.C(CLK),
        .CE(E),
        .D(Q[0]),
        .Q(address[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[1] 
       (.C(CLK),
        .CE(E),
        .D(Q[1]),
        .Q(address[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[2] 
       (.C(CLK),
        .CE(E),
        .D(Q[2]),
        .Q(address[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[3] 
       (.C(CLK),
        .CE(E),
        .D(Q[3]),
        .Q(address[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[4] 
       (.C(CLK),
        .CE(E),
        .D(Q[4]),
        .Q(address[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[5] 
       (.C(CLK),
        .CE(E),
        .D(Q[5]),
        .Q(address[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[6] 
       (.C(CLK),
        .CE(E),
        .D(Q[6]),
        .Q(address[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[7] 
       (.C(CLK),
        .CE(E),
        .D(Q[7]),
        .Q(address[7]),
        .R(SR));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "2048" *) 
  (* RTL_RAM_NAME = "Async_RAM/mem" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "1023" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "7" *) 
  RAMB18E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .INIT_FILE("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(18),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(18)) 
    mem_reg
       (.ADDRARDADDR({\<const1> ,\<const1> ,address,\<const1> ,\<const1> ,\<const1> ,\<const1> }),
        .ADDRBWRADDR({\<const1> ,\<const1> ,address,\<const1> ,\<const1> ,\<const1> ,\<const1> }),
        .CLKARDCLK(CLK),
        .CLKBWRCLK(CLK),
        .DIADI({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,Q}),
        .DIBDI({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> }),
        .DIPADIP({\<const0> ,\<const0> }),
        .DIPBDIP({\<const0> ,\<const0> }),
        .DOBDO(tx_data_RAM_out),
        .ENARDEN(\rx_data_reg[9] ),
        .ENBWREN(\rx_data_reg[8] ),
        .REGCEAREGCE(\<const0> ),
        .REGCEB(\<const0> ),
        .RSTRAMARSTRAM(\<const0> ),
        .RSTRAMB(SR),
        .RSTREGARSTREG(\<const0> ),
        .RSTREGB(\<const0> ),
        .WEA({rst_n_IBUF,rst_n_IBUF}),
        .WEBWE({\<const0> ,\<const0> ,\<const0> ,\<const0> }));
  FDRE #(
    .INIT(1'b0)) 
    tx_valid_reg
       (.C(CLK),
        .CE(\<const1> ),
        .D(\rx_data_reg[8]_0 ),
        .Q(tx_valid_RAM_out),
        .R(SR));
endmodule

module SPI
   (MISO_OBUF,
    \counter_ps_reg[2]_0 ,
    \counter_ps_reg[2]_1 ,
    \counter_ps_reg[2]_2 ,
    mem_reg,
    Q,
    mem_reg_0,
    E,
    tx_valid_reg,
    \counter_ps_reg[2]_3 ,
    CLK,
    tx_valid_RAM_out,
    SS_n_IBUF,
    MOSI_IBUF,
    rst_n_IBUF,
    SR);
  output MISO_OBUF;
  output \counter_ps_reg[2]_0 ;
  output \counter_ps_reg[2]_1 ;
  output \counter_ps_reg[2]_2 ;
  output mem_reg;
  output [7:0]Q;
  output mem_reg_0;
  output [0:0]E;
  output tx_valid_reg;
  input \counter_ps_reg[2]_3 ;
  input CLK;
  input tx_valid_RAM_out;
  input SS_n_IBUF;
  input MOSI_IBUF;
  input rst_n_IBUF;
  input [0:0]SR;

  wire \<const0> ;
  wire \<const1> ;
  wire CLK;
  wire [0:0]E;
  wire \FSM_onehot_cs[0]_i_1_n_0 ;
  wire \FSM_onehot_cs[1]_i_1_n_0 ;
  wire \FSM_onehot_cs[2]_i_1_n_0 ;
  wire \FSM_onehot_cs[3]_i_1_n_0 ;
  wire \FSM_onehot_cs[4]_i_2_n_0 ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_cs_reg_n_0_[0] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_cs_reg_n_0_[1] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_cs_reg_n_0_[2] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_cs_reg_n_0_[3] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_cs_reg_n_0_[4] ;
  wire GND_2;
  wire MISO_OBUF;
  wire MISO_i_1_n_0;
  wire MISO_i_2_n_0;
  wire MOSI_IBUF;
  wire [7:0]Q;
  wire [0:0]SR;
  wire SS_n_IBUF;
  wire VCC_2;
  wire address_recieved;
  wire address_recieved_reg_i_1_n_0;
  wire address_recieved_reg_i_2_n_0;
  wire counter_ps;
  wire \counter_ps[0]_i_1_n_0 ;
  wire \counter_ps[1]_i_1_n_0 ;
  wire \counter_ps[2]_i_1_n_0 ;
  wire \counter_ps[2]_i_3_n_0 ;
  wire \counter_ps_reg[2]_0 ;
  wire \counter_ps_reg[2]_1 ;
  wire \counter_ps_reg[2]_2 ;
  wire \counter_ps_reg[2]_3 ;
  wire [3:0]counter_sp_reg__0;
  wire mem_reg;
  wire mem_reg_0;
  wire [3:0]p_0_in;
  wire rst_n_IBUF;
  wire \rx_data[9]_i_1_n_0 ;
  wire [9:8]rx_data_SPI_out;
  wire rx_valid_SPI_out;
  wire rx_valid_i_1_n_0;
  wire rx_valid_i_2_n_0;
  wire tx_valid_RAM_out;
  wire tx_valid_reg;

  LUT6 #(
    .INIT(64'hF0F0F0F0F0F0F0E0)) 
    \FSM_onehot_cs[0]_i_1 
       (.I0(\FSM_onehot_cs_reg_n_0_[3] ),
        .I1(\FSM_onehot_cs_reg_n_0_[1] ),
        .I2(SS_n_IBUF),
        .I3(\FSM_onehot_cs_reg_n_0_[0] ),
        .I4(\FSM_onehot_cs_reg_n_0_[4] ),
        .I5(\FSM_onehot_cs_reg_n_0_[2] ),
        .O(\FSM_onehot_cs[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_onehot_cs[1]_i_1 
       (.I0(\FSM_onehot_cs_reg_n_0_[0] ),
        .I1(SS_n_IBUF),
        .O(\FSM_onehot_cs[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00FF0080)) 
    \FSM_onehot_cs[2]_i_1 
       (.I0(address_recieved),
        .I1(MOSI_IBUF),
        .I2(\FSM_onehot_cs_reg_n_0_[1] ),
        .I3(SS_n_IBUF),
        .I4(\FSM_onehot_cs_reg_n_0_[2] ),
        .O(\FSM_onehot_cs[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00FF0040)) 
    \FSM_onehot_cs[3]_i_1 
       (.I0(address_recieved),
        .I1(MOSI_IBUF),
        .I2(\FSM_onehot_cs_reg_n_0_[1] ),
        .I3(SS_n_IBUF),
        .I4(\FSM_onehot_cs_reg_n_0_[3] ),
        .O(\FSM_onehot_cs[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0F04)) 
    \FSM_onehot_cs[4]_i_2 
       (.I0(MOSI_IBUF),
        .I1(\FSM_onehot_cs_reg_n_0_[1] ),
        .I2(SS_n_IBUF),
        .I3(\FSM_onehot_cs_reg_n_0_[4] ),
        .O(\FSM_onehot_cs[4]_i_2_n_0 ));
  (* FSM_ENCODED_STATES = "CHK_CMD:00010,READ_ADD:01000,WRITE:10000,READ_DATA:00100,IDLE:00001" *) 
  (* KEEP = "yes" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_cs_reg[0] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\FSM_onehot_cs[0]_i_1_n_0 ),
        .Q(\FSM_onehot_cs_reg_n_0_[0] ),
        .S(SR));
  (* FSM_ENCODED_STATES = "CHK_CMD:00010,READ_ADD:01000,WRITE:10000,READ_DATA:00100,IDLE:00001" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_cs_reg[1] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\FSM_onehot_cs[1]_i_1_n_0 ),
        .Q(\FSM_onehot_cs_reg_n_0_[1] ),
        .R(SR));
  (* FSM_ENCODED_STATES = "CHK_CMD:00010,READ_ADD:01000,WRITE:10000,READ_DATA:00100,IDLE:00001" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_cs_reg[2] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\FSM_onehot_cs[2]_i_1_n_0 ),
        .Q(\FSM_onehot_cs_reg_n_0_[2] ),
        .R(SR));
  (* FSM_ENCODED_STATES = "CHK_CMD:00010,READ_ADD:01000,WRITE:10000,READ_DATA:00100,IDLE:00001" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_cs_reg[3] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\FSM_onehot_cs[3]_i_1_n_0 ),
        .Q(\FSM_onehot_cs_reg_n_0_[3] ),
        .R(SR));
  (* FSM_ENCODED_STATES = "CHK_CMD:00010,READ_ADD:01000,WRITE:10000,READ_DATA:00100,IDLE:00001" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_cs_reg[4] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\FSM_onehot_cs[4]_i_2_n_0 ),
        .Q(\FSM_onehot_cs_reg_n_0_[4] ),
        .R(SR));
  GND GND
       (.G(\<const0> ));
  GND GND_1
       (.G(GND_2));
  LUT2 #(
    .INIT(4'hB)) 
    MISO_i_1
       (.I0(SS_n_IBUF),
        .I1(rst_n_IBUF),
        .O(MISO_i_1_n_0));
  LUT5 #(
    .INIT(32'h88800000)) 
    MISO_i_2
       (.I0(\FSM_onehot_cs_reg_n_0_[2] ),
        .I1(counter_sp_reg__0[3]),
        .I2(counter_sp_reg__0[1]),
        .I3(counter_sp_reg__0[2]),
        .I4(tx_valid_RAM_out),
        .O(MISO_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    MISO_reg
       (.C(CLK),
        .CE(MISO_i_2_n_0),
        .D(\counter_ps_reg[2]_3 ),
        .Q(MISO_OBUF),
        .R(MISO_i_1_n_0));
  VCC VCC
       (.P(\<const1> ));
  VCC VCC_1
       (.P(VCC_2));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \address[7]_i_1 
       (.I0(rx_valid_SPI_out),
        .I1(rx_data_SPI_out[8]),
        .O(E));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    address_recieved_reg
       (.CLR(GND_2),
        .D(address_recieved_reg_i_1_n_0),
        .G(address_recieved_reg_i_2_n_0),
        .GE(VCC_2),
        .Q(address_recieved));
  LUT2 #(
    .INIT(4'h8)) 
    address_recieved_reg_i_1
       (.I0(\FSM_onehot_cs_reg_n_0_[3] ),
        .I1(SS_n_IBUF),
        .O(address_recieved_reg_i_1_n_0));
  LUT4 #(
    .INIT(16'hAAA8)) 
    address_recieved_reg_i_2
       (.I0(SS_n_IBUF),
        .I1(\FSM_onehot_cs_reg_n_0_[4] ),
        .I2(\FSM_onehot_cs_reg_n_0_[2] ),
        .I3(\FSM_onehot_cs_reg_n_0_[3] ),
        .O(address_recieved_reg_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hFF6F)) 
    \counter_ps[0]_i_1 
       (.I0(\counter_ps_reg[2]_1 ),
        .I1(counter_ps),
        .I2(rst_n_IBUF),
        .I3(SS_n_IBUF),
        .O(\counter_ps[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFFFFA6FF)) 
    \counter_ps[1]_i_1 
       (.I0(\counter_ps_reg[2]_2 ),
        .I1(counter_ps),
        .I2(\counter_ps_reg[2]_1 ),
        .I3(rst_n_IBUF),
        .I4(SS_n_IBUF),
        .O(\counter_ps[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFAAA6FFFF)) 
    \counter_ps[2]_i_1 
       (.I0(\counter_ps_reg[2]_0 ),
        .I1(counter_ps),
        .I2(\counter_ps_reg[2]_1 ),
        .I3(\counter_ps_reg[2]_2 ),
        .I4(rst_n_IBUF),
        .I5(SS_n_IBUF),
        .O(\counter_ps[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2020202020202000)) 
    \counter_ps[2]_i_2 
       (.I0(\FSM_onehot_cs_reg_n_0_[2] ),
        .I1(\counter_ps[2]_i_3_n_0 ),
        .I2(tx_valid_RAM_out),
        .I3(\counter_ps_reg[2]_0 ),
        .I4(\counter_ps_reg[2]_1 ),
        .I5(\counter_ps_reg[2]_2 ),
        .O(counter_ps));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h57)) 
    \counter_ps[2]_i_3 
       (.I0(counter_sp_reg__0[3]),
        .I1(counter_sp_reg__0[1]),
        .I2(counter_sp_reg__0[2]),
        .O(\counter_ps[2]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_ps_reg[0] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\counter_ps[0]_i_1_n_0 ),
        .Q(\counter_ps_reg[2]_1 ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_ps_reg[1] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\counter_ps[1]_i_1_n_0 ),
        .Q(\counter_ps_reg[2]_2 ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_ps_reg[2] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\counter_ps[2]_i_1_n_0 ),
        .Q(\counter_ps_reg[2]_0 ),
        .R(\<const0> ));
  LUT1 #(
    .INIT(2'h1)) 
    \counter_sp[0]_i_1 
       (.I0(counter_sp_reg__0[0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \counter_sp[1]_i_1 
       (.I0(counter_sp_reg__0[0]),
        .I1(counter_sp_reg__0[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \counter_sp[2]_i_1 
       (.I0(counter_sp_reg__0[0]),
        .I1(counter_sp_reg__0[1]),
        .I2(counter_sp_reg__0[2]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \counter_sp[3]_i_1 
       (.I0(counter_sp_reg__0[1]),
        .I1(counter_sp_reg__0[0]),
        .I2(counter_sp_reg__0[2]),
        .I3(counter_sp_reg__0[3]),
        .O(p_0_in[3]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_sp_reg[0] 
       (.C(CLK),
        .CE(\rx_data[9]_i_1_n_0 ),
        .D(p_0_in[0]),
        .Q(counter_sp_reg__0[0]),
        .R(MISO_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_sp_reg[1] 
       (.C(CLK),
        .CE(\rx_data[9]_i_1_n_0 ),
        .D(p_0_in[1]),
        .Q(counter_sp_reg__0[1]),
        .R(MISO_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_sp_reg[2] 
       (.C(CLK),
        .CE(\rx_data[9]_i_1_n_0 ),
        .D(p_0_in[2]),
        .Q(counter_sp_reg__0[2]),
        .R(MISO_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_sp_reg[3] 
       (.C(CLK),
        .CE(\rx_data[9]_i_1_n_0 ),
        .D(p_0_in[3]),
        .Q(counter_sp_reg__0[3]),
        .R(MISO_i_1_n_0));
  LUT3 #(
    .INIT(8'h40)) 
    mem_reg_i_1
       (.I0(rx_data_SPI_out[9]),
        .I1(rx_data_SPI_out[8]),
        .I2(rx_valid_SPI_out),
        .O(mem_reg));
  LUT3 #(
    .INIT(8'h8F)) 
    mem_reg_i_2
       (.I0(rx_data_SPI_out[8]),
        .I1(rx_data_SPI_out[9]),
        .I2(rst_n_IBUF),
        .O(mem_reg_0));
  LUT6 #(
    .INIT(64'h1F1F1F1F1F1F1F00)) 
    \rx_data[9]_i_1 
       (.I0(counter_sp_reg__0[2]),
        .I1(counter_sp_reg__0[1]),
        .I2(counter_sp_reg__0[3]),
        .I3(\FSM_onehot_cs_reg_n_0_[4] ),
        .I4(\FSM_onehot_cs_reg_n_0_[2] ),
        .I5(\FSM_onehot_cs_reg_n_0_[3] ),
        .O(\rx_data[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[0] 
       (.C(CLK),
        .CE(\rx_data[9]_i_1_n_0 ),
        .D(MOSI_IBUF),
        .Q(Q[0]),
        .R(MISO_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[1] 
       (.C(CLK),
        .CE(\rx_data[9]_i_1_n_0 ),
        .D(Q[0]),
        .Q(Q[1]),
        .R(MISO_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[2] 
       (.C(CLK),
        .CE(\rx_data[9]_i_1_n_0 ),
        .D(Q[1]),
        .Q(Q[2]),
        .R(MISO_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[3] 
       (.C(CLK),
        .CE(\rx_data[9]_i_1_n_0 ),
        .D(Q[2]),
        .Q(Q[3]),
        .R(MISO_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[4] 
       (.C(CLK),
        .CE(\rx_data[9]_i_1_n_0 ),
        .D(Q[3]),
        .Q(Q[4]),
        .R(MISO_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[5] 
       (.C(CLK),
        .CE(\rx_data[9]_i_1_n_0 ),
        .D(Q[4]),
        .Q(Q[5]),
        .R(MISO_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[6] 
       (.C(CLK),
        .CE(\rx_data[9]_i_1_n_0 ),
        .D(Q[5]),
        .Q(Q[6]),
        .R(MISO_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[7] 
       (.C(CLK),
        .CE(\rx_data[9]_i_1_n_0 ),
        .D(Q[6]),
        .Q(Q[7]),
        .R(MISO_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[8] 
       (.C(CLK),
        .CE(\rx_data[9]_i_1_n_0 ),
        .D(Q[7]),
        .Q(rx_data_SPI_out[8]),
        .R(MISO_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[9] 
       (.C(CLK),
        .CE(\rx_data[9]_i_1_n_0 ),
        .D(rx_data_SPI_out[8]),
        .Q(rx_data_SPI_out[9]),
        .R(MISO_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h00E0)) 
    rx_valid_i_1
       (.I0(rx_valid_SPI_out),
        .I1(rx_valid_i_2_n_0),
        .I2(rst_n_IBUF),
        .I3(SS_n_IBUF),
        .O(rx_valid_i_1_n_0));
  LUT6 #(
    .INIT(64'h0008000800080000)) 
    rx_valid_i_2
       (.I0(counter_sp_reg__0[3]),
        .I1(counter_sp_reg__0[1]),
        .I2(counter_sp_reg__0[2]),
        .I3(counter_sp_reg__0[0]),
        .I4(\FSM_onehot_cs_reg_n_0_[4] ),
        .I5(\FSM_onehot_cs_reg_n_0_[3] ),
        .O(rx_valid_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    rx_valid_reg
       (.C(CLK),
        .CE(\<const1> ),
        .D(rx_valid_i_1_n_0),
        .Q(rx_valid_SPI_out),
        .R(\<const0> ));
  LUT2 #(
    .INIT(4'h8)) 
    tx_valid_i_1
       (.I0(rx_data_SPI_out[8]),
        .I1(rx_data_SPI_out[9]),
        .O(tx_valid_reg));
endmodule

(* ADDR_SIZE = "8" *) (* MEM_DEPTH = "256" *) 
(* STRUCTURAL_NETLIST = "yes" *)
module SPI_Wrapper
   (clk,
    rst_n,
    SS_n,
    MOSI,
    MISO);
  input clk;
  input rst_n;
  input SS_n;
  input MOSI;
  output MISO;

  wire Async_RAM_n_0;
  wire Async_RAM_n_2;
  wire MISO;
  wire MISO_OBUF;
  wire MOSI;
  wire MOSI_IBUF;
  wire SPI_Slave_n_1;
  wire SPI_Slave_n_13;
  wire SPI_Slave_n_15;
  wire SPI_Slave_n_2;
  wire SPI_Slave_n_3;
  wire SPI_Slave_n_4;
  wire SS_n;
  wire SS_n_IBUF;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire dout11_out;
  wire rst_n;
  wire rst_n_IBUF;
  wire [7:0]rx_data_SPI_out;
  wire tx_valid_RAM_out;

  RAM Async_RAM
       (.CLK(clk_IBUF_BUFG),
        .E(dout11_out),
        .MISO_reg(Async_RAM_n_2),
        .Q(rx_data_SPI_out),
        .SR(Async_RAM_n_0),
        .\counter_ps_reg[0] (SPI_Slave_n_2),
        .\counter_ps_reg[1] (SPI_Slave_n_3),
        .\counter_ps_reg[2] (SPI_Slave_n_1),
        .rst_n_IBUF(rst_n_IBUF),
        .\rx_data_reg[8] (SPI_Slave_n_13),
        .\rx_data_reg[8]_0 (SPI_Slave_n_15),
        .\rx_data_reg[9] (SPI_Slave_n_4),
        .tx_valid_RAM_out(tx_valid_RAM_out));
  OBUF MISO_OBUF_inst
       (.I(MISO_OBUF),
        .O(MISO));
  IBUF MOSI_IBUF_inst
       (.I(MOSI),
        .O(MOSI_IBUF));
  SPI SPI_Slave
       (.CLK(clk_IBUF_BUFG),
        .E(dout11_out),
        .MISO_OBUF(MISO_OBUF),
        .MOSI_IBUF(MOSI_IBUF),
        .Q(rx_data_SPI_out),
        .SR(Async_RAM_n_0),
        .SS_n_IBUF(SS_n_IBUF),
        .\counter_ps_reg[2]_0 (SPI_Slave_n_1),
        .\counter_ps_reg[2]_1 (SPI_Slave_n_2),
        .\counter_ps_reg[2]_2 (SPI_Slave_n_3),
        .\counter_ps_reg[2]_3 (Async_RAM_n_2),
        .mem_reg(SPI_Slave_n_4),
        .mem_reg_0(SPI_Slave_n_13),
        .rst_n_IBUF(rst_n_IBUF),
        .tx_valid_RAM_out(tx_valid_RAM_out),
        .tx_valid_reg(SPI_Slave_n_15));
  IBUF SS_n_IBUF_inst
       (.I(SS_n),
        .O(SS_n_IBUF));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  IBUF rst_n_IBUF_inst
       (.I(rst_n),
        .O(rst_n_IBUF));
endmodule
