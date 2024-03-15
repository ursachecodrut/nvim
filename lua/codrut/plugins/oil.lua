return {
	"stevearc/oil.nvim",
	-- Optional dependencies
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		require("oil").setup()

		local keymap = vim.keymap
		keymap.set("n", "<leader>oe", "<cmd>Oil<CR>", { desc = "Open oil" }) -- open oil
	end,
}
