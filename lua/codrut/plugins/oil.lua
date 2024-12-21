return {
	"stevearc/oil.nvim",
	---@module 'oil'
	---@type oil.SetupOpts
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		require("oil").setup()

		vim.keymap.set("n", "-", "<cmd>Oil <CR>", { noremap = true, silent = true })
	end,
}
