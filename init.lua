------------------------------
-----------------------------
---- NeoVim Config Init ----
---------------------------
--------------------------

-- ./lua/config/options.lua
require("config.options")

-- ./lua/config/autocmds.lua
require("config.autocmds")

-- ./lua/config/commands.lua
require("config.commands")

-- ./lua/config/keymaps.lua
require("config.keymaps")

-- ./lua/config/lazy-bootstrap.lua
require("config.lazy-bootstrap")

-- Set colorscheme

-- ./lua/colorschemes/catppuccin.lua
-- vim.cmd([[colorscheme catppuccin]])

-- ./lua/colorschemes/kanagawa.lua
-- vim.cmd([[colorscheme kanagawa]])

-- ./lua/colorschemes/onedark.lua
-- vim.cmd([[colorscheme onedark]])

-- ./lua/colorschemes/rosepine.lua
-- vim.cmd([[colorscheme rose-pine]])

-- ./lua/colorschemes/tokyonight.lua
vim.cmd([[colorscheme tokyonight]])
