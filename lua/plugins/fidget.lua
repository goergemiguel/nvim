-- plugin to show nvim-lsp load progress
return {
	"j-hui/fidget.nvim",
	event = "LspAttach",
	config = function()
		require("fidget").setup({
			window = {
				blend = 0, -- set 0 if using transparent background, otherwise set 100
			},
		})
	end,
}
