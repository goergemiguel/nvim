return {
	"sbdchd/neoformat", -- completion plugin
	lazy = true,
	event = "BufRead",
	config = function()
		local keymap = vim.keymap
		keymap.set("n", ":w", ":Neoformat")
	end,
}
