return {
  "goolord/alpha-nvim",
  event = "VimEnter",
  config = function()
    local alpha = require("alpha")
    local dashboard = require("alpha.themes.dashboard")

    -- Logo
    dashboard.section.header.val = {
      "    .__________________________.",
      "    | .___________________. |==|",
      "    | | ................. | |  |",
      "    | | ::::::Apple:::::: | |  |",
      "    | | ::::::::::::::::: | |  |",
      "    | | ::::::Think:::::: | |  |",
      "    | | ::::Different:::: | |  |",
      "    | | ::::::::::::::::: | |  |",
      "    | | ::::::::::::::::: | | ,|",
      "    | !___________________! |(c|",
      "    !_______________________!__!",
      "   /                            \\",
      "  /  [][][][][][][][][][][][][]  \\",
      " /  [][][][][][][][][][][][][][]  \\",
      "(  [][][][][____________][][][][]  )",
      " \\ ------------------------------ /",
      "  \\______________________________/",
    }

    -- Menu
    dashboard.section.buttons.val = {
      dashboard.button("e", " > New file", "<cmd>ene<CR>"),
      dashboard.button("SPC lg", " > Open LazyGit", "<cmd>LazyGit<CR>"),
      dashboard.button("SPC ee", "󰙅 > Toggle file explorer", "<cmd>NvimTreeToggle<CR>"),
      dashboard.button("SPC ff", "󰮗 > Find file", "<cmd>Telescope find_files<CR>"),
      dashboard.button("SPC fs", "󰨽 > Find word", "<cmd>Telescope live_grep<CR>"),
      dashboard.button("SPC wr", "󰦛 > Restore session for Current Directory", "<cmd>SessionRestore<CR>"),
      dashboard.button("q", "󰈆 > Quit NVIM", "<cmd>qa<CR>"),
    }

    -- Send config to alpha
    alpha.setup(dashboard.opts)

    -- Disable folding on alpha buffer
    vim.cmd([[autocmd FileType alpha setlocal nofoldenable]])
  end,
}
