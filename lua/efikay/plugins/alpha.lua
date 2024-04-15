return {
  "goolord/alpha-nvim",
  event = "VimEnter",
  config = function()
    local alpha = require("alpha")
    local dashboard = require("alpha.themes.dashboard")

    -- Logo
    dashboard.section.header.val = {
      "                                         ",
      "                              _          ",
      "   ____   ___   ____  _   __ (_)____ ___ ",
      "  / __ \\ / _ \\ / __ \\| | / // // __ `__ \\",
      " / / / //  __// /_/ /| |/ // // / / / / /",
      "/_/ /_/ \\___/ \\____/ |___//_//_/ /_/ /_/ ",
      "                                         ",
    }

    -- Menu
    dashboard.section.buttons.val = {
      dashboard.button( "e", "  > New file" , "<cmd>ene<CR>"),
      dashboard.button( "SPC ee", "EE > Toggle file explorer", "<cmd>NvimTreeToggle<CR>"),
      dashboard.button( "SPC ff", "FF > Find file", "<cmd>Telescope find_files<CR>"),
      dashboard.button( "SPC fs", "FS > Find word", "<cmd>Telescope live_grep<CR>"),
      dashboard.button( "SPC wr", "FS > Restore session for Current Directory", "<cmd>SessionRestore<CR>"),
      dashboard.button( "q", "Q  > Quit NVIM", "<cmd>qa<CR>"),
    }

    -- Send config to alpha
    alpha.setup(dashboard.opts)

    -- Disable folding on alpha buffer
    vim.cmd([[autocmd FileType alpha setlocal nofoldenable]])
  end,
}
