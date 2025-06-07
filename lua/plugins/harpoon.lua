---------------------------
--------------------------
---- Plugins Harpoon ----
------------------------
-----------------------
--
-- https://github.com/theprimeagen/harpoon

return {
  "ThePrimeagen/harpoon",
  branch = "harpoon2",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-telescope/telescope.nvim"
  },
  config = function()
    local harpoon = require("harpoon")

    harpoon:setup()

    vim.keymap.set("n", "<leader>ha", function()
      harpoon:list():add()
    end, { desc = "[h]arpoon [a]dd" })
    vim.keymap.set("n", "<leader>hr", function()
      harpoon:list():remove()
    end, { desc = "[h]arpoon [r]emove" })
    vim.keymap.set("n", "<leader>H", function()
      harpoon.ui:toggle_quick_menu(harpoon:list())
    end, { desc = "open [H]arpoon list" })

    vim.keymap.set("n", "<leader>1", function()
      harpoon:list():select(1)
    end, { desc = "harpoon file [1]" })
    vim.keymap.set("n", "<leader>2", function()
      harpoon:list():select(2)
    end, { desc = "harpoon file [2]" })
    vim.keymap.set("n", "<leader>3", function()
      harpoon:list():select(3)
    end, { desc = "harpoon file [3]" })
    vim.keymap.set("n", "<leader>4", function()
      harpoon:list():select(4)
    end, { desc = "harpoon file [4]" })
    vim.keymap.set("n", "<leader>5", function()
      harpoon:list():select(5)
    end, { desc = "harpoon file [5]" })
    vim.keymap.set("n", "<leader>6", function()
      harpoon:list():select(6)
    end, { desc = "harpoon file [7]" })
    vim.keymap.set("n", "<leader>7", function()
      harpoon:list():select(7)
    end, { desc = "harpoon file [4]" })
    vim.keymap.set("n", "<leader>8", function()
      harpoon:list():select(8)
    end, { desc = "harpoon file [8]" })
    vim.keymap.set("n", "<leader>9", function()
      harpoon:list():select(9)
    end, { desc = "harpoon file [9]" })

    -- vim.keymap.set("n", "<leader>h1", function()
    --   harpoon:list():select(1)
    -- end, { desc = "[h]arpoon file [1]" })
    -- vim.keymap.set("n", "<leader>h2", function()
    --   harpoon:list():select(2)
    -- end, { desc = "[h]arpoon file [2]" })
    -- vim.keymap.set("n", "<leader>h3", function()
    --   harpoon:list():select(3)
    -- end, { desc = "[h]arpoon file [3]" })
    -- vim.keymap.set("n", "<leader>h4", function()
    --   harpoon:list():select(4)
    -- end, { desc = "[h]arpoon file [4]" })
    -- vim.keymap.set("n", "<leader>h5", function()
    --   harpoon:list():select(5)
    -- end, { desc = "[h]arpoon file [5]" })
    -- vim.keymap.set("n", "<leader>h6", function()
    --   harpoon:list():select(6)
    -- end, { desc = "[h]arpoon file [6]" })
    -- vim.keymap.set("n", "<leader>h7", function()
    --   harpoon:list():select(7)
    -- end, { desc = "[h]arpoon file [7]" })
    -- vim.keymap.set("n", "<leader>h8", function()
    --   harpoon:list():select(8)
    -- end, { desc = "[h]arpoon file [8]" })
    -- vim.keymap.set("n", "<leader>h9", function()
    --   harpoon:list():select(9)
    -- end, { desc = "[h]arpoon file [9]" })

    vim.keymap.set("n", "<leader>hn", function()
      harpoon:list():prev()
    end, { desc = "[h]arpoon [p]revious" })
    vim.keymap.set("n", "<leader>hp", function()
      harpoon:list():next()
    end, { desc = "[h]arpoon [n]ext" })

    local conf = require("telescope.config").values
    local function toggle_telescope(harpoon_files)
      local file_paths = {}
      for _, item in ipairs(harpoon_files.items) do
        table.insert(file_paths, item.value)
      end

      require("telescope.pickers").new({}, {
        prompt_title = "Harpoon",
        finder = require("telescope.finders").new_table({
          results = file_paths,
        }),
        previewer = conf.file_previewer({}),
        sorter = conf.generic_sorter({}),
      }):find()
    end

    vim.keymap.set("n", "<leader>sh", function()
      toggle_telescope(harpoon:list())
    end, { desc = "[s]earch [h]arpoon" })
  end
}
