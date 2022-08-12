local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
    PACKER_BOOTSTRAP = fn.system {
        "git",
        "clone",
        "--depth",
        "1",
        "https://github.com/wbthomason/packer.nvim",
        install_path,
    }
    print "Installing packer close and reopen Neovim..."
    vim.cmd [[packadd packer.nvim]]
end


-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]]

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
    return
end

-- Have packer use a popup window
packer.init {
    display = {
        open_fn = function()
            return require("packer.util").float { border = "rounded" }
        end,
    },
}

-- Install your plugins here
return packer.startup(function(use)

-- My plugins
   -- Git integration for buffers
    use {
   			'lewis6991/gitsigns.nvim',
   			event = { "CursorMoved", "CursorMovedI" },
   			config = function()
   				require("gitsigns")
   			end
    }

    use "wbthomason/packer.nvim"             -- A use-package inspired plugin manager for Neovim
    use "kyazdani42/nvim-web-devicons"       -- Lua fork of vim-web-devicons for neovim
    use "kyazdani42/nvim-tree.lua"           -- A file explorer tree for neovim written in lua
    use "nvim-treesitter/nvim-treesitter"    -- Treesitter Syntax highlighting and abstraction layer
    use "nvim-lualine/lualine.nvim"          -- Fast and easy statusline for neovim
    use "shaunsingh/nord.nvim"               -- Neovim theme based off of the Nord Color Palette
    use "goolord/alpha-nvim"                 -- Lua powered greeter like vim-startify / dashboard-nvim
    use "akinsho/nvim-toggleterm.lua"        -- usein to easily toggle a terminal
    use "terrortylor/nvim-comment"           -- Comment toggler for Neovim written in Lua
    use "norcalli/nvim-colorizer.lua"        -- Colors highlighter for neovim
    use {'akinsho/bufferline.nvim', tag = "v2.*", requires = 'kyazdani42/nvim-web-devicons'}
    use 'pantharshit00/vim-prisma'

    -- LSP and Completion
    use 'neovim/nvim-lspconfig'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-cmdline'
    use 'hrsh7th/nvim-cmp'
    use "L3MON4D3/LuaSnip"                   -- Snippet Engine for Neovim written in Lua
    use 'saadparwaiz1/cmp_luasnip'
    use 'onsails/lspkind-nvim'
    use "williamboman/mason.nvim"
    use "williamboman/mason-lspconfig.nvim"
    use "jose-elias-alvarez/null-ls.nvim"    -- for formatters and linters
    use "mfussenegger/nvim-dap"
    use "lvimuser/lsp-inlayhints.nvim"

    use "lewis6991/impatient.nvim"           -- Speed up loading Lua modules to improve startup time
    use 'nvim-telescope/telescope.nvim'      -- Find, filter, preview, pick. all lua, with telescope
    use 'nvim-lua/plenary.nvim'              -- Plenary, a dependency of telescope
    use 'windwp/nvim-autopairs'
    use { "catppuccin/nvim", as = "catppuccin" }

    -- Java
    use "mfussenegger/nvim-jdtls"

    -- Automatically set up your configuration after cloning packer.nvim
    -- Put this at the end after all plugins
    if PACKER_BOOTSTRAP then
        require("packer").sync()
    end
end)
