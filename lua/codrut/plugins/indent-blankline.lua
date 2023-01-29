local setup, indent = pcall(require, "indent_blankline")
if not setup then
	return
end

indent.setup({
	char = "┊",
	buftype_exclude = { "terminal" },
	show_trailing_blankline_indent = false,
	filetype_exclude = {
		"help",
		"terminal",
		"dashboard",
		"packer",
		"lspinfo",
		"TelescopePrompt",
		"TelescopeResults",
		"NvimTree",
	},
})
