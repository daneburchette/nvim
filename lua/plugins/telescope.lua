-----------------------------
----------------------------
---- Plugins Telescope ----
--------------------------
-------------------------
--
-- https://github.com/nvim-telescope/telescope.nvim

return {
  {
    "nvim-telescope/telescope.nvim",
    enabled = true,
    event = "VimEnter",
    branch = "0.1.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      {
        "nvim-telescope/telescope-fzf-native.nvim",
        build = "make",
        cond = function()
          return vim.fn.executable("make") == 1
        end,
      },
      { "nvim-telescope/telescope-ui-select.nvim" },
      { "nvim-tree/nvim-web-devicons",            enabled = vim.g.have_nerd_font },
    },
    config = function()
      require("telescope").setup({
        extensions = {
          ["ui-select"] = {
            require("telescope.themes").get_dropdown(),
          },
        },
      })

      -- Enable Telescope extensions if they are installed
      pcall(require("telescope").load_extension, "fzf")
      pcall(require("telescope").load_extension, "ui-select")
      local builtin = require("telescope.builtin")
      vim.keymap.set("n", "<leader>sb", builtin.builtin,
        { desc = "[s]earch telescope [b]uiltin", noremap = true, silent = true })
      vim.keymap.set("n", "<leader>sc", builtin.colorscheme,
        { desc = "[s]earch [c]olorscheme", noremap = true, silent = true })
      vim.keymap.set("n", "<leader>sd", builtin.diagnostics,
        { desc = "[s]earch [d]iagnostics", noremap = true, silent = true })
      vim.keymap.set("n", "<leader>sf", builtin.find_files,
        { desc = "[s]earch [f]iles", noremap = true, silent = true })
      vim.keymap.set("n", "<leader>sH", builtin.help_tags,
        { desc = "[s]earch [H]elp", noremap = true, silent = true })
      vim.keymap.set("n", "<leader>sk", builtin.keymaps,
        { desc = "[s]earch [k]eymaps", noremap = true, silent = true })
      vim.keymap.set("n", "<leader>sg", builtin.live_grep,
        { desc = "[s]earch by [g]rep", noremap = true, silent = true })
      vim.keymap.set("n", "<leader>sr", builtin.resume,
        { desc = "[s]earch [r]esume", noremap = true, silent = true })
      vim.keymap.set("n", "<leader>sR", builtin.oldfiles,
        { desc = "[s]earch [R]ecent files", noremap = true, silent = true })
      vim.keymap.set("n", "<leader>ss", builtin.spell_suggest,
        { desc = "[s]earch [s]pelling suggestions", noremap = true, silent = true })
      vim.keymap.set("n", "<leader>sw", builtin.grep_string,
        { desc = "[s]earch current [w]ord", noremap = true, silent = true })
      vim.keymap.set("n", "<leader><leader>", builtin.buffers,
        { desc = "[ ] find existing buffers", noremap = true, silent = true })
      -- Meme
      -- vim.keymap.set("n", "<leader>sp", builtin.planets, { desc = "[s]earch [p]lanets" })
      -- Advanced keymaps
      vim.keymap.set("n", "<leader>/", function()
        builtin.current_buffer_fuzzy_find(require("telescope.themes")
          .get_dropdown({
            winblend = 10,
            previewer = false,
          }))
      end, { desc = "[/] fuzzily search in current buffer" })
      vim.keymap.set("n", "<leader>s/", function()
        builtin.live_grep({
          grep_open_files = true,
          prompt_title = "Live Grep in Open Files",
        })
      end, { desc = "[s]earch [/] in open files" })
      vim.keymap.set("n", "<leader>sn", function()
        builtin.find_files({ cwd = vim.fn.stdpath("config") })
      end, { desc = "[s]earch [n]eovim files" })
      vim.keymap.set("n", "<leader>sl", function()
        builtin.find_files {
          cwd = vim.fs.joinpath(tostring(vim.fn.stdpath("data")), "lazy")
        }
      end, { desc = "[s]earch [l]azy files" })
    end,
  },
}
