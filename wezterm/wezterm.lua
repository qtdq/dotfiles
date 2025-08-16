local wezterm = require 'wezterm'
local config = {}

config.default_prog = {"/usr/bin/bash", "--noprofile"}

-- Font
config.font_size = 12 -- default
config.line_height = 1 -- default
-- config.font = wezterm.font('Source Code Pro')

-- Appearance
config.hide_tab_bar_if_only_one_tab = true
config.window_padding = {left = 4, right = 0, top = 2, bottom = 0}

-- Misc
config.max_fps = 75

-- Opacity
config.window_background_opacity = 0.46
config.text_background_opacity = 0.9

-- Colours
config.color_scheme = 'Vesper'

-- Dusty blue --
-- Violet Dark		Very depressed, a bit hard to read
-- Tomorrow Night	My favourite, not that eyecandy though
-- Flatland		My favourite, bight, can be changed to perfection

-- Pupleish --
-- Urple		Strange
-- Sakura		Bright pink & purple
-- Vesper		High contrast bnw, good

-- Brownish
-- Square		Comfortably dull, a bit brown
-- SleepyHollow		Brown, like tones

-- Other
-- Seafoam Pastel	Aquamarine
-- SeaShells dark blue & orange
-- Seti dark, green, blue, confy simple
-- Smyck high contrast
-- Spacedust dark blue, bleashed green

return config
