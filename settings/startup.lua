require("myrc.run_once")
local awful = require("awful")

--run_once("firefox")
run_once("urxvtd","urxvtd --quiet --opendisplay --fork")

awful.util.spawn_with_shell("synclient tapbutton1=1")

awful.util.spawn_with_shell("xrandr --setprovideroutputsource modesetting NVIDIA-0")
awful.util.spawn_with_shell("sleep 1 && xrandr --auto")
awful.util.spawn_with_shell("xrandr -q")
awful.util.spawn_with_shell("xrandr --listproviders")
