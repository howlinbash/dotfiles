local null_ls = require("null-ls")

local completion = null_ls.builtins.completion
-- local diagnostics = null_ls.builtins.diagnostics
local formatting = null_ls.builtins.formatting

-- local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

null_ls.setup({
  sources = {
    formatting.stylua,
    formatting.prettier,
    -- diagnostics.eslint,
    completion.spell,
  },
  -- on_attach = function(client, bufnr)
  --   if client.supports_method("textDocument/formatting") then
  --     vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
  --     vim.api.nvim_create_autocmd("BufWritePre", {
  --       group = augroup,
  --       buffer = bufnr,
  --       callback = function()
  --         vim.lsp.buf.format({
  --           bufnr = bufnr,
  --           filter = function()
  --             return client.name == "null-ls"
  --           end,
  --         })
  --       end,
  --     })
  --   end
  -- end,
})
