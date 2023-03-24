local hb = require('hb.lib')

vim.g['lazygit_floating_window_winblend'] = 7

hb.lnmap('git', vim.cmd.LazyGit, '[ ] Open Lazy[GIT]')
