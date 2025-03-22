--------------------
-------------------
---- Neo-Tree ----
-----------------
----------------
--
-- https://github.com/nvim-neo-tree/neo-tree.nvim

return {
  "nvim-neo-tree/neo-tree.nvim",
  enabled = true,
  version = "*",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
  },
  cmd = "Neotree",
  keys = {
    { "\\", ":Neotree reveal<CR>", { desc = "NeoTree reveal" } },
  },
  opts = {
    filesystem = {
      window = {
        mappings = {
          ["\\"] = "close_window",
        },
      },
    },
  },
  vim.filetype.add({
    pattern = { [".*/hypr/.*%.conf"] = "hyprlang" },
  })
}
