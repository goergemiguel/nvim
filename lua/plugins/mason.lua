return {
	{
		-- managing & installing lsp servers, linters & formatters
		"williamboman/mason.nvim", -- in charge of managing lsp servers, linters & formatters
		lazy = true,
		event = "BufRead",
		config = function()
			-- enable mason
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim", -- bridges gap b/w mason & lspconfig
		lazy = true,
		event = "BufRead",
		config = function()
			require("mason-lspconfig").setup({
				-- list of servers for mason to install
				ensure_installed = {
					"tsserver",
					"html",
					"cssls",
					"tailwindcss",
					"lua_ls",
					"emmet_ls",
					"volar",
					"svelte",
					"gopls",
				},
				-- auto-install configured servers (with lspconfig)
				automatic_installation = true, -- not the same as ensure_installed
			})
		end,
	},
	{

		"jayp0521/mason-null-ls.nvim", -- bridges gap b/w mason & null-ls
		lazy = true,
		event = "BufRead",
		config = function()
			require("mason-null-ls").setup({
				-- list of formatters & linters for mason to install
				ensure_installed = {
					"prettier", -- ts/js formatter
					"stylua", -- lua formatter
				},
				-- auto-install configured formatters & linters (with null-ls)
				automatic_installation = true,
			})
		end,
	},
}
