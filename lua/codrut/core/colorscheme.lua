local status, _ = pcall(vim.cmd, "colorscheme catppuccin-macchiato")
if not status then
	print("Colorscheme not found")
	return
end
