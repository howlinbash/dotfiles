
-- -- LSP SETTINGS.

--  This function gets run when an LSP connects to a particular buffer.
local on_attach = function(_, bufnr)
  -- NOTE: Remember that lua is a real programming language, and as such it is possible
  -- to define small helper and utility functions so you don't have to repeat yourself
  -- many times.
  --
  -- In this case, we create a function that lets us more easily define mappings specific
  -- for LSP related items. It sets the mode, buffer and description for us each time.
	local telescope = require("telescope.builtin")
	local hb = require('hb.lib')

  local nmap = function(keys, func, desc)
    if desc then
      desc = 'LSP: ' .. desc
    end

    vim.keymap.set('n', keys, func, { buffer = bufnr, desc = desc })
  end

  nmap('<leader>la', vim.lsp.buf.code_action, '[ ][L]sp code [A]ction')
  nmap('<leader>rn', vim.lsp.buf.rename, '[ ][R]e[n]ame')
  nmap('gd', hb.trinity(vim.lsp.buf.definition, 0), '[G]oto [D]efinition')
  hb.lnmap('gd', hb.trinity(vim.lsp.buf.definition, 1), '[ ][G]oto [D]efinition in split')
  hb.lnmap('jgd', hb.trinity(vim.lsp.buf.definition, 2), '[ ][J][G]oto [D]efinition in current buffer')
  nmap('gr', hb.trinity(hb.lsp_references, 0), '[G]oto [R]eferences')
  hb.lnmap('gr', hb.trinity(hb.lsp_references, 1), '[ ][G]oto [R]eferences in split')
  hb.lnmap('jgr', hb.trinity(hb.lsp_references, 2), '[ ][J][G]oto [R]eferences in current buffer')
  nmap('go', hb.trinity(vim.lsp.buf.type_definition, 0), '[GO]to type definition')
  hb.lnmap('go', hb.trinity(vim.lsp.buf.type_definition, 1), '[ ][GO]to type definition in split')
  hb.lnmap('jgo', hb.trinity(vim.lsp.buf.type_definition, 2), '[ ][J][GO]to type definition in buffer')

  nmap('gD', hb.trinity(vim.lsp.buf.declaration, 0), '[G]oto [D]eclaration')
  hb.lnmap('gD', hb.trinity(vim.lsp.buf.declaration, 1), '[ ][G]oto [D]eclaration, in split')
  hb.lnmap('jgD', hb.trinity(vim.lsp.buf.declaration, 2), '[ ][J][G]oto [D]eclaration in current buffer')
  nmap('gI', hb.trinity(vim.lsp.buf.implementation, 0), '[G]oto [I]mplementation')
  hb.lnmap('gI', hb.trinity(vim.lsp.buf.implementation, 1), '[ ][G]oto [I]mplementation in split')
  hb.lnmap('jgI', hb.trinity(vim.lsp.buf.implementation, 2), '[ ][J][G]oto [I]mplementation in current buffer')
  nmap('<leader>ds', telescope.lsp_document_symbols, '[ ][D]ocument [S]ymbols')
  nmap('<leader>ws', hb.trinity(telescope.lsp_dynamic_workspace_symbols, 0), '[ ][W]orkspace [S]ymbols')
  hb.lnmap('<leader>hws', hb.trinity(telescope.lsp_dynamic_workspace_symbols, 1), '[ ][H][W]orkspace [S]ymbols in split')
  hb.lnmap('<leader>jws', hb.trinity(telescope.lsp_dynamic_workspace_symbols, 2), '[ ][J][W]orkspace [S]ymbols in current buffer')

  nmap('K', vim.lsp.buf.hover, '[K] Simulate mouse hover')

  -- Lesser used LSP functionality
  -- nmap('<leader>wa', vim.lsp.buf.add_workspace_folder, '[W]orkspace [A]dd Folder')
  -- nmap('<leader>wr', vim.lsp.buf.remove_workspace_folder, '[W]orkspace [R]emove Folder')
  -- nmap('<leader>wl', function()
    -- print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
  -- end, '[W]orkspace [L]ist Folders')




	-- k v n u & t are very empty
  -- From primagen
	local opts = function(desc)
    return { buffer = bufnr, remap = false, desc = desc }
  end
	vim.keymap.set("n", "[d", vim.diagnostic.goto_next, opts('Go to next [D]iagnostic'))
	vim.keymap.set("n", "]d", vim.diagnostic.goto_prev, opts('Go to previous [D]iagnostic'))
	vim.keymap.set({"i", "n"}, "<C-h>", vim.lsp.buf.signature_help, opts('LSP: <Ctrl> Show signature [H]elp'))
	-- vim.keymap.set("n", "<leader>da", vim.diagnostic.setloclist, opts('[ ] Show [DIjagnostic'))
	-- vim.keymap.set("n", "<leader>db", vim.diagnostic.setqflist, opts('[ ] Show [DIjagnostic'))
	-- vim.keymap.set("n", "<leader>dc", vim.diagnostic.open_float, opts('[ ] Show [DIjagnostic'))
	vim.keymap.set("n", "<leader>di", function() vim.diagnostic.open_float(nil, { source = 'always' }) end, opts('[ ] Show [DIjagnostic'))
end

-- Enable the following language servers
--  Feel free to add/remove any LSPs that you want here. They will automatically be installed.
--
--  Add any additional override configuration in the following tables. They will be passed to
--  the `settings` field of the server config. You must look up that documentation yourself.
local servers = {
  -- clangd = {},
  -- gopls = {},
  -- pyright = {},
  -- rust_analyzer = {},
  -- eslint = {},
  tsserver = {},
  sumneko_lua = {
    Lua = {
      workspace = { checkThirdParty = false },
      telemetry = { enable = false },
			diagnostics = {
				globals = { 'vim' }
			}
    },
  },
}

-- -- Setup neovim lua configuration
-- require('neodev').setup()
--
-- nvim-cmp supports additional completion capabilities, so broadcast that to servers
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require('cmp_nvim_lsp').default_capabilities(capabilities)

-- Setup mason so it can manage external tooling
require('mason').setup()

-- Ensure the servers above are installed
local mason_lspconfig = require 'mason-lspconfig'

mason_lspconfig.setup {
  ensure_installed = vim.tbl_keys(servers),
}

mason_lspconfig.setup_handlers {
  function(server_name)
    require('lspconfig')[server_name].setup {
      capabilities = capabilities,
      -- on_attach = on_attach,
      on_attach = function() end,
      settings = servers[server_name],
    }
  end,
}

-- Turn on lsp status information
require('fidget').setup()

-- nvim-cmp setup
local cmp = require 'cmp'
local luasnip = require 'luasnip'
local lspkind = require('lspkind')
-- local lspkind = require('lspkind').init({
--   mode = 'symbol',
--   symbol_map = {},
-- })

cmp.setup {
  snippet = {
    expand = function(args)
      luasnip.lsp_expand(args.body)
    end,
  },
  mapping = cmp.mapping.preset.insert {
    ['<C-d>'] = cmp.mapping.scroll_docs(-4),
    ['<C-f>'] = cmp.mapping.scroll_docs(4),
    ['<C-Space>'] = cmp.mapping.complete(),
    ['<CR>'] = cmp.mapping.confirm {
      behavior = cmp.ConfirmBehavior.Replace,
      select = true,
    },
    ['<Tab>'] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_next_item()
      elseif luasnip.expand_or_jumpable() then
        luasnip.expand_or_jump()
      else
        fallback()
      end
    end, { 'i', 's' }),
    ['<S-Tab>'] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_prev_item()
      elseif luasnip.jumpable(-1) then
        luasnip.jump(-1)
      else
        fallback()
      end
    end, { 'i', 's' }),
  },
  formatting = {
    format = lspkind.cmp_format({
      mode = 'symbol_text', -- show only symbol annotations
      maxwidth = 50, -- prevent the popup from showing more than provided characters (e.g 50 will not show more than 50 characters)
      ellipsis_char = '...', -- when popup menu exceed maxwidth, the truncated part would show ellipsis_char instead (must define maxwidth first)

      -- The function below will be called before any actual modifications from lspkind
      -- so that you can provide more controls on popup customization. (See [#30](https://github.com/onsails/lspkind-nvim/pull/30))
      before = function (_, vim_item)
        return vim_item
      end
    })
  },
  window = {
    completion = cmp.config.window.bordered({
      winhighlight = "Normal:Normal,FloatBorder:BorderBG,CursorLine:PmenuSel,Search:None",
    }),
    documentation = cmp.config.window.bordered({
      winhighlight = "Normal:Normal,FloatBorder:BorderBG,CursorLine:PmenuSel,Search:None",
    }),
  },
  sources = {
    { name = 'nvim_lsp' },
    { name = 'luasnip' },
		{ name = 'buffer', keyword_length = 5 },
	},
	experimental = {
		native_menu = false,
		ghost_text = true,
	}
}

-- call nvim_win_set_option(win, 'Normal:MyHighlight,FloatBorder:MyHighlight')

vim.lsp.handlers["textDocument/hover"] =
  vim.lsp.with(
  vim.lsp.handlers.hover,
  {
    border = "rounded",
    background = "red"
  }
)

vim.lsp.handlers["textDocument/signatureHelp"] =
  vim.lsp.with(
  vim.lsp.handlers.signature_help,
  {
    border = "single"
  }
)

-- The line beneath this is called `modeline`. See `:help modeline`
-- vim: ts=2 sts=2 sw=2 et

local signs = {
    Error = '✘',
    Warn = '▲',
    Hint = '⚑',
    Information = ''
}

for type, icon in pairs(signs) do
    local hl = "DiagnosticSign" .. type
    vim.fn.sign_define(hl, {text = icon, texthl = hl, numhl = hl})
end
