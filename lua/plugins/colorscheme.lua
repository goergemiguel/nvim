return {
	"EdenEast/nightfox.nvim", -- preferred colorscheme
	lazy = true,
	event = "BufRead",
	config = function()
		vim.cmd("colorscheme terafox")
	end,
}
