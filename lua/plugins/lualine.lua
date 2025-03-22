---------------------------
--------------------------
---- Plugins Lualine ----
------------------------
-----------------------
--
-- https://github.com/nvim-lualine/lualine.nvim

return {
  "nvim-lualine/lualine.nvim",
  enabled = true,
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    require("lualine").setup {
      options = {
        icons_enabled = true,
        -- theme = "tokyonight-moon",
        component_separators = { left = "", right = "" },
        section_separators = { left = "", right = "" },
        disabled_filetypes = {
          statusline = {},
          winbar = {},
        },
        ignore_focus = {},
        always_divide_middle = true,
        globalstatus = false,
        refresh = {
          statusline = 1000,
          tabline = 1000,
          winbar = 1000,
        }
      },
      sections = {
        lualine_a = {
          {
            "mode",
            icons_enabled = true,
          },
        },
        lualine_b = { "branch", "diff", "diagnostics" },
        lualine_c = { "filename" },
        lualine_x = { "encoding", "filetype" },
        lualine_y = { "searchcount", "progress" },
        lualine_z = { "location" }
      },
      inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = {
          {
            "filename",
            path = 1,
          },
        },
        lualine_x = { "location" },
        lualine_y = {},
        lualine_z = {}
      },
      tabline = {
        lualine_a = {
          {
            "buffers",
            hide_filename_extension = true,
            use_mode_colors = true,
          }
        },
        lualine_b = {},
        lualine_c = {},
        lualine_x = {},
        lualine_y = {
          {
            "filename",
            file_status = true,
            newfile_status = true,
            path = 1,
            shorting_target = 40,
          }
        },
        lualine_z = {
          {
            "tabs",
            use_mode_colors = true,
          }
        },
      },
      winbar = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = {},
        lualine_x = {},
        lualine_y = {},
        lualine_z = {}
      },
      inactive_winbar = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = {},
        lualine_x = {},
        lualine_y = {},
        lualine_z = {}
      },
      extensions = {}
    }
  end,
}
