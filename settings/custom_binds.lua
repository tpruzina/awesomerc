local awful = require("awful")

globalkeys = awful.util.table.join(globalkeys,
--MULTIMEDIA KEYS
    awful.key({ }, "XF86AudioRaiseVolume", function () awful.util.spawn("amixer -q set Master 4+") end),
    awful.key({ }, "XF86AudioLowerVolume", function () awful.util.spawn("amixer -q set Master 4-") end),
    awful.key({ }, "XF86MonBrightnessDown", function () awful.util.spawn("/usr/local/sbin/brightness down") end),
    awful.key({ }, "XF86MonBrightnessUp", function () awful.util.spawn("/usr/local/sbin/brightness up") end),
    awful.key({ }, "XF86AudioMute", function () awful.util.spawn("/home/tomas/bin/mute") end),
    awful.key({ }, "XF86Launch4", function () awful.util.spawn("/usr/sbin/hibernate-ram") end),
--CHANGE KEYBOARD LAYOUT
    awful.key({ modkey,           }, "Shift_R", function () kbdcfg.switch() end),
--KILL
    awful.key({ modkey, "Shift"   }, "#52",      function (c) c:kill()                         end),
--PROMPT EXECUTE
awful.key({ modkey },            "q",     function () mypromptbox[mouse.screen]:run() end)
)

