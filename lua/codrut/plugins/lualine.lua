local status, lualine = pcall(require, "lualine")
if not status then
	print("Error while importing lualine")
	return
end

local lualine_theme = require("lualine.themes.catppuccin")

lualine.setup({
	options = {
		theme = lualine_theme,
		disabled_filetypes = {
			"NvimTree",
			"packer",
		},
	},
})
