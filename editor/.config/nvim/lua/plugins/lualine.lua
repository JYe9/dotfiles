return {
  {
    "nvim-lualine/lualine.nvim",
    opts = function(_, opts)
      local gruvbox = require("lualine.themes.gruvbox_dark")
      -- NORMAL mode: green bg instead of gray
      gruvbox.normal.a.bg = "#b8bb26"
      gruvbox.normal.a.fg = "#282828"
      -- override LazyVim's default theme = "auto"
      opts.options = opts.options or {}
      opts.options.theme = gruvbox
      return opts
    end,
  },
}
