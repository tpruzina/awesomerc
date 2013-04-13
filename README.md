awesomerc
=========

Awesome WM 3.5 Configuration

*Based on Gentoos default rc.file
*Modular
*Simple
*Without fancy themes, widgets etc
*Custom binds are tuned for both dvorak programming layout (dvp)

<pre>
.
├── myrc                -custom functions (change kb layout, run once...)
│   ├── error.lua
│   ├── kb_layout.lua
│   └── run_once.lua
├── rc.lua              -main rc (calls other modules)
├── README.md           -this file
├── settings            -user settings
│   ├── menus.lua
│   ├── startup.lua
│   ├── tags.lua
│   ├── wallpaper.lua
│   └── window_rules.lua
└── stock               -untouched parts of gentoo's default config
    ├── binds.lua
    ├── signals.lua
    └── wiboxrc.lua

</pre>
