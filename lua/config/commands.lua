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
  if vim.bo.filetype == "markdown" then
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
