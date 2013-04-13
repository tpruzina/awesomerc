require("myrc.run_once")
require("awful")

run_once("firefox")
run_once("pidgin")
run_once("synclient tapbutton1=1")
run_once("urxvtd","urxvtd --quiet --opendisplay --fork")

awful.util.spawn("xmodmap -e 'keysym Multi_key = Super_R'")

