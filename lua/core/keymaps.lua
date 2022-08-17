-- Shorten function name
local map = vim.keymap.set
local opts = { noremap = true, silent = true }
local term_opts = { silent = true }

-- Remap space as leader key
map("", "<Space>", "<Nop>", {})
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-----------------
-- Normal Mode --
-----------------

-- Copy Paste --
map("n", "<c-p>", '"+P', {})
map("v", "<c-c>", '"*y :let @+=@*<CR>', {})

-- Split
map("n", "<C-s>", "<cmd>vsplit<CR>", {})
map("n", "<C-v>", "<cmd>split<CR>", {})

-- Mappings for moving through splits
map("n", "<C-h>", "<C-w>h", {})
map("n", "<C-j>", "<C-w>j", {})
map("n", "<C-k>", "<C-w>k", {})
map("n", "<C-l>", "<C-w>l", {})

map('n', '<leader>n', '<cmd>:bn<CR>', {})
map('n', '<leader>p', '<cmd>:bp<CR>', {})
map('n', '<leader>q', '<cmd>:bp|bd#<CR>', {})

-- Nvim Comment
map("n", "<leader>c", ":CommentToggle<CR>", {}) -- Comment One Line
map("x", "<leader>c", ":'<,'>CommentToggle<CR>", {}) -- Comment Multiple Lines In Visual Mode

-- Don't accidently create macros when trying to quit
map('n', 'Q', 'q', {})
map('n', 'q', '<nop>', {})

-- GitSings
map('n', "<leader>gp", ":Gitsigns preview_hunk<CR>", {}) -- preview_hunk
map('n', "<leader>gr", ":Gitsigns reset_buffer<CR>", {}) -- reset_buffer

-- Toggle Alpha Dashboard
map('n', "<leader>a", ":set laststatus=3<CR> | :Alpha<CR>", {})

-- Toggle NvimTree
map("n", "<leader>e", ":NvimTreeToggle<CR>", {})

-- Yank entire line
map("n", "yie", ":<C-u>%y<CR>", {})

-- Packer Update
map("n", "<leader>u", ":PackerSync<CR>", {})

-- Telescope Mappings
map("n", "<Leader>fb",
  "<cmd>lua require'telescope.builtin'.buffers(require('telescope.themes').get_dropdown({ previewer = false }))<cr>", {}) -- preview buffers
map("n", "<Leader>of",
  "<cmd>lua require'telescope.builtin'.oldfiles(require('telescope.themes').get_dropdown({ previewer = false }))<cr>", {}) -- old files
map("n", "<Leader>ff",
  "<cmd>lua require'telescope.builtin'.find_files(require('telescope.themes'))<cr>",
  {}) -- Find files
map("n", "<Leader>fg",
  "<cmd>lua require'telescope.builtin'.live_grep(require('telescope.themes'))<cr>",
  {})

map("n", "<leader>gs", ":Telescope git_status<CR>", {}) -- git status

-----------------
-- Insert Mode --
-----------------

-- Map Escape Key To jj
map("i", "jj", "<ESC>", {})

-- Fix One [Car] behind
map("i", "<Esc>", "<Esc>`^", {})

-----------------
-- Visual Mode --
-----------------

map("v", "<c-c>", '"*y :let @+=@*<CR>', {})

-- Move Text Up And Down
vim.cmd([[
nnoremap <C-A-J> :m .+1<CR>==
nnoremap <C-A-K> :m .-2<CR>==
inoremap <C-A-J> <Esc>:m .+1<CR>==gi
inoremap <C-A-K> <Esc>:m .-2<CR>==gi
vnoremap <C-A-J> :m '>+1<CR>gv=gv
vnoremap <C-A-K> :m '<-2<CR>gv=gv
]])
