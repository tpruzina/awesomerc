local awful = require("awful")
local wibox = require("wibox")
local naughty = require("naughty")

kbdcfg = {}
        kbdcfg.cmd = "setxkbmap"
        kbdcfg.layout = {
                { "cz", "dvorak -option ctrl:nocaps"},
                { "us", "-variant dvp -option compose:102 -option keypad:atm -option ctrl:nocaps -option numpad:shift3 -option kpdl:semi"}
        }
        kbdcfg.current = 1  -- us is our default layout
        kbdcfg.widget = wibox.widget.textbox()
        kbdcfg.widget:set_text(" " .. kbdcfg.layout[kbdcfg.current][1] .. " ")
        kbdcfg.switch = function ()
        kbdcfg.current = kbdcfg.current % #(kbdcfg.layout) + 1
        local t = kbdcfg.layout[kbdcfg.current]
        kbdcfg.widget:set_text(" " .. t[1] .. " ")
        os.execute( kbdcfg.cmd .. " " .. t[1] .. " " .. t[2] )
        naughty.notify({title = "Keyboard Layout", text = t[1], timeout = 2})        
end

