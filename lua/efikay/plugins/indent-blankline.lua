return {
  "lukas-reineke/indent-blankline.nvim",
  event = { "BufReadPre", "BufNewFile" },
  main = "ibl",
  opts = {
    indent = {
      -- https://en.wikipedia.org/wiki/Box-drawing_characters
      char = "│",
    },
  },
}
