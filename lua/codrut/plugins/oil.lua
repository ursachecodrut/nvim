return {
	"stevearc/oil.nvim",
	---@module 'oil'
	---@type oil.SetupOpts
	-- Optional dependencies
	dependencies = { { "echasnovski/mini.icons", opts = {} } },
	config = function()
		require("oil").setup()

		vim.keymap.set("n", "-", "<cmd>Oil <CR>", { noremap = true, silent = true })
	end,
}
