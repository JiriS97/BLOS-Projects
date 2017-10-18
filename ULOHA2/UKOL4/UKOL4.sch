<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="E" />
        <signal name="y" />
        <signal name="d" />
        <signal name="c" />
        <signal name="b" />
        <signal name="XLXN_7" />
        <signal name="XLXN_10" />
        <signal name="XLXN_11" />
        <signal name="a" />
        <signal name="XLXN_15" />
        <signal name="XLXN_16" />
        <signal name="XLXN_17" />
        <signal name="XLXN_18" />
        <signal name="XLXN_19" />
        <port polarity="Input" name="E" />
        <port polarity="Output" name="y" />
        <port polarity="Input" name="d" />
        <port polarity="Input" name="c" />
        <port polarity="Input" name="b" />
        <port polarity="Input" name="a" />
        <blockdef name="m8_1e">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="96" y1="-224" y2="-224" x1="0" />
            <line x2="96" y1="-160" y2="-160" x1="0" />
            <line x2="96" y1="-96" y2="-96" x1="0" />
            <line x2="96" y1="-288" y2="-288" x1="0" />
            <line x2="96" y1="-352" y2="-352" x1="0" />
            <line x2="96" y1="-416" y2="-416" x1="0" />
            <line x2="96" y1="-544" y2="-544" x1="0" />
            <line x2="96" y1="-608" y2="-608" x1="0" />
            <line x2="96" y1="-672" y2="-672" x1="0" />
            <line x2="96" y1="-736" y2="-736" x1="0" />
            <line x2="96" y1="-160" y2="-160" x1="160" />
            <line x2="160" y1="-268" y2="-160" x1="160" />
            <line x2="96" y1="-224" y2="-224" x1="128" />
            <line x2="128" y1="-264" y2="-224" x1="128" />
            <line x2="96" y1="-96" y2="-96" x1="192" />
            <line x2="192" y1="-276" y2="-96" x1="192" />
            <line x2="96" y1="-32" y2="-32" x1="224" />
            <line x2="224" y1="-280" y2="-32" x1="224" />
            <line x2="256" y1="-512" y2="-512" x1="320" />
            <line x2="96" y1="-768" y2="-256" x1="96" />
            <line x2="96" y1="-704" y2="-768" x1="256" />
            <line x2="256" y1="-288" y2="-704" x1="256" />
            <line x2="256" y1="-256" y2="-288" x1="96" />
            <line x2="96" y1="-32" y2="-32" x1="0" />
            <line x2="96" y1="-480" y2="-480" x1="0" />
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
        <blockdef name="gnd">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-96" x1="64" />
            <line x2="52" y1="-48" y2="-48" x1="76" />
            <line x2="60" y1="-32" y2="-32" x1="68" />
            <line x2="40" y1="-64" y2="-64" x1="88" />
            <line x2="64" y1="-64" y2="-80" x1="64" />
            <line x2="64" y1="-128" y2="-96" x1="64" />
        </blockdef>
        <blockdef name="vcc">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-64" x1="64" />
            <line x2="64" y1="0" y2="-32" x1="64" />
            <line x2="32" y1="-64" y2="-64" x1="96" />
        </blockdef>
        <block symbolname="m8_1e" name="XLXI_1">
            <blockpin signalname="XLXN_10" name="D0" />
            <blockpin signalname="XLXN_11" name="D1" />
            <blockpin signalname="a" name="D2" />
            <blockpin signalname="a" name="D3" />
            <blockpin signalname="XLXN_17" name="D4" />
            <blockpin signalname="XLXN_11" name="D5" />
            <blockpin signalname="XLXN_10" name="D6" />
            <blockpin signalname="a" name="D7" />
            <blockpin signalname="E" name="E" />
            <blockpin signalname="b" name="S0" />
            <blockpin signalname="c" name="S1" />
            <blockpin signalname="d" name="S2" />
            <blockpin signalname="y" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_2">
            <blockpin signalname="a" name="I" />
            <blockpin signalname="XLXN_17" name="O" />
        </block>
        <block symbolname="gnd" name="XLXI_3">
            <blockpin signalname="XLXN_10" name="G" />
        </block>
        <block symbolname="vcc" name="XLXI_4">
            <blockpin signalname="XLXN_11" name="P" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1376" y="1488" name="XLXI_1" orien="R0" />
        <branch name="E">
            <wire x2="1376" y1="1456" y2="1456" x1="1280" />
        </branch>
        <branch name="y">
            <wire x2="1792" y1="976" y2="976" x1="1696" />
        </branch>
        <branch name="d">
            <wire x2="1376" y1="1392" y2="1392" x1="1280" />
        </branch>
        <branch name="c">
            <wire x2="1376" y1="1328" y2="1328" x1="1280" />
        </branch>
        <iomarker fontsize="28" x="1792" y="976" name="y" orien="R0" />
        <iomarker fontsize="28" x="1280" y="1328" name="c" orien="R180" />
        <iomarker fontsize="28" x="1280" y="1392" name="d" orien="R180" />
        <iomarker fontsize="28" x="1280" y="1456" name="E" orien="R180" />
        <branch name="b">
            <wire x2="1376" y1="1264" y2="1264" x1="1280" />
        </branch>
        <iomarker fontsize="28" x="1280" y="1264" name="b" orien="R180" />
        <instance x="1040" y="1376" name="XLXI_3" orien="R0" />
        <iomarker fontsize="28" x="640" y="480" name="a" orien="R180" />
        <instance x="704" y="512" name="XLXI_2" orien="R0" />
        <instance x="928" y="432" name="XLXI_4" orien="R0" />
        <branch name="XLXN_10">
            <wire x2="1376" y1="752" y2="752" x1="1104" />
            <wire x2="1104" y1="752" y2="1136" x1="1104" />
            <wire x2="1104" y1="1136" y2="1248" x1="1104" />
            <wire x2="1376" y1="1136" y2="1136" x1="1104" />
        </branch>
        <branch name="XLXN_11">
            <wire x2="992" y1="432" y2="816" x1="992" />
            <wire x2="1376" y1="816" y2="816" x1="992" />
            <wire x2="992" y1="816" y2="1072" x1="992" />
            <wire x2="1376" y1="1072" y2="1072" x1="992" />
        </branch>
        <branch name="a">
            <wire x2="688" y1="480" y2="480" x1="640" />
            <wire x2="704" y1="480" y2="480" x1="688" />
            <wire x2="688" y1="480" y2="880" x1="688" />
            <wire x2="736" y1="880" y2="880" x1="688" />
            <wire x2="1328" y1="880" y2="880" x1="736" />
            <wire x2="1376" y1="880" y2="880" x1="1328" />
            <wire x2="1328" y1="880" y2="944" x1="1328" />
            <wire x2="1376" y1="944" y2="944" x1="1328" />
            <wire x2="1328" y1="944" y2="1200" x1="1328" />
            <wire x2="1376" y1="1200" y2="1200" x1="1328" />
        </branch>
        <branch name="XLXN_17">
            <wire x2="944" y1="480" y2="480" x1="928" />
            <wire x2="944" y1="480" y2="1008" x1="944" />
            <wire x2="1376" y1="1008" y2="1008" x1="944" />
        </branch>
    </sheet>
</drawing>