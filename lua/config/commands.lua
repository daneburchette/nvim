---------------------------
--------------------------
---- Config Commands ----
------------------------
-----------------------

-- Toggle function for Oil.nvim
local oilToggle = function(float)
  float = float or false
  if vim.api.nvim_get_option_value("filetype", { buf = vim.api.nvim_get_current_buf() }) == "oil" then
    if float then vim.cmd("q") else vim.cmd("b#") end
  else
    if float then vim.cmd("Oil --float") else vim.cmd("Oil") end
  end
end

-- Toggle Oil.nvim commands
vim.api.nvim_create_user_command("OilToggle", function()
  oilToggle()
end, { nargs = 0 })
vim.api.nvim_create_user_command("OilToggleFloat", function()
  oilToggle(true)
end, { nargs = 0 })

-- Auto highlight on yank
vim.api.nvim_create_autocmd("TextYankPost", {
  desc = "Highlight when yanking text",
  group = vim.api.nvim_create_augroup("highlight-yank", { clear = false }),
  callback = function()
    vim.highlight.on_yank()
  end,
})

-- Markdown Shortcuts
local emphasize = function(count)
  count = tostring(count)
  local command = count .. "I*\027" .. count .. "A*\027" -- \027 ASCII for <Esc>
  if vim.bo.filetype == "markdown" then
    vim.api.nvim_feedkeys(command, "n", false)
  else
    print("Can Only Emphasize Text in Markdown Files!")
  end
end

local blockquote = function()
  local command = "I< \027$"
  if vim.bo.filteype == "markdown" then
    vim.api.nvim_feedkeys(command, "n", false)
  else
    print("Can Only Blockquote Text in Markdown Files!")
  end
end

-- Markdown commands
vim.api.nvim_create_user_command(
  "Blockquote",
  function()
    blockquote()
  end,
  { nargs = 0, desc = "Add blockquote to line of text (markdown only)" }
)

vim.api.nvim_create_user_command(
  "Emphasize",
  function(opts)
    emphasize(opts.args)
  end,
  { nargs = 1, desc = "Emphasize text with a given count (markdown only)" }
)

-- Set local options for markdown/gitcommit files
vim.api.nvim_create_autocmd("FileType", {
  group = vim.api.nvim_create_augroup("Markdown and GitCommit Custom", { clear = true }),
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
