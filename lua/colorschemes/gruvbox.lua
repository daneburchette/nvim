-------------------------------
------------------------------
---- Colorscheme Gruvbox ----
----------------------------
---------------------------
--
-- https://github.com/ellisonleao/gruvbox.nvim

return {
	"ellisonleao/gruvbox.nvim",
	enabled = true,
	priority = 1000,
	config = function()
		require("gruvbox").setup({
			terminal_colors = true,
			undercurl = true,
			underline = true,
			bold = true,
			italic = {
				strings = true,
				emphasis = true,
				comments = true,
				operators = false,
				folds = true,
			},
			strikethrough = true,
			invert_selection = false,
			invert_signs = false,
			invert_tabline = false,
			inverse = true,
			contrast = "",
			palette_overrides = {},
			overrides = {},
			dim_inactive = true,
			transparent_mode = true,
		})
	end,
}
