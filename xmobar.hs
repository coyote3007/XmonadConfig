
Config {
    font = "xft:Fixed-8:pixelsize=10:weight=bold",
    bgColor = "#000000",
    fgColor = "#ffffff",
    lowerOnStart = True,
    overrideRedirect=False,
    commands = [
        Run Weather "LEMD" ["-t","<tempC>°C <skyCondition>",
                            "-L","64",
                            "-H","77",
                            "-l","grenn",
                            "-n","yellow",
                            "-h","red"
                           ] 36000,
        Run MultiCpu ["-t","<fc=blue>Cpu:</fc> <total0> <total1> <total2> <total3>",
                      "-L","30",
                      "-H","70",
                      "-l","green",
                      "-n","yellow",
                      "-h","red",
                      "-w","3"] 10,
        Run Memory ["-t","<fc=blue>Mem:</fc> <usedratio>%",
                    "-H","5120",
                    "-L","3072",
                    "-l","green",
                    "-n","yeellow",
                    "-h","red"
                   ] 10,
        Run Battery ["-t","<left>%",
                     "-L","50",
                     "-H","75",
                     "-h","green",
                     "-n","yellow",
                     "-l","red"
                    ] 10,
        Run Swap ["-t","<fc=blue>Swap:</fc> <usedratio>%",
                  "-H","1024",
                  "-L","512",
                  "-l","green",
                  "-n","yellow",
                  "-h","red"
                 ] 10,
        -- Run Network "enp1s0f0" ["-t","Net: <rx>, <tx>","-H","200","-L","10","-h","#FFB6B0","-l","#CEFFAC","-n","#FFFFCC"] 10,
        -- Run Wireless "wlp5s0" [ "-a", "l", "-w", "4", "-t", "<fc=#8888FF>WLAN:</fc> <essid> <quality>", "-L", "50", "-H", "75", "-l", "red", "-n", "yellow", "-h", "green"] 10,
        Run Com "/home/coyote3007/Scripts/WifiPene.sh" [] "wifi" 10,
        Run Com "/home/coyote3007/Scripts/coreTemp.sh" [] "cpuTemp" 10,
        Run Date "%a %b %_d %l:%M" "date" 10,
        Run StdinReader
    ],
    sepChar = "%",
    alignSep = "}{",
    allDesktops = True  -- show on all desktops
    template = "%StdinReader% }{ %battery% ||  %multicpu% || %cpuTemp% || %memory% || %swap% || <fc=orange>%date%</fc> || %wifi%"
}
