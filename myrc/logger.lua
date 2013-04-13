local naughty = require("naughty")

ilog = lognotify{
   logs = { mpd = { file = "/home/bob/.mpd/log", },
        aptitude = { file = "/var/log/aptitude", },
        -- Check, whether you have the permissions to read your log files!
        -- You can fix this by configure syslog deamon in many case.
        syslog    = { file = "/var/log/syslog", ignore = { "Changing fan level" },
        },
        awesome  = { file = "/home/bob/log/awesome",
                ignore = {
                        "/var/lib/dpkg", -- aptwidget failure when aptitude running
                        "wicd", "wired profiles found", -- wicd junk
                        "seek to:", "Close unzip stream", -- gmpc junk
                        "^nolog"},
                },
   -- Delay between checking in seconds. Default: 1
   interval = 1,
   -- Time in seconds after which popup expires. Set 0 for no timeout. Default: 0
   naughty_timeout = 15
}

ilog:start()
