local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
	PACKER_BOOTSTRAP = fn.system({
		"git",
		"clone",
		"--depth",
		"1",
		"https://github.com/wbthomason/packer.nvim",
		install_path,
	})
	print("Installing packer close and reopen Neovim...")
	vim.cmd([[packadd packer.nvim]])
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost packer.lua source <afile> | PackerSync
  augroup end
]])

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
	return
end

-- Install your plugins here
return packer.startup(function(use)
	use("wbthomason/packer.nvim") -- A use-package inspired plugin manager for Neovim

	use("bluz71/vim-nightfly-guicolors") -- preferred colorscheme
	use({ "catppuccin/nvim", as = "catppuccin" })

	use("nvim-lua/plenary.nvim")
	use("christoomey/vim-tmux-navigator") -- navigation
	use("tpope/vim-surround")
	use("vim-scripts/ReplaceWithRegister")
	use("numToStr/Comment.nvim")
	use({
		"nvim-tree/nvim-tree.lua",
		requires = {
			"nvim-tree/nvim-web-devicons", -- optional, for file icons
		},
	})

	use("nvim-lualine/lualine.nvim")
	use({ "nvim-telescope/telescope-fzf-native.nvim", run = "make" })
	use({ "nvim-telescope/telescope.nvim", tag = "0.1.x" })

	use({
		"iamcco/markdown-preview.nvim",
		run = "cd app && npm install",
		setup = function()
			vim.g.mkdp_filetypes = { "markdown" }
		end,
		ft = { "markdown" },
	})

	-- autocompletion
	use("hrsh7th/nvim-cmp") -- completion plugin
	use("hrsh7th/cmp-buffer") -- source for text in buffer
	use("hrsh7th/cmp-path") -- source for file system paths
	use("hrsh7th/cmp-nvim-lsp") -- source for file system paths

	-- snippets
	use("L3MON4D3/LuaSnip") -- snippet engine
	use("saadparwaiz1/cmp_luasnip") -- for autocompletion
	use("rafamadriz/friendly-snippets") -- useful snippets

	-- managing & installing lsp server
	use("williamboman/mason.nvim")
	use("williamboman/mason-lspconfig.nvim")

	-- configure lsp servers
	use("neovim/nvim-lspconfig")
	use("jose-elias-alvarez/typescript.nvim") -- additional functionality for typescript server (e.g. rename file & update imports)
	use("onsails/lspkind.nvim") -- vs-code like icons for autocompletion

	-- formatting & linting
	use("jose-elias-alvarez/null-ls.nvim") -- configure formatters & linters
	use("jayp0521/mason-null-ls.nvim") -- bridges gap b/w mason & null-ls
	use({
		"glepnir/lspsaga.nvim",
		branch = "main",
		requires = { { "nvim-tree/nvim-web-devicons" } },
	})

	-- treesitter configuration
	use({
		"nvim-treesitter/nvim-treesitter",
		run = function()
			local ts_update = require("nvim-treesitter.install").update({ with_sync = true })
			ts_update()
		end,
	})

	-- auto closing
	use("windwp/nvim-autopairs") -- autoclose parens, brackets, quotes, etc...
	use({ "windwp/nvim-ts-autotag", after = "nvim-treesitter" }) -- autoclose tags

	-- git integration
	use("tpope/vim-fugitive")
	use("tpope/vim-rhubarb")
	use("lewis6991/gitsigns.nvim") -- show line modifications on left hand side

	-- cool plugins
	use("norcalli/nvim-colorizer.lua") -- Colors highlighter for neovim
	use("akinsho/nvim-toggleterm.lua") -- usein to easily toggle a terminal
	use("goolord/alpha-nvim") -- Lua powered greeter like vim-startify / dashboard-nvim
	use("lukas-reineke/indent-blankline.nvim")

	use("github/copilot.vim")

	if PACKER_BOOTSTRAP then
		require("packer").sync()
	end
end)
