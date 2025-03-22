-----------------------
----------------------
---- Plugins Oil ----
--------------------
-------------------
--
-- https://github.com/stevearc/oil.nvim

return {
  'stevearc/oil.nvim',
  enabled = true,
  ---@module 'oil'
  ---@type oil.SetupOpts
  opts = {},
  dependencies = { "nvim-tree/nvim-web-devicons" },
  lazy = false,
}
