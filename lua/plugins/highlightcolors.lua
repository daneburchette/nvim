------------------------------------------
-----------------------------------------
---- Plugins Nvim Hightlight Colors ----
---------------------------------------
--------------------------------------
--
-- https://github.com/brenoprata10/nvim-highlight-colors

return {
  "brenoprata10/nvim-highlight-colors",
  enabled = true,
  config = function()
    require("nvim-highlight-colors").setup()
  end
}
