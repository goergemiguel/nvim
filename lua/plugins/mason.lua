return {
  {
    -- managing & installing lsp servers, linters & formatters
    "williamboman/mason.nvim", -- in charge of managing lsp servers, linters & formatters
    config = function()
      -- import mason plugin safely
      local mason_status, mason = pcall(require, "mason")
      if not mason_status then
        return
      end
      -- enable mason
      mason.setup()
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim", -- bridges gap b/w mason & lspconfig
    config = function()
      -- import mason-lspconfig plugin safely
      local mason_lspconfig_status, mason_lspconfig = pcall(require, "mason-lspconfig")
      if not mason_lspconfig_status then
        return
      end

      mason_lspconfig.setup({
        -- list of servers for mason to install
        ensure_installed = {
          "tsserver",
          "html",
          "cssls",
          "tailwindcss",
          "lua_ls",
          "emmet_ls",
        },
        -- auto-install configured servers (with lspconfig)
        automatic_installation = true, -- not the same as ensure_installed
      })
    end,
  },
  {

    "jayp0521/mason-null-ls.nvim", -- bridges gap b/w mason & null-ls
    config = function()
      -- import mason-null-ls plugin safely
      local mason_null_ls_status, mason_null_ls = pcall(require, "mason-null-ls")
      if not mason_null_ls_status then
        return
      end
      mason_null_ls.setup({
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
