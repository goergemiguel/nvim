return {
	"numToStr/Comment.nvim",
	lazy = true,
	event = "BufRead",
	config = function()
		require("Comment").setup()
	end,
}
