-------------------------------
------------------------------
---- Config AutoCommands ----
----------------------------
---------------------------

-- Auto highlight on yank
vim.api.nvim_create_autocmd("TextYankPost", {
  desc = "Highlight when yanking text",
  group = vim.api.nvim_create_augroup("highlight-yank", { clear = false }),
  callback = function()
    vim.highlight.on_yank()
  end,
})

-- Set local options for markdown/gitcommit files
vim.api.nvim_create_autocmd("FileType", {
  group = vim.api.nvim_create_augroup("Markdown and GitCommit Custom",
    { clear = true }),
  pattern = { "gitcommit", "markdown" },
  callback = function()
    vim.opt_local.conceallevel = 2
    vim.opt_local.spell = true
    vim.opt_local.tabstop = 2
    vim.opt_local.softtabstop = 2
    vim.opt_local.shiftwidth = 2
  end,
})

-- Set local options for python files
vim.api.nvim_create_autocmd("FileType", {
  group = vim.api.nvim_create_augroup("Python Custom", { clear = true }),
  pattern = { "python" },
  callback = function()
    vim.opt_local.colorcolumn = "79"
  end,
})
