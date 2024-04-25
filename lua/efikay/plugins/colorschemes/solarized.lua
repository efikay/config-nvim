return {
  "maxmx03/solarized.nvim",
  priority = 1000,
  enabled = false,
  config = function()
    vim.o.background = "dark"
    -- vim.o.background = "light"

    require('solarized').setup({
      transparent = true,
    })
    vim.cmd.colorscheme("solarized")
  end,
}
