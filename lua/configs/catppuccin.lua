local status_ok_theme, catppuccin = pcall(require, 'catppuccin')
if not status_ok_theme then
  return
end

catppuccin.setup({
  transparent_background = true,
  integrations = {
    treesitter = true,
    telescope = true,
    bufferline = true,
    gitsigns = true,
    nvimtree = { enabled = true, show_root = true },
  }

})


vim.cmd [[hi Normal guibg=NONE ctermbg=NONE]]
