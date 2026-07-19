-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua

-- keep more context on screen while scrolling
vim.opt.scrolloff = 2

-- more useful diffs (nvim -d)
vim.opt.diffopt:append("iwhite") -- ignore whitespace
vim.opt.diffopt:append("algorithm:histogram") -- smarter diff algorithm
vim.opt.diffopt:append("indent-heuristic")

-- show more hidden characters (extends LazyVim's defaults)
vim.opt.listchars = {
  tab = "^ ",
  nbsp = "¬",
  extends = "»",
  precedes = "«",
  trail = "•",
}

-- never ever make my terminal beep
vim.opt.vb = true
