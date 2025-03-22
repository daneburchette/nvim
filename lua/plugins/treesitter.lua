------------------------------
-----------------------------
---- Plugins Treesitter ----
---------------------------
--------------------------
--
-- https://github.com/nvim-treesitter/nvim-treesitter

return {
  {
    "nvim-treesitter/nvim-treesitter",
    enabled = true,
    build = ":TSUpdate",
    opts = {
      ensure_installed = {
        "bash",
        "c",
        "css",
        "diff",
        "html",
        "json",
        "jsonc",
        "lua",
        "luadoc",
        "markdown",
        "markdown_inline",
        "python",
        "rust",
        "toml",
        "vim",
        "vimdoc",
        "xml",
        "yaml",
      },
      auto_install = true,
      highlight = {
        enable = true,
        use_languagetree = true,
        additional_vim_regex_highlighting = { "ruby" },
      },
      indent = { enable = true, disable = { "ruby" } },
    },
    config = function(_, opts)
      require("nvim-treesitter.install").prefer_git = true
      ---@diagnostic disable-next-line: missing-fields
      require("nvim-treesitter.configs").setup(opts)
    end,
  },
}
