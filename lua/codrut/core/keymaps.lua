local map = vim.keymap.set
local opts = { noremap = true, silent = true }
-- local silent = { silent = true }

-- Remap space as leader key
map("", "<Space>", "<Nop>", {})
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- zz centers your current view <3

-- Better vertial movement
map("n", "<C-d>", "<C-d>zz")
map("n", "<C-u>", "<C-u>zz")

-- general keymaps
map("i", "jk", "<ESC>") -- exit insert mode with jk
map("n", "<leader>nh", ":nohl<CR>") -- disable highlight after search

-- increment and decrement numbers in normal mode
map("n", "<leader>+", "<C-a>")
map("n", "<leader>-", "<C-x>")

-- splitting
map("n", "<leader>sv", "<C-w>v") -- split vertically
map("n", "<leader>sh", "<C-w>s") -- split horizontally
map("n", "<leader>se", "<C-w>=") -- make split windows equal width
map("n", "<leader>sx", ":close<CR>") -- close current window

-- tabbing
map("n", "<leader>to", ":tabnew<CR>") -- open new tab
map("n", "<leader>tx", ":tabclose<CR>") -- close current tab
map("n", "<leader>tn", ":tabn<CR>") -- go to next tab
map("n", "<leader>tp", ":tabp<CR>") -- go to previous tab

map("n", "<leader><leader>x", "<cmd>source %<CR>") -- source current file
