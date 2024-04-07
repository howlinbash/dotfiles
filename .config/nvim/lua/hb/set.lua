vim.opt.nu=true
vim.opt.relativenumber=true

vim.opt.tabstop=2
vim.opt.softtabstop=2
vim.opt.shiftwidth=2
vim.opt.expandtab=true

vim.opt.smartindent=true

-- vim.opt.swapfile = false
-- vim.opt.backup = false
vim.opt.undodir=os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile=true

vim.opt.hlsearch=true
vim.opt.incsearch=true

vim.opt.termguicolors=true

vim.opt.updatetime=250

vim.opt.numberwidth=5    -- We are good up to 99999 lines
vim.opt.lazyredraw=true  -- redraw screen on macro completion (speed setting)
vim.opt.splitright=true  -- open vsplit to right
vim.opt.splitbelow=true  -- open hsplit below
vim.opt.showmatch=true   -- show matching brackets
vim.opt.matchtime=3      -- blink between matching braces (tenths/sec)
vim.opt.scrolloff=2      -- Keep 2 lines (top/bottom) for scope
vim.o.mouse='a'          -- Enable mouse mode
vim.o.breakindent=true   -- Enable break indent
vim.wo.signcolumn = 'yes'

-- Case insensitive searching UNLESS /C or capital in search
vim.o.ignorecase=true
vim.o.smartcase=true

-- Set completeopt to have a better completion experience
vim.o.completeopt = 'menuone,noselect'

-- filetype plugin indent on     " customise by filetype in .vim/after/ftplugin

-- set backupcopy=yes

-- [[ Highlight on yank ]]
-- See `:help vim.highlight.on_yank()`
local highlight_group = vim.api.nvim_create_augroup('YankHighlight', { clear = true })
vim.api.nvim_create_autocmd('TextYankPost', {
  callback = function()
    vim.highlight.on_yank()
  end,
  group = highlight_group,
  pattern = '*',
})

-- local auto_formatting = vim.api.nvim_create_augroup('AutoFormatting', { clear = true })
-- vim.api.nvim_create_autocmd(
--   'BufWritePre',
--   {
--     pattern = '*.{js,jsx,ts,tsx,css,html}',
--     group = auto_formatting,
--     callback = function() vim.lsp.buf.formatting_sync() end,
--   }
-- )

-- vim.g.prettier#autoformat = 1
-- vim.g.prettier#autoformat_require_pragma = 0
vim.g["prettier#autoformat"] = 1
vim.g["prettier#autoformat_require_pragma"] = 0

