----------------------------
---------------------------
---- Plugins Obsidian ----
-------------------------
------------------------
--
-- https://github.com/epwalsh/obsidian.nvim

return {
  "epwalsh/obsidian.nvim",
  enabled = true,
  version = "*",
  lazy = true,
  ft = "markdown",
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  opts = {
    workspaces = {
      {
        name = "Obsidian",
        path = "/home/dane/Obsidian/",
        overrides = {
          -- notes_subdir = "Church/Sermon_Notes/"
        }
      },
      {
        name = "Podcasts",
        path = "/home/dane/Podcasts/"
      }
    },
    preferred_link_style = "markdown",
  },
}
