local status, _ = pcall(vim.cmd, "colorscheme onedarkpro")
if not status then
  print("Colorscheme not found")
  return
end
