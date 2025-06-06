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
    opts = {
      delay = 0,
      icons = {
        mappings = vim.g.have_nerd_font,
        keys = vim.g.have_nerd_font and {} or {
          Up = '<Up> ',
          Down = '<Down> ',
          Left = '<Left> ',
          Right = '<Right> ',
          C = '<C-…> ',
          M = '<M-…> ',
          D = '<D-…> ',
          S = '<S-…> ',
          CR = '<CR> ',
          Esc = '<Esc> ',
          ScrollWheelDown = '<ScrollWheelDown> ',
          ScrollWheelUp = '<ScrollWheelUp> ',
          NL = '<NL> ',
          BS = '<BS> ',
          Space = '<Space> ',
          Tab = '<Tab> ',
          F1 = '<F1>',
          F2 = '<F2>',
          F3 = '<F3>',
          F4 = '<F4>',
          F5 = '<F5>',
          F6 = '<F6>',
          F7 = '<F7>',
          F8 = '<F8>',
          F9 = '<F9>',
          F10 = '<F10>',
          F11 = '<F11>',
          F12 = '<F12>',
        },
        spec = {
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
        },
      },
    },
  },
}
