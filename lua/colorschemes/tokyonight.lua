----------------------------------
---------------------------------
---- Colorscheme Tokyonight ----
-------------------------------
------------------------------
--
-- https://github.com/folke/tokyonight.nvim

return {
  "folke/tokyonight.nvim",
  enabled = true,
  priority = 1000,
  config = function()
    require("tokyonight").setup({
      style = "moon",
      light_style = "day",
      transparent = true,
      terminal_colors = false,
      styles = {
        comments = {},
        keywords = {},
        functions = {},
        variables = {},
        sidebars = "dark",
        floats = "dark",
      },
      sidebars = { "qf", "help" },
      day_brightness = 0.3,
      dim_inactive = true,
      lualine_bold = false,
      ---@param colors ColorScheme
      on_colors = function(colors) end,
      ---@param highlights tokyonight.Highlights
      ---@param colors ColorScheme
      on_highlights = function(highlights, colors) end,
      cache = true,
      ---@type table<string, boolean|{enabled:boolean}>
      plugins = {
        all = package.loaded.lazy == nil,
        auto = true,
      },
    })
  end,
}
