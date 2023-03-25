return {
	"karb94/neoscroll.nvim",
	lazy = true,
	keys = {
		"<C-u>",
		"<C-d>",
	},
	config = function()
		require("neoscroll").setup()
	end,
}
