return {
  "folke/zen-mode.nvim",
  config = function()
    local zm = require("zen-mode")
    zm.setup({
      window = {
        width = 0.8, -- width of the Zen window
        options = {
          -- foldcolumn = "0", -- disable fold column
          -- signcolumn = "no", -- disable signcolumn
          number = false, -- disable number column
          relativenumber = false, -- disable relative numbers
          -- cursorline = false, -- disable cursorline
          -- cursorcolumn = false, -- disable cursor column
          -- foldcolumn = "0", -- disable fold column
          -- list = false, -- disable whitespace characters
        },
      },
    })

    vim.keymap.set("n", "<leader>zz", zm.toggle)
  end,
}
