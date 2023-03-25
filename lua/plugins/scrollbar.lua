return {
	"petertriho/nvim-scrollbar",
	config = function()
		require("scrollbar").setup({
			handlers = {
				gitsigns = true, -- Requires gitsigns
			},
		})
	end,
	event = "BufEnter",
}
