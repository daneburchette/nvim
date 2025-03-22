------------------------
-----------------------
---- Plugins Mini ----
---------------------
--------------------
--
-- https://github.com/echasnovski/mini.nvim

return {
  "echasnovski/mini.nvim",
  enabled = false,
  version = false,
  config = function()
    require("mini.ai").setup { n_line = 500 }
    require("mini.surround").setup()
    local statusline = require "mini.statusline"
    statusline.setup { use_icons = vim.g.have_nerd_font }
    ---@diagnostic disable-next-line: duplicate-set-field
    statusline.section_location = function()
      return "%2l:%-2v"
    end
  end,
}
