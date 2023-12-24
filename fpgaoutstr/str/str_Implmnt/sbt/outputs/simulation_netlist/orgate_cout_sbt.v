// ******************************************************************************

// iCEcube Netlister

// Version:            2020.12.27943

// Build Date:         Dec  9 2020 18:18:12

// File Generated:     Dec 22 2023 20:30:51

// Purpose:            Post-Route Verilog/VHDL netlist for timing simulation

// Copyright (C) 2006-2010 by Lattice Semiconductor Corp. All rights reserved.

// ******************************************************************************

// Verilog file for cell "orgate_cout" view "INTERFACE"

module orgate_cout (
    f,
    c,
    b,
    a);

    output f;
    input c;
    input b;
    input a;

    wire N__140;
    wire N__139;
    wire N__138;
    wire N__131;
    wire N__130;
    wire N__129;
    wire N__122;
    wire N__121;
    wire N__120;
    wire N__113;
    wire N__112;
    wire N__111;
    wire N__94;
    wire N__91;
    wire N__88;
    wire N__85;
    wire N__82;
    wire N__79;
    wire N__76;
    wire N__73;
    wire N__70;
    wire N__67;
    wire VCCG0;
    wire GNDG0;
    wire b_c;
    wire c_c;
    wire a_c;
    wire f_0_i;
    wire _gnd_net_;

    IO_PAD b_ibuf_iopad (
            .OE(N__140),
            .DIN(N__139),
            .DOUT(N__138),
            .PACKAGEPIN(b));
    defparam b_ibuf_preio.NEG_TRIGGER=1'b0;
    defparam b_ibuf_preio.PIN_TYPE=6'b000001;
    PRE_IO b_ibuf_preio (
            .PADOEN(N__140),
            .PADOUT(N__139),
            .PADIN(N__138),
            .CLOCKENABLE(),
            .DOUT1(),
            .OUTPUTENABLE(),
            .DIN0(b_c),
            .DOUT0(),
            .INPUTCLK(),
            .LATCHINPUTVALUE(),
            .DIN1(),
            .OUTPUTCLK());
    IO_PAD c_ibuf_iopad (
            .OE(N__131),
            .DIN(N__130),
            .DOUT(N__129),
            .PACKAGEPIN(c));
    defparam c_ibuf_preio.NEG_TRIGGER=1'b0;
    defparam c_ibuf_preio.PIN_TYPE=6'b000001;
    PRE_IO c_ibuf_preio (
            .PADOEN(N__131),
            .PADOUT(N__130),
            .PADIN(N__129),
            .CLOCKENABLE(),
            .DOUT1(),
            .OUTPUTENABLE(),
            .DIN0(c_c),
            .DOUT0(),
            .INPUTCLK(),
            .LATCHINPUTVALUE(),
            .DIN1(),
            .OUTPUTCLK());
    IO_PAD f_obuf_iopad (
            .OE(N__122),
            .DIN(N__121),
            .DOUT(N__120),
            .PACKAGEPIN(f));
    defparam f_obuf_preio.NEG_TRIGGER=1'b0;
    defparam f_obuf_preio.PIN_TYPE=6'b011001;
    PRE_IO f_obuf_preio (
            .PADOEN(N__122),
            .PADOUT(N__121),
            .PADIN(N__120),
            .CLOCKENABLE(),
            .DOUT1(),
            .OUTPUTENABLE(),
            .DIN0(),
            .DOUT0(N__76),
            .INPUTCLK(),
            .LATCHINPUTVALUE(),
            .DIN1(),
            .OUTPUTCLK());
    IO_PAD a_ibuf_iopad (
            .OE(N__113),
            .DIN(N__112),
            .DOUT(N__111),
            .PACKAGEPIN(a));
    defparam a_ibuf_preio.NEG_TRIGGER=1'b0;
    defparam a_ibuf_preio.PIN_TYPE=6'b000001;
    PRE_IO a_ibuf_preio (
            .PADOEN(N__113),
            .PADOUT(N__112),
            .PADIN(N__111),
            .CLOCKENABLE(),
            .DOUT1(),
            .OUTPUTENABLE(),
            .DIN0(a_c),
            .DOUT0(),
            .INPUTCLK(),
            .LATCHINPUTVALUE(),
            .DIN1(),
            .OUTPUTCLK());
    InMux I__17 (
            .O(N__94),
            .I(N__91));
    LocalMux I__16 (
            .O(N__91),
            .I(b_c));
    InMux I__15 (
            .O(N__88),
            .I(N__85));
    LocalMux I__14 (
            .O(N__85),
            .I(c_c));
    InMux I__13 (
            .O(N__82),
            .I(N__79));
    LocalMux I__12 (
            .O(N__79),
            .I(a_c));
    IoInMux I__11 (
            .O(N__76),
            .I(N__73));
    LocalMux I__10 (
            .O(N__73),
            .I(N__70));
    Span4Mux_s0_h I__9 (
            .O(N__70),
            .I(N__67));
    Odrv4 I__8 (
            .O(N__67),
            .I(f_0_i));
    VCC VCC (
            .Y(VCCG0));
    GND GND (
            .Y(GNDG0));
    GND GND_Inst (
            .Y(_gnd_net_));
    defparam f_obuf_RNO_LC_1_4_0.C_ON=1'b0;
    defparam f_obuf_RNO_LC_1_4_0.SEQ_MODE=4'b0000;
    defparam f_obuf_RNO_LC_1_4_0.LUT_INIT=16'b1111111111101110;
    LogicCell40 f_obuf_RNO_LC_1_4_0 (
            .in0(N__94),
            .in1(N__88),
            .in2(_gnd_net_),
            .in3(N__82),
            .lcout(f_0_i),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
endmodule // orgate_cout
