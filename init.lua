local core_modules = {

  ---- Core Settings ----------------------------------
  "core/plugins", -- Plugins + Packer Config
  "core/keymaps", -- Custom Keymaps
  "core/options", -- General Options

  ---- Plugin Configurations --------------------------

  "configs/impatient", -- Improve Startup Time
  "configs/colorschemes", -- All Colorschemes
  "configs/treesitter", -- Syntax Highlighting
  "configs/cmp", -- Completion
  "configs/alpha", -- Wellcome Screen
  "configs/nvimtree", -- File Explorer
  "configs/gitsigns", -- Git Integration
  "configs/commentary", -- Easily Comment Lines
  "configs/lualine", -- Status Line
  "configs/colorizer", -- Colors Highlighter
  "configs/toggleterm", -- Floating Terminal
  "configs/telescope", -- Fuzzy finder
  "configs/autopairs", -- Autopairs
  "configs/bufferline", -- Bufferline

  "configs/lsp", -- LSP


  ---- Other Utilities --------------------------------
  "utils/utils", -- Utilities

}

-- Using pcall we can handle better any loading issues
for _, module in ipairs(core_modules) do
  local ok, err = pcall(require, module)
  if not ok then
    return
  end
end
