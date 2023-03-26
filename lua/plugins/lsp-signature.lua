return {
	"ray-x/lsp_signature.nvim",
	lazy = true,
	event = "BufRead",
	config = function()
		require("lsp_signature").setup()
	end,
}
