local opt = vim.opt

vim.opt.completeopt = "menu,menuone,noselect"
-- swap
opt.swapfile = false -- disable swap files

-- appearance
opt.title = true -- show current text that you are editing
opt.termguicolors = true -- set term gui colors
opt.background = "dark" -- tell vim what the background color looks like
opt.signcolumn = "yes"

-- line numbers
opt.number = true

-- tabs & indentation
opt.tabstop = 2 -- insert 2 spaces for tab
opt.shiftwidth = 2 -- change the number of space characters inserted for indentation
opt.expandtab = true -- converts tabs to spaces
opt.autoindent = true -- good auto indent
opt.smarttab = true -- makes tabbing smarter. will rialize you have 2 vs 4
opt.smartindent = true -- makes indenting smart

-- line wrapping
opt.wrap = false -- disable line wrapping
opt.foldenable = false -- disable folding text

-- search settings
opt.ignorecase = true -- ignoare case when searching
opt.smartcase = true -- turns on case sensitive search when letters are capitalized
opt.incsearch = true -- sets incremental search

-- backspace
opt.backspace = "indent,eol,start"

-- clipboard
opt.clipboard:append("unnamedplus") -- copy paste inside and outside vim

-- mouse
opt.mouse = "a" -- enable mouse support

-- split windows
opt.splitright = true -- vertical splits will automatically be to the right
opt.splitbelow = true -- horizontal splits will automatically be below

-- movement
opt.virtualedit = "onemore" -- with this you can move the cursor one more character over the end of the line

opt.iskeyword:append("-")
opt.updatetime = 0 -- faster completion

vim.cmd([[autocmd BufEnter * set formatoptions-=cro]])
vim.cmd([[autocmd BufEnter * setlocal formatoptions-=cro]])

-- set backupcopy to "yes"
opt.backupcopy = "yes"
