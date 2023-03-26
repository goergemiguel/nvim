return {
	{
		"onsails/lspkind.nvim", -- vs-code like icons for autocompletion
		lazy = true,
		event = "InsertEnter",
		config = function() end,
	},
	{
		"hrsh7th/nvim-cmp", -- completion plugin
		lazy = true,
		event = "InsertEnter",
		config = function()
			local cmp = require("cmp")
			local lspkind = require("lspkind")
			local luasnip = require("luasnip")
			cmp.setup({
				snippet = {
					expand = function(args)
						luasnip.lsp_expand(args.body)
					end,
				},
				mapping = cmp.mapping.preset.insert({
					["<C-k>"] = cmp.mapping.select_prev_item(), -- previous suggestion
					["<C-j>"] = cmp.mapping.select_next_item(), -- next suggestion
					["<C-b>"] = cmp.mapping.scroll_docs(-4),
					["<C-f>"] = cmp.mapping.scroll_docs(4),
					["<C-Space>"] = cmp.mapping.complete(), -- show completion suggestions
					["<C-e>"] = cmp.mapping.abort(), -- close completion window
					["<CR>"] = cmp.mapping.confirm({ select = false }),
				}),
				-- sources for autocompletion
				sources = cmp.config.sources({
					{ name = "nvim_lsp" }, -- lsp
					{ name = "luasnip" }, -- snippets
					{ name = "buffer" }, -- text within current buffer
					{ name = "path" }, -- file system paths
				}),
				-- configure lspkind for vs-code like icons
				formatting = {
					format = lspkind.cmp_format({
						maxwidth = 50,
						ellipsis_char = "...",
					}),
				},
			})
		end,
	},
	{
		"L3MON4D3/LuaSnip", -- snippet engine
		lazy = true,
		event = "InsertEnter",
		config = function()
			-- load vs-code like snippets from plugins (e.g. friendly-snippets)
			require("luasnip/loaders/from_vscode").lazy_load()
			vim.opt.completeopt = "menu,menuone,noselect"
		end,
	},
	{
		"saadparwaiz1/cmp_luasnip", -- for autocompletion
		lazy = true,
		event = "InsertEnter",
	},
	{ "hrsh7th/cmp-buffer", lazy = true, event = "InsertEnter" }, -- source for text in buffer
	{ "hrsh7th/cmp-path", lazy = true, event = "InsertEnter" }, -- source for file system paths
}
