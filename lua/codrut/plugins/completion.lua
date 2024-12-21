return {
	"saghen/blink.cmp",
	dependencies = "rafamadriz/friendly-snippets",
	version = "*",

	---@module 'blink.cmp'
	---@type blink.cmp.Config
	opts = {
		keymap = { preset = "default" },

		completion = {
			-- Insert completion item on selection, don't select by default
			list = { selection = "auto_insert" },

			menu = {
				-- nvim-cmp style menu
				draw = {
					columns = {
						{ "label", "label_description", gap = 1 },
						{ "kind_icon", "kind" },
					},
				},
			},

			documentation = { auto_show = true, auto_show_delay_ms = 500 },
		},

		appearance = {
			use_nvim_cmp_as_default = true,
			nerd_font_variant = "mono",
		},

		sources = {
			default = { "lsp", "path", "snippets", "buffer" },
		},

		signature = { enabled = true },
	},
	opts_extend = { "sources.default" },
}
