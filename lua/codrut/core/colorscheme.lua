local status, _ = pcall(vim.cmd, "colorscheme onedark")
if not status then
  print("Colorscheme not found")
  return
end
