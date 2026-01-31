-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices.

-- For example, changing the initial geometry for new windows:
config.initial_cols = 120
config.initial_rows = 28

-- or, changing the font size and color scheme.
config.font_size = 12

-- config.color_scheme = 'Atelier Forest Light (base16)'
-- config.color_scheme = 'Atelier Sulphurpool (base16)'
-- config.color_scheme = 'Atelierdune (light) (terminal.sexy)'
-- config.color_scheme = 'AtelierSulphurpool'
-- config.color_scheme = 'Apple Classic'
-- config.color_scheme = 'Apple System Colors'
-- config.color_scheme = 'Argonaut'
-- config.color_scheme = 'Atom'
-- config.color_scheme = 'C64'
-- config.color_scheme = 'Chalk (dark) (terminal.sexy)'
-- config.color_scheme = 'Cloud (terminal.sexy)'
-- config.color_scheme = 'Cobalt Neon (Gogh)'
-- config.color_scheme = 'coffee_theme'
-- config.color_scheme = 'Colorcli (Gogh)'
-- config.color_scheme = 'Cyberdyne'
-- config.color_scheme = 'cyberpunk'
config.color_scheme = 'Dark Violet (base16)'
config.color_scheme = 'Dawn (terminal.sexy)'
config.color_scheme = 'Deafened (terminal.sexy)'
config.color_scheme = 'dirtysea (base16)'
config.color_scheme = 'DjangoSmooth'
config.color_scheme = 'DoomOne'
config.color_scheme = 'Gruvbox Dark (Gogh)'
config.color_scheme = 'Scarlet Protocol'
config.color_scheme = 'Selenized Dark (Gogh)'
config.color_scheme = 'Selenized Light (Gogh)'
config.color_scheme = 'Shades of Purple (base16)'
config.color_scheme = 'Solarized (light) (terminal.sexy)'
config.color_scheme = 'Solarized Darcula'
config.color_scheme = 'Grape'
config.color_scheme = 'Grass'
config.color_scheme = 'Green Screen (base16)'
config.color_scheme = 'Gruvbox Dark (Gogh)'
config.color_scheme = 'Nebula (base16)'
config.color_scheme = 'Neon'
config.color_scheme = 'Neopolitan'
config.color_scheme = 'nord'

local act = wezterm.action

config.keys = {
  -- Rebind OPT-Left, OPT-Right as ALT-b, ALT-f respectively to match Terminal.app behavior
  {
    key = 'LeftArrow',
    mods = 'OPT',
    action = act.SendKey {
      key = 'b',
      mods = 'ALT',
    },
  },
  {
    key = 'RightArrow',
    mods = 'OPT',
    action = act.SendKey { key = 'f', mods = 'ALT' },
  },
}

-- Finally, return the configuration to wezterm:
return config
