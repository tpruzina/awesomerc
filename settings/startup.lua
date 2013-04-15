require("myrc.run_once")
local awful = require("awful")

run_once("firefox")
run_once("urxvtd","urxvtd --quiet --opendisplay --fork")

awful.util.spawn_with_shell("synclient tapbutton1=1")
