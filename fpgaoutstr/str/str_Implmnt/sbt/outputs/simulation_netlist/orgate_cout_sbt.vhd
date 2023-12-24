-- ******************************************************************************

-- iCEcube Netlister

-- Version:            2020.12.27943

-- Build Date:         Dec  9 2020 18:18:06

-- File Generated:     Dec 22 2023 20:30:51

-- Purpose:            Post-Route Verilog/VHDL netlist for timing simulation

-- Copyright (C) 2006-2010 by Lattice Semiconductor Corp. All rights reserved.

-- ******************************************************************************

-- VHDL file for cell "orgate_cout" view "INTERFACE"

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

library ice;
use ice.vcomponent_vital.all;

-- Entity of orgate_cout
entity orgate_cout is
port (
    f : out std_logic;
    c : in std_logic;
    b : in std_logic;
    a : in std_logic);
end orgate_cout;

-- Architecture of orgate_cout
-- View name is \INTERFACE\
architecture \INTERFACE\ of orgate_cout is

signal \N__140\ : std_logic;
signal \N__139\ : std_logic;
signal \N__138\ : std_logic;
signal \N__131\ : std_logic;
signal \N__130\ : std_logic;
signal \N__129\ : std_logic;
signal \N__122\ : std_logic;
signal \N__121\ : std_logic;
signal \N__120\ : std_logic;
signal \N__113\ : std_logic;
signal \N__112\ : std_logic;
signal \N__111\ : std_logic;
signal \N__94\ : std_logic;
signal \N__91\ : std_logic;
signal \N__88\ : std_logic;
signal \N__85\ : std_logic;
signal \N__82\ : std_logic;
signal \N__79\ : std_logic;
signal \N__76\ : std_logic;
signal \N__73\ : std_logic;
signal \N__70\ : std_logic;
signal \N__67\ : std_logic;
signal \VCCG0\ : std_logic;
signal \GNDG0\ : std_logic;
signal b_c : std_logic;
signal c_c : std_logic;
signal a_c : std_logic;
signal f_0_i : std_logic;
signal \_gnd_net_\ : std_logic;

signal b_wire : std_logic;
signal c_wire : std_logic;
signal f_wire : std_logic;
signal a_wire : std_logic;

begin
    b_wire <= b;
    c_wire <= c;
    f <= f_wire;
    a_wire <= a;

    \b_ibuf_iopad\ : IO_PAD
    generic map (
            IO_STANDARD => "SB_LVCMOS",
            PULLUP => '0'
        )
    port map (
            OE => \N__140\,
            DIN => \N__139\,
            DOUT => \N__138\,
            PACKAGEPIN => b_wire
        );

    \b_ibuf_preio\ : PRE_IO
    generic map (
            NEG_TRIGGER => '0',
            PIN_TYPE => "000001"
        )
    port map (
            PADOEN => \N__140\,
            PADOUT => \N__139\,
            PADIN => \N__138\,
            CLOCKENABLE => 'H',
            DOUT1 => '0',
            OUTPUTENABLE => '0',
            DIN0 => b_c,
            DOUT0 => '0',
            INPUTCLK => '0',
            LATCHINPUTVALUE => '0',
            DIN1 => OPEN,
            OUTPUTCLK => '0'
        );

    \c_ibuf_iopad\ : IO_PAD
    generic map (
            IO_STANDARD => "SB_LVCMOS",
            PULLUP => '0'
        )
    port map (
            OE => \N__131\,
            DIN => \N__130\,
            DOUT => \N__129\,
            PACKAGEPIN => c_wire
        );

    \c_ibuf_preio\ : PRE_IO
    generic map (
            NEG_TRIGGER => '0',
            PIN_TYPE => "000001"
        )
    port map (
            PADOEN => \N__131\,
            PADOUT => \N__130\,
            PADIN => \N__129\,
            CLOCKENABLE => 'H',
            DOUT1 => '0',
            OUTPUTENABLE => '0',
            DIN0 => c_c,
            DOUT0 => '0',
            INPUTCLK => '0',
            LATCHINPUTVALUE => '0',
            DIN1 => OPEN,
            OUTPUTCLK => '0'
        );

    \f_obuf_iopad\ : IO_PAD
    generic map (
            IO_STANDARD => "SB_LVCMOS",
            PULLUP => '0'
        )
    port map (
            OE => \N__122\,
            DIN => \N__121\,
            DOUT => \N__120\,
            PACKAGEPIN => f_wire
        );

    \f_obuf_preio\ : PRE_IO
    generic map (
            NEG_TRIGGER => '0',
            PIN_TYPE => "011001"
        )
    port map (
            PADOEN => \N__122\,
            PADOUT => \N__121\,
            PADIN => \N__120\,
            CLOCKENABLE => 'H',
            DOUT1 => '0',
            OUTPUTENABLE => '0',
            DIN0 => OPEN,
            DOUT0 => \N__76\,
            INPUTCLK => '0',
            LATCHINPUTVALUE => '0',
            DIN1 => OPEN,
            OUTPUTCLK => '0'
        );

    \a_ibuf_iopad\ : IO_PAD
    generic map (
            IO_STANDARD => "SB_LVCMOS",
            PULLUP => '0'
        )
    port map (
            OE => \N__113\,
            DIN => \N__112\,
            DOUT => \N__111\,
            PACKAGEPIN => a_wire
        );

    \a_ibuf_preio\ : PRE_IO
    generic map (
            NEG_TRIGGER => '0',
            PIN_TYPE => "000001"
        )
    port map (
            PADOEN => \N__113\,
            PADOUT => \N__112\,
            PADIN => \N__111\,
            CLOCKENABLE => 'H',
            DOUT1 => '0',
            OUTPUTENABLE => '0',
            DIN0 => a_c,
            DOUT0 => '0',
            INPUTCLK => '0',
            LATCHINPUTVALUE => '0',
            DIN1 => OPEN,
            OUTPUTCLK => '0'
        );

    \I__17\ : InMux
    port map (
            O => \N__94\,
            I => \N__91\
        );

    \I__16\ : LocalMux
    port map (
            O => \N__91\,
            I => b_c
        );

    \I__15\ : InMux
    port map (
            O => \N__88\,
            I => \N__85\
        );

    \I__14\ : LocalMux
    port map (
            O => \N__85\,
            I => c_c
        );

    \I__13\ : InMux
    port map (
            O => \N__82\,
            I => \N__79\
        );

    \I__12\ : LocalMux
    port map (
            O => \N__79\,
            I => a_c
        );

    \I__11\ : IoInMux
    port map (
            O => \N__76\,
            I => \N__73\
        );

    \I__10\ : LocalMux
    port map (
            O => \N__73\,
            I => \N__70\
        );

    \I__9\ : Span4Mux_s0_h
    port map (
            O => \N__70\,
            I => \N__67\
        );

    \I__8\ : Odrv4
    port map (
            O => \N__67\,
            I => f_0_i
        );

    \VCC\ : VCC
    port map (
            Y => \VCCG0\
        );

    \GND\ : GND
    port map (
            Y => \GNDG0\
        );

    \GND_Inst\ : GND
    port map (
            Y => \_gnd_net_\
        );

    \f_obuf_RNO_LC_1_4_0\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "1111111111101110"
        )
    port map (
            in0 => \N__94\,
            in1 => \N__88\,
            in2 => \_gnd_net_\,
            in3 => \N__82\,
            lcout => f_0_i,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );
end \INTERFACE\;
