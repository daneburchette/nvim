--------------------------
-------------------------
---- Config Options ----
-----------------------
----------------------

-- Readability
local opt = vim.opt

-- Leader
vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.g.have_nerd_font = true

-- General
opt.undofile = true

opt.backup = false
opt.writebackup = false

opt.mouse = "a"

opt.shortmess:append "sI"

vim.cmd("filetype plugin indent on")

-- Appearance
opt.breakindent = true
opt.cursorline = true
opt.linebreak = true
opt.number = true
opt.relativenumber = true
opt.splitbelow = true
opt.splitright = true
opt.termguicolors = true

opt.ruler = false
opt.showmode = false
opt.wrap = false

opt.breakindentopt = "sbr"
opt.colorcolumn = "80"
opt.cursorlineopt = "both"
opt.signcolumn = "yes"
opt.fillchars = "eob: "

--Editting
opt.confirm = true
opt.expandtab = true
opt.ignorecase = true
opt.incsearch = true
opt.infercase = true
opt.smartcase = true
opt.smartindent = true

opt.shiftwidth = 4
opt.softtabstop = 4
opt.tabstop = 4

opt.clipboard = "unnamedplus"
opt.completeopt = "menuone,noselect"
opt.formatoptions = "qjl1"
opt.inccommand = "split"
opt.virtualedit = "block"

-- Extra UI
opt.list = true
opt.listchars = {
  tab = "» ",
  extends = "…",
  precedes = "…",
  nbsp = "␣",
  trail = "·",
}
opt.scrolloff = 10
