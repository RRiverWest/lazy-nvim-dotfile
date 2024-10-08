-- ~/.config/nvim/lua/keybindings.lua
local map = vim.keymap.set
-- shift options
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.number = true

map("n", "g", "<Plug>(lsp)")
vim.g.mapleader = " "

-- vim-tree
map("n", "<C-n>", ":NvimTreeToggle<CR>", { noremap = true, silent = true })
map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
map("i", "<C-h>", "<Left>", { desc = "Move up" })
map("i", "<C-j>", "<Down>", { desc = "Move up" })
map("i", "<C-k>", "<Up>", { desc = "Move up" })
map("i", "<C-l>", "<Right>", { desc = "Move up" })

map("n", "<C-h>", "<C-w>h", { desc = "switch window left" })
map("n", "<C-l>", "<C-w>l", { desc = "switch window right" })
map("n", "<C-j>", "<C-w>j", { desc = "switch window down" })
map("n", "<C-k>", "<C-w>k", { desc = "switch window up" })

-- telescope setting
map("n", "<Leader>ff", "<Cmd>Telescope find_files<CR>")
map("n", "<Leader>fg", "<Cmd>Telescope live_grep<CR>")
map("n", "<Leader>fb", "<Cmd>Telescope buffers<CR>")
map("n", "<Leader>fh", "<Cmd>Telescope help_tags<CR>")
map("n", "<Leader>fc", "<Cmd>Telescope commands<CR>")
map("n", "<Leader>fc", "<Cmd>Telescope git_status<CR>")

-- lazygit
map("n","<leader>lg", "<Cmd>LazyGit<CR>",{ desc = "LazyGit"})

-- lsp
map("n", "<Plug>(lsp)f", "<Cmd>lua vim.lsp.buf.format()<CR>")
map('n', 'K', "<Cmd>lua vim.lsp.buf.hover()<CR>")
-- map('n', '<Plug>(lsp)r', "<Cmd>lua vim.lsp.buf.references()<CR>")
map('n', '<Plug>(lsp)r', "<Cmd>Telescope lsp_references<CR>")
map('n', '<Plug>(lsp)d', "<Cmd>lua vim.lsp.buf.definition()<CR>")
map('n', '<Plug>(lsp)D', "<Cmd>lua vim.lsp.buf.declaration()<CR>")
map('n', '<Plug>(lsp)i', '<cmd>lua vim.lsp.buf.implementation()<CR>')
map('n', '<Plug>(lsp)t', '<cmd>lua vim.lsp.buf.type_definition()<CR>')
map('n', '<Plug>(lsp)n', '<cmd>lua vim.lsp.buf.rename()<CR>')
map('n', 'ga', '<cmd>lua vim.lsp.buf.code_action()<CR>')
map('n', 'ga', '<cmd>lua vim.lsp.buf.code_action()<CR>')





