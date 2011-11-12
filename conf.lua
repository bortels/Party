-- Support file for lovecodify
-- http://crankgaming.blogspot.com/2011/11/lovecodify-wrapper-library-to-run.html

function love.conf(t)
    t.title = "Party using LoveCodify"        -- The title of the window the game is in (string)
    t.author = "Tom Bortels"  -- The author of the game (string)
    t.identity = nil            -- The name of the save directory (string)
    t.version = 0               -- The LÖVE version this game was made for (number)
    t.console = true           -- Attach a console (boolean, Windows only)
    t.screen.width = 748        -- The window width (number)
    t.screen.height = 748       -- The window height (number)
end
