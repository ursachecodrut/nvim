local map = vim.keymap.set
local opts = { noremap = true, silent = true }
-- local silent = { silent = true }

-- Remap space as leader key
map("", "<Space>", "<Nop>", {})
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- zz centers your current view <3

-- Better vertial movement
map("n", "<C-d>", "<C-d>zz", opts)
map("n", "<C-u>", "<C-u>zz", opts)

-- general keymaps
map("i", "jk", "<ESC>", opts) -- exit insert mode with jk
map("n", "<leader>nh", ":nohl<CR>", opts) -- disable highlight after search

-- increment and decrement numbers in normal mode
map("n", "<leader>+", "<C-a>")
map("n", "<leader>-", "<C-x>")

-- splitting
map("n", "<leader>sv", "<C-w>v", opts) -- split vertically
map("n", "<leader>sh", "<C-w>s", opts) -- split horizontally
map("n", "<leader>se", "<C-w>=", opts) -- make split windows equal width
map("n", "<leader>sx", ":close<CR>", opts) -- close current window

-- tabbing
map("n", "<leader>to", ":tabnew<CR>", opts) -- open new tab
map("n", "<leader>tx", ":tabclose<CR>", opts) -- close current tab
map("n", "<leader>tn", ":tabn<CR>", opts) -- go to next tab
map("n", "<leader>tp", ":tabp<CR>", opts) -- go to previous tab

map("n", "<leader><leader>s", "<cmd>source %<CR>") -- source current file
