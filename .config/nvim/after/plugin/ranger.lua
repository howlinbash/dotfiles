local hb = require('hb.lib')

vim.keymap.set("n", "<leader>rr", ":Ranger<CR>")
vim.keymap.set("n", "<leader>rv", hb.dot_split('Ranger', 1))
vim.keymap.set("n", "<leader>rh", hb.dot_split('Ranger'))
vim.keymap.set("n", "<leader>rt", ":tabnew<CR>:Ranger<CR>")
