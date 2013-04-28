require("myrc.run_once")
local awful = require("awful")

run_once("firefox")
run_once("pidgin")
run_once("synclient tapbutton1=1")
run_once("urxvtd","urxvtd --quiet --opendisplay --fork")
run_once("/home/tomas/projects/spreload/spreload /home/tomas/.mozilla/firefox/new")
