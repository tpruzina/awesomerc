local beautiful = require("beautiful")
local gears = require("gears")

-- sets wallpaper per earch screen
if beautiful.wallpaper then
    for s = 1, screen.count() do
        gears.wallpaper.maximized(beautiful.wallpaper, s, true)
    end
end

