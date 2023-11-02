local api = vim.api

api.nvim_create_autocmd("BufWrite", { command = ":Neoformat" })
