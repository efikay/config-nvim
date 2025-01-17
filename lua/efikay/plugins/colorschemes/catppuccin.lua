return {
  "catppuccin/nvim",
  name = "catppuccin",
  priority = 1000,
  enabled = true,
  config = function()
    require("catppuccin").setup({
      flavour = "mocha",
      transparent_background = true, -- disables setting the background color.
    })

    vim.cmd("colorscheme catppuccin")
  end,
}
