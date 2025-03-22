-------------------------------
------------------------------
---- Plugins Lint Config ----
----------------------------
---------------------------
--
-- https://github.com/mfussenegger/nvim-lint

return {
  {
    "mfussenegger/nvim-lint",
    enabled = true,
    event = { "BufReadPre", "BufNewFile" },
    config = function()
      local lint = require "lint"
      lint.linters_by_ft = {
        json = { "jsonlint" },
        markdown = { "markdownlint" },
      }
      local lint_augroup = vim.api.nvim_create_augroup("lint", { clear = true })
      vim.api.nvim_create_autocmd({ "BufEnter", "BufWritePost", "InsertLeave" }, {
        group = lint_augroup,
        callback = function()
          if vim.opt_local.modifiable:get() then
            lint.try_lint()
          end
        end,
      })
    end,
  },
}
