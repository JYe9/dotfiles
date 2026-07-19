-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua

-- make missing : less annoying (; acts as :)
vim.keymap.set("n", ";", ":")

-- quick-save
vim.keymap.set("n", "<leader>w", "<cmd>w<cr>", { desc = "Save" })

-- <leader><leader> toggles between buffers
vim.keymap.set("n", "<leader><leader>", "<c-^>", { desc = "Toggle Buffer" })

-- let the left and right arrows switch buffers
vim.keymap.set("n", "<left>", ":bp<cr>", { desc = "Prev Buffer" })
vim.keymap.set("n", "<right>", ":bn<cr>", { desc = "Next Buffer" })

-- always center search results
vim.keymap.set("n", "n", "nzz", { silent = true })
vim.keymap.set("n", "N", "Nzz", { silent = true })
vim.keymap.set("n", "*", "*zz", { silent = true })
vim.keymap.set("n", "#", "#zz", { silent = true })
vim.keymap.set("n", "g*", "g*zz", { silent = true })

-- "very magic" (less escaping needed) regexes by default
vim.keymap.set("n", "?", "?\\v")
vim.keymap.set("n", "/", "/\\v")
vim.keymap.set("c", "%s/", "%sm/")

-- open new file adjacent to current file
vim.keymap.set("n", "<leader>o", ":e <C-R>=expand('%:p:h') . '/' <cr>", { desc = "Open File Adjacent" })

-- <leader>, shows/hides hidden characters
vim.keymap.set("n", "<leader>,", ":set invlist<cr>", { desc = "Toggle Hidden Characters" })

-- F1 is pretty close to Esc, so you probably meant Esc
vim.keymap.set("", "<F1>", "<Esc>")
vim.keymap.set("i", "<F1>", "<Esc>")

-- no arrow keys in insert mode --- force yourself to use the home row
vim.keymap.set("i", "<up>", "<nop>")
vim.keymap.set("i", "<down>", "<nop>")
vim.keymap.set("i", "<left>", "<nop>")
vim.keymap.set("i", "<right>", "<nop>")
-- also disable in normal mode so you learn to use hjkl
vim.keymap.set("n", "<up>", "<nop>")
vim.keymap.set("n", "<down>", "<nop>")

-- macOS clipboard integration (<leader>p pastes, <leader>c copies entire buffer)
if vim.fn.has("mac") == 1 then
  vim.keymap.set("n", "<leader>p", "<cmd>read !pbpaste<cr>", { desc = "Paste from System Clipboard" })
  vim.keymap.set("n", "<leader>c", "<cmd>w !pbcopy<cr><cr>", { desc = "Copy Buffer to System Clipboard" })
end

-- handy keymap for replacing up to next _ (like in variable names)
vim.keymap.set("n", "<leader>m", "ct_", { desc = "Replace Until _" })
