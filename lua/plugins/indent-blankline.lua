return {
	"lukas-reineke/indent-blankline.nvim",
	lazy = true,
	event = "BufRead",
	config = function()
		require("ibl").setup()
	end,
}
