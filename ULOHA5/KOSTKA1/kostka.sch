<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="DISP_OUT(7:0)" />
        <signal name="OCT(2:0)" />
        <signal name="OCT(0)" />
        <signal name="OCT(1)" />
        <signal name="OCT(2)" />
        <signal name="XLXN_6" />
        <signal name="XLXN_28" />
        <signal name="ce" />
        <signal name="clr" />
        <signal name="Counter(15:0)" />
        <signal name="clk" />
        <signal name="Counter(3)" />
        <signal name="an0" />
        <signal name="an1" />
        <signal name="an2" />
        <signal name="an3" />
        <port polarity="Output" name="DISP_OUT(7:0)" />
        <port polarity="Input" name="ce" />
        <port polarity="Input" name="clr" />
        <port polarity="Input" name="clk" />
        <port polarity="Output" name="an0" />
        <port polarity="Output" name="an1" />
        <port polarity="Output" name="an2" />
        <port polarity="Output" name="an3" />
        <blockdef name="disp">
            <timestamp>2005-3-22T17:2:46</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <rect width="64" x="320" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
        </blockdef>
        <blockdef name="fdce">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="320" y1="-256" y2="-256" x1="384" />
            <line x2="80" y1="-112" y2="-128" x1="64" />
            <line x2="64" y1="-128" y2="-144" x1="80" />
            <line x2="192" y1="-64" y2="-32" x1="192" />
            <line x2="64" y1="-32" y2="-32" x1="192" />
            <rect width="256" x="64" y="-320" height="256" />
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
        <blockdef name="cb16ce">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="320" y1="-192" y2="-192" x1="384" />
            <rect width="64" x="320" y="-268" height="24" />
            <line x2="320" y1="-256" y2="-256" x1="384" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="64" y1="-32" y2="-32" x1="192" />
            <line x2="192" y1="-64" y2="-32" x1="192" />
            <line x2="64" y1="-128" y2="-144" x1="80" />
            <line x2="80" y1="-112" y2="-128" x1="64" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="320" y1="-128" y2="-128" x1="384" />
            <rect width="256" x="64" y="-320" height="256" />
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
        <block symbolname="disp" name="XLXI_1">
            <blockpin signalname="DISP_OUT(7:0)" name="LCD(7:0)" />
            <blockpin signalname="OCT(2:0)" name="jednotky(2:0)" />
        </block>
        <block symbolname="fdce" name="XLXI_3">
            <blockpin signalname="Counter(3)" name="C" />
            <blockpin signalname="ce" name="CE" />
            <blockpin signalname="clr" name="CLR" />
            <blockpin signalname="OCT(0)" name="D" />
            <blockpin signalname="OCT(1)" name="Q" />
        </block>
        <block symbolname="fdce" name="XLXI_4">
            <blockpin signalname="Counter(3)" name="C" />
            <blockpin signalname="ce" name="CE" />
            <blockpin signalname="clr" name="CLR" />
            <blockpin signalname="OCT(1)" name="D" />
            <blockpin signalname="OCT(2)" name="Q" />
        </block>
        <block symbolname="fdce" name="XLXI_2">
            <blockpin signalname="Counter(3)" name="C" />
            <blockpin signalname="ce" name="CE" />
            <blockpin signalname="clr" name="CLR" />
            <blockpin signalname="XLXN_6" name="D" />
            <blockpin signalname="OCT(0)" name="Q" />
        </block>
        <block symbolname="inv" name="XLXI_6">
            <blockpin signalname="OCT(2)" name="I" />
            <blockpin signalname="XLXN_6" name="O" />
        </block>
        <block symbolname="cb16ce" name="XLXI_7">
            <blockpin signalname="clk" name="C" />
            <blockpin signalname="ce" name="CE" />
            <blockpin signalname="clr" name="CLR" />
            <blockpin signalname="XLXN_28" name="CEO" />
            <blockpin name="Q(15:0)" />
            <blockpin name="TC" />
        </block>
        <block symbolname="cb16ce" name="XLXI_41">
            <blockpin signalname="clk" name="C" />
            <blockpin signalname="XLXN_28" name="CE" />
            <blockpin signalname="clr" name="CLR" />
            <blockpin name="CEO" />
            <blockpin signalname="Counter(15:0)" name="Q(15:0)" />
            <blockpin name="TC" />
        </block>
        <block symbolname="gnd" name="XLXI_11">
            <blockpin signalname="an0" name="G" />
        </block>
        <block symbolname="vcc" name="XLXI_12">
            <blockpin signalname="an1" name="P" />
        </block>
        <block symbolname="vcc" name="XLXI_14">
            <blockpin signalname="an2" name="P" />
        </block>
        <block symbolname="vcc" name="XLXI_15">
            <blockpin signalname="an3" name="P" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="5440" height="3520">
        <branch name="DISP_OUT(7:0)">
            <wire x2="3776" y1="736" y2="736" x1="3488" />
        </branch>
        <branch name="OCT(2:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2784" y="736" type="branch" />
            <wire x2="2784" y1="736" y2="1040" x1="2784" />
            <wire x2="2784" y1="1040" y2="1616" x1="2784" />
            <wire x2="2784" y1="1616" y2="2080" x1="2784" />
            <wire x2="2784" y1="2080" y2="2240" x1="2784" />
            <wire x2="3104" y1="736" y2="736" x1="2784" />
        </branch>
        <instance x="3104" y="896" name="XLXI_1" orien="R0">
        </instance>
        <instance x="2208" y="1872" name="XLXI_3" orien="R0" />
        <bustap x2="2688" y1="1040" y2="1040" x1="2784" />
        <bustap x2="2688" y1="1616" y2="1616" x1="2784" />
        <bustap x2="2688" y1="2080" y2="2080" x1="2784" />
        <branch name="OCT(0)">
            <wire x2="2144" y1="1488" y2="1616" x1="2144" />
            <wire x2="2208" y1="1616" y2="1616" x1="2144" />
            <wire x2="2624" y1="1488" y2="1488" x1="2144" />
            <wire x2="2624" y1="1040" y2="1040" x1="2592" />
            <wire x2="2688" y1="1040" y2="1040" x1="2624" />
            <wire x2="2624" y1="1040" y2="1488" x1="2624" />
        </branch>
        <instance x="2192" y="2336" name="XLXI_4" orien="R0" />
        <branch name="OCT(1)">
            <wire x2="2624" y1="1920" y2="1920" x1="2160" />
            <wire x2="2160" y1="1920" y2="2080" x1="2160" />
            <wire x2="2192" y1="2080" y2="2080" x1="2160" />
            <wire x2="2624" y1="1616" y2="1616" x1="2592" />
            <wire x2="2624" y1="1616" y2="1920" x1="2624" />
            <wire x2="2688" y1="1616" y2="1616" x1="2624" />
        </branch>
        <instance x="1760" y="1072" name="XLXI_6" orien="R0" />
        <branch name="OCT(2)">
            <wire x2="2688" y1="848" y2="848" x1="1728" />
            <wire x2="2688" y1="848" y2="2080" x1="2688" />
            <wire x2="1728" y1="848" y2="1040" x1="1728" />
            <wire x2="1760" y1="1040" y2="1040" x1="1728" />
            <wire x2="2688" y1="2080" y2="2080" x1="2576" />
        </branch>
        <branch name="XLXN_6">
            <wire x2="2000" y1="1040" y2="1040" x1="1984" />
            <wire x2="2208" y1="1040" y2="1040" x1="2000" />
        </branch>
        <instance x="784" y="1104" name="XLXI_7" orien="R0" />
        <branch name="ce">
            <wire x2="752" y1="912" y2="912" x1="704" />
            <wire x2="784" y1="912" y2="912" x1="752" />
            <wire x2="752" y1="688" y2="912" x1="752" />
            <wire x2="1984" y1="688" y2="688" x1="752" />
            <wire x2="1984" y1="688" y2="1104" x1="1984" />
            <wire x2="1984" y1="1104" y2="1680" x1="1984" />
            <wire x2="1984" y1="1680" y2="2144" x1="1984" />
            <wire x2="2192" y1="2144" y2="2144" x1="1984" />
            <wire x2="2208" y1="1680" y2="1680" x1="1984" />
            <wire x2="2208" y1="1104" y2="1104" x1="1984" />
        </branch>
        <iomarker fontsize="28" x="3776" y="736" name="DISP_OUT(7:0)" orien="R0" />
        <iomarker fontsize="28" x="704" y="912" name="ce" orien="R180" />
        <iomarker fontsize="28" x="736" y="2304" name="clr" orien="R180" />
        <iomarker fontsize="28" x="704" y="976" name="clk" orien="R180" />
        <bustap x2="1456" y1="1680" y2="1680" x1="1360" />
        <branch name="clr">
            <wire x2="784" y1="2304" y2="2304" x1="736" />
            <wire x2="2112" y1="2304" y2="2304" x1="784" />
            <wire x2="2192" y1="2304" y2="2304" x1="2112" />
            <wire x2="784" y1="1072" y2="1776" x1="784" />
            <wire x2="784" y1="1776" y2="2304" x1="784" />
            <wire x2="848" y1="1776" y2="1776" x1="784" />
            <wire x2="2208" y1="1264" y2="1264" x1="2112" />
            <wire x2="2112" y1="1264" y2="1840" x1="2112" />
            <wire x2="2208" y1="1840" y2="1840" x1="2112" />
            <wire x2="2112" y1="1840" y2="2304" x1="2112" />
        </branch>
        <instance x="2208" y="1296" name="XLXI_2" orien="R0" />
        <branch name="Counter(15:0)">
            <wire x2="1312" y1="1552" y2="1552" x1="1232" />
            <wire x2="1312" y1="1552" y2="1680" x1="1312" />
            <wire x2="1344" y1="1680" y2="1680" x1="1312" />
            <wire x2="1360" y1="1680" y2="1680" x1="1344" />
        </branch>
        <branch name="Counter(3)">
            <wire x2="1456" y1="1680" y2="1744" x1="1456" />
            <wire x2="2048" y1="1744" y2="1744" x1="1456" />
            <wire x2="2208" y1="1744" y2="1744" x1="2048" />
            <wire x2="2048" y1="1744" y2="2208" x1="2048" />
            <wire x2="2192" y1="2208" y2="2208" x1="2048" />
            <wire x2="2208" y1="1168" y2="1168" x1="2048" />
            <wire x2="2048" y1="1168" y2="1744" x1="2048" />
        </branch>
        <instance x="3056" y="1584" name="XLXI_11" orien="R0" />
        <branch name="an0">
            <wire x2="3120" y1="1440" y2="1456" x1="3120" />
            <wire x2="3200" y1="1440" y2="1440" x1="3120" />
        </branch>
        <instance x="3056" y="1328" name="XLXI_12" orien="R0" />
        <branch name="an1">
            <wire x2="3120" y1="1328" y2="1344" x1="3120" />
            <wire x2="3216" y1="1344" y2="1344" x1="3120" />
        </branch>
        <instance x="3056" y="1808" name="XLXI_14" orien="R0" />
        <branch name="an2">
            <wire x2="3120" y1="1808" y2="1824" x1="3120" />
            <wire x2="3216" y1="1824" y2="1824" x1="3120" />
        </branch>
        <instance x="3056" y="1984" name="XLXI_15" orien="R0" />
        <branch name="an3">
            <wire x2="3120" y1="1984" y2="2000" x1="3120" />
            <wire x2="3216" y1="2000" y2="2000" x1="3120" />
        </branch>
        <iomarker fontsize="28" x="3200" y="1440" name="an0" orien="R0" />
        <iomarker fontsize="28" x="3216" y="1344" name="an1" orien="R0" />
        <iomarker fontsize="28" x="3216" y="1824" name="an2" orien="R0" />
        <iomarker fontsize="28" x="3216" y="2000" name="an3" orien="R0" />
        <branch name="clk">
            <wire x2="752" y1="976" y2="976" x1="704" />
            <wire x2="784" y1="976" y2="976" x1="752" />
            <wire x2="752" y1="976" y2="1680" x1="752" />
            <wire x2="848" y1="1680" y2="1680" x1="752" />
        </branch>
        <branch name="XLXN_28">
            <wire x2="1216" y1="1152" y2="1152" x1="832" />
            <wire x2="832" y1="1152" y2="1616" x1="832" />
            <wire x2="848" y1="1616" y2="1616" x1="832" />
            <wire x2="1184" y1="912" y2="912" x1="1168" />
            <wire x2="1216" y1="912" y2="912" x1="1184" />
            <wire x2="1216" y1="912" y2="1152" x1="1216" />
        </branch>
        <instance x="848" y="1808" name="XLXI_41" orien="R0" />
    </sheet>
</drawing>