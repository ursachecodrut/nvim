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
    autocmd BufWritePost packer.lua source <afile> | PackerSync
  augroup end
]]

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
  return
end

-- Install your plugins here
return packer.startup(function(use)

  use "wbthomason/packer.nvim" -- A use-package inspired plugin manager for Neovim

  use "olimorris/onedarkpro.nvim" -- Color scheme

  use "nvim-lua/plenary.nvim" 
  
  use "christoomey/vim-tmux-navigator" -- navigation
  
  use "tpope/vim-surround" 
  use "vim-scripts/ReplaceWithRegister"
  
  use "numToStr/Comment.nvim"

  use {
    "nvim-tree/nvim-tree.lua",
    requires = {
      "nvim-tree/nvim-web-devicons", -- optional, for file icons
    },
  }

  use "nvim-lualine/lualine.nvim"
  use {'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }
  use { "nvim-telescope/telescope.nvim", tag = "0.1.x" }

  if PACKER_BOOTSTRAP then
    require("packer").sync()
  end
end)

