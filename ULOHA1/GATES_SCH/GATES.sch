<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="SA" />
        <signal name="OUT_AND" />
        <signal name="OUT_INV" />
        <signal name="OUT_XNOR" />
        <signal name="OUT_XOR" />
        <signal name="OUT_NOR" />
        <signal name="OUT_OR" />
        <signal name="OUT_NAND" />
        <signal name="SB" />
        <signal name="XLXN_8" />
        <signal name="XLXN_9" />
        <signal name="XLXN_10" />
        <signal name="XLXN_11" />
        <signal name="XLXN_12" />
        <port polarity="Input" name="SA" />
        <port polarity="Output" name="OUT_AND" />
        <port polarity="Output" name="OUT_INV" />
        <port polarity="Output" name="OUT_XNOR" />
        <port polarity="Output" name="OUT_XOR" />
        <port polarity="Output" name="OUT_NOR" />
        <port polarity="Output" name="OUT_OR" />
        <port polarity="Output" name="OUT_NAND" />
        <port polarity="Input" name="SB" />
        <blockdef name="and2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="192" y1="-96" y2="-96" x1="256" />
            <arc ex="144" ey="-144" sx="144" sy="-48" r="48" cx="144" cy="-96" />
            <line x2="64" y1="-48" y2="-48" x1="144" />
            <line x2="144" y1="-144" y2="-144" x1="64" />
            <line x2="64" y1="-48" y2="-144" x1="64" />
        </blockdef>
        <blockdef name="nand2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="216" y1="-96" y2="-96" x1="256" />
            <circle r="12" cx="204" cy="-96" />
            <line x2="64" y1="-48" y2="-144" x1="64" />
            <line x2="144" y1="-144" y2="-144" x1="64" />
            <line x2="64" y1="-48" y2="-48" x1="144" />
            <arc ex="144" ey="-144" sx="144" sy="-48" r="48" cx="144" cy="-96" />
        </blockdef>
        <blockdef name="or2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="192" y1="-96" y2="-96" x1="256" />
            <arc ex="192" ey="-96" sx="112" sy="-48" r="88" cx="116" cy="-136" />
            <arc ex="48" ey="-144" sx="48" sy="-48" r="56" cx="16" cy="-96" />
            <line x2="48" y1="-144" y2="-144" x1="112" />
            <arc ex="112" ey="-144" sx="192" sy="-96" r="88" cx="116" cy="-56" />
            <line x2="48" y1="-48" y2="-48" x1="112" />
        </blockdef>
        <blockdef name="nor2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="216" y1="-96" y2="-96" x1="256" />
            <circle r="12" cx="204" cy="-96" />
            <arc ex="192" ey="-96" sx="112" sy="-48" r="88" cx="116" cy="-136" />
            <arc ex="112" ey="-144" sx="192" sy="-96" r="88" cx="116" cy="-56" />
            <arc ex="48" ey="-144" sx="48" sy="-48" r="56" cx="16" cy="-96" />
            <line x2="48" y1="-48" y2="-48" x1="112" />
            <line x2="48" y1="-144" y2="-144" x1="112" />
        </blockdef>
        <blockdef name="xor2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="60" y1="-128" y2="-128" x1="0" />
            <line x2="208" y1="-96" y2="-96" x1="256" />
            <arc ex="44" ey="-144" sx="48" sy="-48" r="56" cx="16" cy="-96" />
            <arc ex="64" ey="-144" sx="64" sy="-48" r="56" cx="32" cy="-96" />
            <line x2="64" y1="-144" y2="-144" x1="128" />
            <line x2="64" y1="-48" y2="-48" x1="128" />
            <arc ex="128" ey="-144" sx="208" sy="-96" r="88" cx="132" cy="-56" />
            <arc ex="208" ey="-96" sx="128" sy="-48" r="88" cx="132" cy="-136" />
        </blockdef>
        <blockdef name="xnor2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="60" y1="-128" y2="-128" x1="0" />
            <arc ex="44" ey="-144" sx="48" sy="-48" r="56" cx="16" cy="-96" />
            <arc ex="64" ey="-144" sx="64" sy="-48" r="56" cx="32" cy="-96" />
            <line x2="64" y1="-144" y2="-144" x1="128" />
            <line x2="64" y1="-48" y2="-48" x1="128" />
            <arc ex="128" ey="-144" sx="208" sy="-96" r="88" cx="132" cy="-56" />
            <arc ex="208" ey="-96" sx="128" sy="-48" r="88" cx="132" cy="-136" />
            <circle r="8" cx="220" cy="-96" />
            <line x2="256" y1="-96" y2="-96" x1="228" />
            <line x2="60" y1="-28" y2="-28" x1="60" />
        </blockdef>
        <blockdef name="inv">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="160" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="-64" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="0" x1="128" />
            <line x2="64" y1="0" y2="-64" x1="64" />
            <circle r="16" cx="144" cy="-32" />
        </blockdef>
        <block symbolname="and2" name="XLXI_1">
            <blockpin signalname="SB" name="I0" />
            <blockpin signalname="SA" name="I1" />
            <blockpin signalname="OUT_AND" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_7">
            <blockpin signalname="SA" name="I" />
            <blockpin signalname="OUT_INV" name="O" />
        </block>
        <block symbolname="xnor2" name="XLXI_6">
            <blockpin signalname="SB" name="I0" />
            <blockpin signalname="SA" name="I1" />
            <blockpin signalname="OUT_XNOR" name="O" />
        </block>
        <block symbolname="xor2" name="XLXI_5">
            <blockpin signalname="SB" name="I0" />
            <blockpin signalname="SA" name="I1" />
            <blockpin signalname="OUT_XOR" name="O" />
        </block>
        <block symbolname="nor2" name="XLXI_4">
            <blockpin signalname="SB" name="I0" />
            <blockpin signalname="SA" name="I1" />
            <blockpin signalname="OUT_NOR" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_3">
            <blockpin signalname="SB" name="I0" />
            <blockpin signalname="SA" name="I1" />
            <blockpin signalname="OUT_OR" name="O" />
        </block>
        <block symbolname="nand2" name="XLXI_2">
            <blockpin signalname="SB" name="I0" />
            <blockpin signalname="SA" name="I1" />
            <blockpin signalname="OUT_NAND" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1136" y="720" name="XLXI_1" orien="R0" />
        <branch name="SA">
            <wire x2="1072" y1="592" y2="592" x1="960" />
            <wire x2="1136" y1="592" y2="592" x1="1072" />
            <wire x2="1072" y1="592" y2="784" x1="1072" />
            <wire x2="1136" y1="784" y2="784" x1="1072" />
            <wire x2="1072" y1="784" y2="976" x1="1072" />
            <wire x2="1136" y1="976" y2="976" x1="1072" />
            <wire x2="1072" y1="976" y2="1152" x1="1072" />
            <wire x2="1136" y1="1152" y2="1152" x1="1072" />
            <wire x2="1072" y1="1152" y2="1328" x1="1072" />
            <wire x2="1136" y1="1328" y2="1328" x1="1072" />
            <wire x2="1072" y1="1328" y2="1488" x1="1072" />
            <wire x2="1136" y1="1488" y2="1488" x1="1072" />
            <wire x2="1072" y1="1488" y2="1680" x1="1072" />
            <wire x2="1136" y1="1680" y2="1680" x1="1072" />
        </branch>
        <iomarker fontsize="28" x="960" y="592" name="SA" orien="R180" />
        <iomarker fontsize="28" x="960" y="656" name="SB" orien="R180" />
        <branch name="OUT_AND">
            <wire x2="1440" y1="624" y2="624" x1="1392" />
        </branch>
        <iomarker fontsize="28" x="1440" y="624" name="OUT_AND" orien="R0" />
        <iomarker fontsize="28" x="1440" y="1680" name="OUT_INV" orien="R0" />
        <iomarker fontsize="28" x="1440" y="1520" name="OUT_XNOR" orien="R0" />
        <iomarker fontsize="28" x="1440" y="1360" name="OUT_XOR" orien="R0" />
        <iomarker fontsize="28" x="1440" y="1184" name="OUT_NOR" orien="R0" />
        <iomarker fontsize="28" x="1440" y="1008" name="OUT_OR" orien="R0" />
        <iomarker fontsize="28" x="1440" y="816" name="OUT_NAND" orien="R0" />
        <instance x="1136" y="1712" name="XLXI_7" orien="R0" />
        <instance x="1136" y="1616" name="XLXI_6" orien="R0" />
        <instance x="1136" y="1456" name="XLXI_5" orien="R0" />
        <instance x="1136" y="1280" name="XLXI_4" orien="R0" />
        <instance x="1136" y="1104" name="XLXI_3" orien="R0" />
        <instance x="1136" y="912" name="XLXI_2" orien="R0" />
        <branch name="OUT_INV">
            <wire x2="1440" y1="1680" y2="1680" x1="1360" />
        </branch>
        <branch name="OUT_XNOR">
            <wire x2="1440" y1="1520" y2="1520" x1="1392" />
        </branch>
        <branch name="OUT_XOR">
            <wire x2="1440" y1="1360" y2="1360" x1="1392" />
        </branch>
        <branch name="OUT_NOR">
            <wire x2="1440" y1="1184" y2="1184" x1="1392" />
        </branch>
        <branch name="OUT_OR">
            <wire x2="1440" y1="1008" y2="1008" x1="1392" />
        </branch>
        <branch name="OUT_NAND">
            <wire x2="1440" y1="816" y2="816" x1="1392" />
        </branch>
        <branch name="SB">
            <wire x2="1008" y1="656" y2="656" x1="960" />
            <wire x2="1136" y1="656" y2="656" x1="1008" />
            <wire x2="1008" y1="656" y2="848" x1="1008" />
            <wire x2="1136" y1="848" y2="848" x1="1008" />
            <wire x2="1008" y1="848" y2="1040" x1="1008" />
            <wire x2="1136" y1="1040" y2="1040" x1="1008" />
            <wire x2="1008" y1="1040" y2="1200" x1="1008" />
            <wire x2="1008" y1="1200" y2="1216" x1="1008" />
            <wire x2="1008" y1="1216" y2="1392" x1="1008" />
            <wire x2="1008" y1="1392" y2="1552" x1="1008" />
            <wire x2="1136" y1="1552" y2="1552" x1="1008" />
            <wire x2="1136" y1="1392" y2="1392" x1="1008" />
            <wire x2="1136" y1="1216" y2="1216" x1="1008" />
        </branch>
    </sheet>
</drawing>