-----------------------------
----------------------------
---- Plugins Which-Key ----
--------------------------
-------------------------
--
-- https://github.com/folke/which-key.nvim

return {
  {
    "folke/which-key.nvim",
    enabled = true,
    event = "VimEnter",
    config = function()
      require("which-key").setup()
      -- Document existing key chains
      require("which-key").add({
        { "<leader>b", group = "[b]uffer" },
        { "<leader>t", group = "[t]abs" },
        { "<leader>c", group = "[c]ode" },
        { "<leader>d", group = "[d]ocument" },
        { "<leader>g", group = "[g]it" },
        { "<leader>h", group = "[h]arpoon" },
        { "<leader>i", group = "[i]nsert" },
        { "<leader>r", group = "[r]ename" },
        { "<leader>s", group = "[s]earch" },
        { "<leader>w", group = "[w]orkspace" },
        { "<leader>T", group = "[T]oggle" },
        { "<leader>p", group = "[p]lugins Menu" },
      })
    end,
  },
}
