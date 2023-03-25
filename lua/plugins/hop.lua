return {
	"phaazon/hop.nvim",
	config = function()
		require("hop").setup()
	end,
	lazy = true,
	cmd = "HopWord",
}
