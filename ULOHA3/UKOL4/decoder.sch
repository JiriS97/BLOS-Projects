<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_1" />
        <signal name="XLXN_2" />
        <signal name="XLXN_3" />
        <signal name="x0" />
        <signal name="XLXN_22" />
        <signal name="x3" />
        <signal name="XLXN_29" />
        <signal name="x1" />
        <signal name="Yf" />
        <signal name="XLXN_36" />
        <signal name="XLXN_38" />
        <signal name="x2" />
        <signal name="XLXN_40" />
        <signal name="XLXN_41" />
        <signal name="XLXN_42" />
        <port polarity="Input" name="x0" />
        <port polarity="Input" name="x3" />
        <port polarity="Input" name="x1" />
        <port polarity="Output" name="Yf" />
        <port polarity="Input" name="x2" />
        <blockdef name="or4">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="48" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="48" y1="-256" y2="-256" x1="0" />
            <line x2="192" y1="-160" y2="-160" x1="256" />
            <arc ex="112" ey="-208" sx="192" sy="-160" r="88" cx="116" cy="-120" />
            <line x2="48" y1="-208" y2="-208" x1="112" />
            <line x2="48" y1="-112" y2="-112" x1="112" />
            <line x2="48" y1="-256" y2="-208" x1="48" />
            <line x2="48" y1="-64" y2="-112" x1="48" />
            <arc ex="48" ey="-208" sx="48" sy="-112" r="56" cx="16" cy="-160" />
            <arc ex="192" ey="-160" sx="112" sy="-112" r="88" cx="116" cy="-200" />
        </blockdef>
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
        <blockdef name="and2b1">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-48" y2="-144" x1="64" />
            <line x2="144" y1="-144" y2="-144" x1="64" />
            <line x2="64" y1="-48" y2="-48" x1="144" />
            <arc ex="144" ey="-144" sx="144" sy="-48" r="48" cx="144" cy="-96" />
            <line x2="192" y1="-96" y2="-96" x1="256" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="40" y1="-64" y2="-64" x1="0" />
            <circle r="12" cx="52" cy="-64" />
        </blockdef>
        <blockdef name="and3b2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="40" y1="-64" y2="-64" x1="0" />
            <circle r="12" cx="52" cy="-64" />
            <line x2="40" y1="-128" y2="-128" x1="0" />
            <circle r="12" cx="52" cy="-128" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="192" y1="-128" y2="-128" x1="256" />
            <line x2="64" y1="-64" y2="-192" x1="64" />
            <arc ex="144" ey="-176" sx="144" sy="-80" r="48" cx="144" cy="-128" />
            <line x2="64" y1="-80" y2="-80" x1="144" />
            <line x2="144" y1="-176" y2="-176" x1="64" />
        </blockdef>
        <block symbolname="or4" name="XLXI_1">
            <blockpin signalname="XLXN_36" name="I0" />
            <blockpin signalname="XLXN_3" name="I1" />
            <blockpin signalname="XLXN_1" name="I2" />
            <blockpin signalname="XLXN_2" name="I3" />
            <blockpin signalname="Yf" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_8">
            <blockpin signalname="x3" name="I0" />
            <blockpin signalname="x2" name="I1" />
            <blockpin signalname="XLXN_1" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_12">
            <blockpin signalname="x1" name="I0" />
            <blockpin signalname="x0" name="I1" />
            <blockpin signalname="XLXN_36" name="O" />
        </block>
        <block symbolname="and2b1" name="XLXI_13">
            <blockpin signalname="x2" name="I0" />
            <blockpin signalname="x1" name="I1" />
            <blockpin signalname="XLXN_2" name="O" />
        </block>
        <block symbolname="and3b2" name="XLXI_14">
            <blockpin signalname="x3" name="I0" />
            <blockpin signalname="x2" name="I1" />
            <blockpin signalname="x0" name="I2" />
            <blockpin signalname="XLXN_3" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1520" y="1200" name="XLXI_1" orien="R0" />
        <branch name="XLXN_1">
            <wire x2="1392" y1="928" y2="928" x1="1280" />
            <wire x2="1392" y1="928" y2="1008" x1="1392" />
            <wire x2="1520" y1="1008" y2="1008" x1="1392" />
        </branch>
        <branch name="XLXN_2">
            <wire x2="1520" y1="752" y2="752" x1="1280" />
            <wire x2="1520" y1="752" y2="944" x1="1520" />
        </branch>
        <branch name="XLXN_3">
            <wire x2="1392" y1="1120" y2="1120" x1="1280" />
            <wire x2="1392" y1="1072" y2="1120" x1="1392" />
            <wire x2="1520" y1="1072" y2="1072" x1="1392" />
        </branch>
        <branch name="x3">
            <wire x2="880" y1="784" y2="784" x1="240" />
            <wire x2="880" y1="784" y2="960" x1="880" />
            <wire x2="880" y1="960" y2="1184" x1="880" />
            <wire x2="1024" y1="1184" y2="1184" x1="880" />
            <wire x2="1024" y1="960" y2="960" x1="880" />
        </branch>
        <instance x="1024" y="1024" name="XLXI_8" orien="R0" />
        <branch name="x1">
            <wire x2="944" y1="656" y2="656" x1="240" />
            <wire x2="944" y1="656" y2="720" x1="944" />
            <wire x2="944" y1="720" y2="1344" x1="944" />
            <wire x2="1024" y1="1344" y2="1344" x1="944" />
            <wire x2="1024" y1="720" y2="720" x1="944" />
        </branch>
        <branch name="x0">
            <wire x2="848" y1="592" y2="592" x1="240" />
            <wire x2="848" y1="592" y2="1056" x1="848" />
            <wire x2="1024" y1="1056" y2="1056" x1="848" />
            <wire x2="848" y1="1056" y2="1280" x1="848" />
            <wire x2="1024" y1="1280" y2="1280" x1="848" />
        </branch>
        <branch name="Yf">
            <wire x2="1808" y1="1040" y2="1040" x1="1776" />
        </branch>
        <iomarker fontsize="28" x="1808" y="1040" name="Yf" orien="R0" />
        <instance x="1024" y="1408" name="XLXI_12" orien="R0" />
        <branch name="XLXN_36">
            <wire x2="1520" y1="1312" y2="1312" x1="1280" />
            <wire x2="1520" y1="1136" y2="1312" x1="1520" />
        </branch>
        <instance x="1024" y="848" name="XLXI_13" orien="R0" />
        <instance x="1024" y="1248" name="XLXI_14" orien="R0" />
        <branch name="x2">
            <wire x2="912" y1="720" y2="720" x1="240" />
            <wire x2="912" y1="720" y2="784" x1="912" />
            <wire x2="1024" y1="784" y2="784" x1="912" />
            <wire x2="912" y1="784" y2="896" x1="912" />
            <wire x2="1024" y1="896" y2="896" x1="912" />
            <wire x2="912" y1="896" y2="1120" x1="912" />
            <wire x2="1024" y1="1120" y2="1120" x1="912" />
        </branch>
        <iomarker fontsize="28" x="240" y="656" name="x1" orien="R180" />
        <iomarker fontsize="28" x="240" y="592" name="x0" orien="R180" />
        <iomarker fontsize="28" x="240" y="720" name="x2" orien="R180" />
        <iomarker fontsize="28" x="240" y="784" name="x3" orien="R180" />
    </sheet>
</drawing>