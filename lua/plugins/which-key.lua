return {
	"folke/which-key.nvim",
	lazy = true,
	event = "InsertEnter",
	config = function()
		vim.o.timeout = true
		vim.o.timeoutlen = 500
		require("which-key").setup({})
	end,
}
