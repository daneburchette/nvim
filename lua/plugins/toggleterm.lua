------------------------------
-----------------------------
---- Plugins Toggleterm ----
---------------------------
--------------------------
--
-- https://github.com/akinsho/toggleterm.nvim

return {
  "akinsho/toggleterm.nvim",
  enabled = true,
  version = "*",
  opts = {
    open_mapping = "<C-\\>",
    terminal_mappings = true,
    -- direction = "float",
    direction = "float",
    shade_terminals = true,
    autochdir = true,
  }
}
