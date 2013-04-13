local awful = require("awful")

-- LAYOUTS
layouts =
{
    awful.layout.suit.floating,
    awful.layout.suit.tile,
--    awful.layout.suit.tile.left,
    awful.layout.suit.tile.bottom,
--    awful.layout.suit.tile.top,
    awful.layout.suit.fair,
--    awful.layout.suit.fair.horizontal,
--    awful.layout.suit.spiral,
--    awful.layout.suit.spiral.dwindle,
    awful.layout.suit.max,
--    awful.layout.suit.max.fullscreen,
--    awful.layout.suit.magnifier
}

-- TAGS (aka screens)
-- two options, for single or dual display
tags = {}
if screen.count() == 1 then
    tags1_1 = {
               names  = { "[web]", "[shell]", "[work]", "[coding]", "[mail/calendar]", "[music]", "[other]" },
              layout = { layouts[2], layouts[2], layouts[2], layouts[4], layouts[2], layouts[2], layouts[3] }
              }
              tags[1] = awful.tag(tags1_1.names, 1, tags1_1.layout)
else

    tags2_1 = {
               names  = { "[web]", "[shell]", "[work]", "[coding]", "[mail/calendar]", "[music]", "[other]" },
               layout = { layouts[1], layouts[1], layouts[1], layouts[1], layouts[1], layouts[1], layouts[3] }
              }

    tags2_2 = {
              names  = { "[code]", "[web]", "[chat]", "[misc]" },
              layout = { layouts[1], layouts[3], layouts[1], layouts[3] }
               }

              tags[1] = awful.tag(tags2_1.names, 1, tags2_1.layout)
              tags[2] = awful.tag(tags2_2.names, 2, tags2_2.layout)
end
--- }}}

