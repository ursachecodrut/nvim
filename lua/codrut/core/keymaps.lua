local map = vim.keymap.set
-- local opts = { noremap = true, silent = true }
-- local silent = { silent = true }

-- Remap space as leader key 
map("", "<Space>", "<Nop>", {})
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- general keymaps
map("i", "jk", "<ESC>") -- exit insert mode with jk
map("n", "<leader>nh", ":nohl<CR>") -- disable highlight after search
map("n", "x", '"_x"') -- don't store character delete with x in register

-- increment and decrement numbers in normal mode
map("n", "<leader>+", "<C-a>")
map("n", "<leader>-", "<C-x>")

-- splitting
map("n", "<leader>sv", "<C-w>v") -- split vertically
map("n", "<leader>sh", "<C-w>s") -- split hirizontally 
map("n", "<leader>se", "<C-w>=") -- make split windows equal width
map("n", "<leader>sx", ":close<CR>") -- close current window

-- tabbing
map("n", "<leader>to", ":tabnew<CR>") -- open new tab
map("n", "<leader>tx", ":tabclose<CR>") -- close current tab
map("n", "<leader>tn", ":tabn<CR>") -- go to next tab
map("n", "<leader>tp", ":tabp<CR>") -- go to previous tab

-- Nvim Tree
map("n", "<leader>e", ":NvimTreeToggle<CR>")

-- Telescope
map("n", "<leader>ff", ":Telescope find_files<CR>")
map("n", "<leader>fs", ":Telescope live_grep<CR>")
map("n", "<leader>fc", ":Telescope grep_string<CR>")
map("n", "<leader>fb", ":Telescope buffers<CR>")
map("n", "<leader>fh", ":Telescope help_tags<CR>")
