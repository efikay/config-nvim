return {
  "nvim-treesitter/nvim-treesitter",
  event = { "BufReadPre", "BufNewFile" },
  build = ":TSUpdate",
  dependencies = {
    "windwp/nvim-ts-autotag",
    "nvim-treesitter/nvim-treesitter-textobjects",
  },
  config = function()
    local treesitter = require("nvim-treesitter.configs")

    treesitter.setup({
      -- enable syntax highlight
      highlight = {
        enable = true,
      },
      -- enable indentation
      indent = {
        enable = true,
      },
      -- enable autotagging (w/ nvim-ts-autotag)
      autotag = {
        enable = true,
      },
      -- ensure these language parsers are installed
      ensure_installed = {
        "json",
        "javascript",
        "typescript",
        "tsx",
        "html",
        "css",
        "yaml",
        "markdown",
        "markdown_inline",
        "lua",
        "bash",
        "c",
        "vim",
        "dockerfile",
        "gitignore",
        "query",
        "vimdoc",
        "c",
      },
      incremental_selection = {
        enable = true,
        keymaps = {
          init_selection = "<C-i>",
          node_incremental = "<C-i>",
          scope_incremental = false,
          node_decremental = "<bs>",
        },
      },
    })
  end,
}
