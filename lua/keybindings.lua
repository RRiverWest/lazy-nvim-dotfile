-- ~/.confi/nvim/lua/keybindings.lua
local map = vim.keymap.set
-- shift options
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.number = true

vim.g.mapleader = " "

-- buffer line
map("n", "<Leader>bb", ":BufferLinePick<CR>", { desc = "Buffer Line Pick" })
map("n", "<Leader>bc", ":BufferLinePickClose<CR>", { desc = "Buffer Line Pick Close" })
map("n", "<leader>b1", ":BufferLineGoToBuffer 1<CR>", { desc = "Buffer Line Go To Buffer 1" })
map("n", "<leader>b2", ":BufferLineGoToBuffer 2<CR>", { desc = "Buffer Line Go To Buffer 2" })
map("n", "<leader>b3", ":BufferLineGoToBuffer 3<CR>", { desc = "Buffer Line Go To Buffer 3" })
map("n", "<leader>b4", ":BufferLineGoToBuffer 4<CR>", { desc = "Buffer Line Go To Buffer 4" })
map("n", "<leader>b5", ":BufferLineGoToBuffer 5<CR>", { desc = "Buffer Line Go To Buffer 5" })
map("n", "<leader>b6", ":BufferLineGoToBuffer 6<CR>", { desc = "Buffer Line Go To Buffer 6" })
map("n", "<leader>bp", ":BufferLineMovePrev<CR>", { desc = "Buffer Move Previous" })
map("n", "<leader>bn", ":BufferLineMoveNext<CR>", { desc = "Buffer Move Next" })
map("n", "<C-Tab>", ":BufferLineCycleNext<CR>", { desc = "Buffer Line Cycle Next" })
map("n", "<C-S-Tab>", ":BufferLineCyclePrev<CR>", { desc = "Buffer Line Cycle Previous" })

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

-- Telescope setting
map("n", "<Leader>ff", "<Cmd>Telescope find_files<CR>", {desc = "Telescope find files"})
map("n", "<Leader>fg", "<Cmd>Telescope live_grep<CR>", {desc = "Telescope live grep"})
map("n", "<Leader>fb", "<Cmd>Telescope buffers<CR>", {desc = "Telescope buffers"})
map("n", "<Leader>fh", "<Cmd>Telescope help_tags<CR>", {desc = "Telescope help tags"})
map("n", "<Leader>fc", "<Cmd>Telescope commands<CR>", {desc = "Telescope commands"})
map("n", "<Leader>ft", "<Cmd>Trlescope git_status<CR>", {desc = "Telescope git status"})
map("n", "<Leader>fk", "<Cmd>Telescope keymaps<CR>", {desc = "Telescope keymaps"})

-- lazygit
map("n", "<leader>la", "<Cmd>LazyGit<CR>", { desc = "LazyGit" })
-- lsp
-- map('n', '<Plug>(lsp)r', "<Cmd>lua vim.lsp.buf.references()<CR>")

map('i', '<C-S>', '<Nop>', { noremap = true, silent = true })

map("n", "gf", "<Cmd>lua vim.lsp.buf.format()<CR>", { desc = "Format file" })
map("n", "K", "<cmd>Lspsaga hover_doc<CR>", { desc = "Show hover doc" })
map("n", "gd", "<Cmd>lua vim.lsp.buf.definition()<CR>")
map("n", "gD", "<Cmd>lua vim.lsp.buf.declaration()<CR>")
map("n", "gi", "<cmd>lua vim.lsp.buf.implementation()<CR>")
map("n", "gt", "<cmd>lua vim.lsp.buf.type_definition()<CR>")
map("n", "gn", "<cmd>lua vim.lsp.buf.rename()<CR>", {desc = "Rename symbol"})
-- map("n", "gra", require("actions-preview").code_actions, { desc = "Code actions" })
map("n", "gr", "<cmd>Telescope lsp_references<CR>")
