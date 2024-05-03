return {
  "iruzo/matrix-nvim",
  name = "matrix",
  priority = 1000,
  enabled = false,
  config = function()
    vim.g.matrix_disable_background = true -- true=use terminal background

    vim.cmd("colorscheme matrix")
  end,
}
