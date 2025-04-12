--------------------------
-------------------------
---- Config Keymaps ----
-----------------------
----------------------

-- Readability
local map = function(key, cmd, desc, mode)
  mode = mode or "n"
  vim.keymap.set(mode, key, cmd, { desc = desc, noremap = true, silent = true })
end

-- Easier Navigation
map("<C-h>", "<C-w>h", "Go to the left pane")
map("<C-j>", "<C-w>j", "Go to the down pane")
map("<C-k>", "<C-w>k", "Go to the up pane")
map("<C-l>", "<C-w>l", "Go to the right pane")

map("<C-d>", "<C-d>zz", "Scroll ½ Page Up and Center", { "n", "v" })
map("<C-u>", "<C-u>zz", "Scroll ½ Page Down and Center", { "n", "v" })
map("n", "nzz", "[n]ext search result forward", { "n", "v" })
map("N", "Nzz", "[N]ext search result backward", { "n", "v" })
map("gg", "gg0", "Go to beginning of file", { "n", "v" })

map("<C-v>", "<C-w>v", "New Vertical Split")
map("<C-s>", "<C-w>s", "New Horizonal Split")
map("<C-q>", "<C-w>q", "Close Current Window")

map("<Esc>", "<cmd>nohlsearch<CR>", "Clear search highlight")

map("<leader>q", vim.diagnostic.setloclist, "Open diagnostic [q]uickfix list")

-- Buffer Navigation
map("gb", "<cmd>bnext<CR>", "[g]o to next [b]uffer")
map("gB", "<cmd>bprevious<CR>", "[g]o to previous [B]uffer")
map("<leader>bn", "<cmd>bnext<CR>", "[b]uffer [n]ext")
map("<leader>bp", "<cmd>bprevious<CR>", "[b]uffer [p]revious")
map("<leader>bf", "<cmd>bfirst<CR>", "[b]uffer [f]irst")
map("<leader>bl", "<cmd>blast<CR>", "[b]uffer [l]ast")

-- Tab Navigation
map("<leader>tc", "<cmd>tabclose<CR>", "[t]ab [c]lose")
map("<leader>tN", "<cmd>tabnew<CR>", "[t]ab [N]ew")
map("<leader>tn", "<cmd>tabnext<CR>", "[t]ab [n]ext")
map("<leader>tp", "<cmd>tabprevious<CR>", "[t]ab [p]revious")

-- Special Commands
map("<leader>id", "<cmd>r! date '+\\%B \\%d, \\%Y'<CR>kJ", "[i]nsert [d]ate")
map("<leader>ii", "<cmd>Emphasize 1<CR>", "[i]nsert [i]talics (markdown only)")
map("<leader>ib", "<cmd>Emphasize 2<CR>", "[i]nsert [b]old (markdown only)")
map("<leader>iB", "<cmd>Emphasize 3<CR>",
  "[i]nsert [B]old-italics (markdown only)")
map("<leader>iq", "<cmd>Blockquote<CR>", "[i]nsert block[q]uote (markdown only)")
map("<leader>Tb",
  "<cmd>lua vim.o.bg = vim.o.bg == 'dark' and 'light' or 'dark'; print(vim.o.background)<CR>",
  "[T]oggle [b]background")
map("<leader>Tc", "<cmd>setlocal cursorline! cursorline?<CR>",
  "[T]oggle [c]ursorline")
map("<leader>TC", "<cmd>setlocal cursorcolumn! cursorcolumn?<CR>",
  "[T]oggle [C]ursorcolumn")
map("<leader>Ti", "<cmd>setlocal ignorecae!<CR>", "[T]oggle [i]gnorecase")
map("<leader>Tl", "<cmd>setlocal list! list?<CR>", "[T]oggle [l]ist")
map("<leader>Tn", "<cmd>setlocal number! number?<CR>", "[T]oggle [n]umber")
map("<leader>Tr", "<cmd>setlocal relativenumber! relativenumber?<CR>",
  "[T]oggle [r]elativenumber")
map("<leader>Ts", "<cmd>setlocal spell! spell?<CR>", "[T]oggle [s]pell check")
map("<leader>Tw", "<cmd>setlocal wrap! wrap?<CR>", "[T]oggle [w]rap")

map("<leader>wk", "<cmd>WhichKey <CR>", "[w]hich-[k]ey all keymaps")

map("<leader>pl", "<cmd>Lazy<CR>", "[p]lugins - [l]azy Vim Manager")
map("<leader>pL", "<cmd>Lazy update<CR>", "[p]lugins - [L]azy Vim Update")
map("<leader>pm", "<cmd>Mason<CR>", "[p]lugins - [m]ason LSP Manager")
map("<leader>pM", "<cmd>MasonToolsUpdateSync<CR>",
  "[p]lugins - [M]ason LSP Update")

map("\\", "<cmd>Neotree<CR>", "open NeoTree")
map("gO", "<cmd>OilToggle<CR>", "[g]o to [O]il")
map("go", "<cmd>OilToggleFloat<CR>", "[g]o to [o]il, floating")
