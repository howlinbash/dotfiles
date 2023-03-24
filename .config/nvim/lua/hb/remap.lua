local hb = require('hb.lib')

vim.g.mapleader = " "
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })


-- -- BASICS

-- Writing and exiting
hb.lnmap('wr', vim.cmd.write, '[WR]ite to file')
hb.lnmap('q', vim.cmd.quit, '[WR]ite to file')
hb.lnmap('aq', ':qa<CR>', '[A]ll [Q]uit')
hb.lnmap('wq', ':wq<CR>', '[W]rite and quit')

-- Simple mods
vim.keymap.set("n", "<CR>", "o<Esc>") -- Intuitive enter key
vim.keymap.set("n", "<esc>", ":noh<return><esc>") -- search highlight on by default. esc clears highlight

-- -- NAVIGATION

-- Nav between splits
vim.keymap.set("n", "<leader>ww", "<C-w>w") -- move to next window
vim.keymap.set("n", "<leader>wp", "<C-w>p") -- move to previously focused window
vim.keymap.set("n", "<leader>wx", "<C-w>x") -- exchange places with next window
vim.keymap.set("n", "<leader>wh", "<C-w>h") -- move to left window
vim.keymap.set("n", "<leader>wj", "<C-w>j") -- move to window below
vim.keymap.set("n", "<leader>wk", "<C-w>k") -- move to window above
vim.keymap.set("n", "<leader>wl", "<C-w>l") -- move to right window
vim.keymap.set("n", "<leader>wt", "<C-w>t") -- move to first window
vim.keymap.set("n", "<leader>wH", "<C-w>H") -- move to left window
vim.keymap.set("n", "<leader>wJ", "<C-w>J") -- move to window below
vim.keymap.set("n", "<leader>wK", "<C-w>K") -- move to window above
vim.keymap.set("n", "<leader>wL", "<C-w>L") -- move to right window
vim.keymap.set("n", "<leader>wT", "<C-w>T") -- move to new tab
vim.keymap.set("n", "<leader>wb", "<C-w>b") -- move to last window

-- Keep cursor centred as you scroll
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- Keep search term centred as you tab through results
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")


-- -- FILE EDITING
hb.map("x", "<leader>p", [["_dP]], "[ ]Keep [P]aste in register (don't swap with target)")
hb.map("v", "J", ":m '>+1<CR>gv=gv", "Move grouped visual block down")
hb.map("v", "K", ":m '<-2<CR>gv=gv", "Move grouped visual block up")

-- Interactively edit all versions of the word under cursor
vim.keymap.set("n", "<leader>ch", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])


-- -- VIM APPEARENCE

hb.lnmap('fh', ':10winc <<CR>', 'Pull split left')
hb.lnmap('fj', ':10winc +<CR>', 'Push split down')
hb.lnmap('fk', ':10winc -<CR>', 'Pull split up')
hb.lnmap('fl', ':10winc ><CR>', 'Push split right')
hb.lnmap('bl', ':w=', '[ ][B]a[L]ance splits')

hb.lnmap('spn', ':call ToggleNumbers()<CR>', 'Toggle line numbers')

hb.lnmap('fsn', ':tab split<CR>', '[ ] Go [F]ull[S]creen (open in [N]ew tab)')
hb.lnmap('fsb', ':tabc<CR>', '[ ] Close [F]ull[S]creen (close ta[B])')


-- -- FILE APPEARENCE

-- Formatting
hb.lnmap("fo", vim.lsp.buf.format, "[ ][FO]rmat file (prettier)")
hb.lnmap('spel', ':call ToggleSpell()<CR>', 'Toggle Spell Checker')
hb.lnmap('rap', ':call ToggleWrap()<CR>', 'Wrap text')

-- Snippets
hb.lnmap('mu1', ':call UnderlineHeading(1)<CR>', 'Underline current line with 1')
hb.lnmap('mu2', ':call UnderlineHeading(2)<CR>', 'Underline current line with 2')
hb.lnmap('mu3', ':call UnderlineHeading(3)<CR>', 'Underline current line with 3')
hb.lnmap('bash', ':norm ccFrom: Howlin Bash <howlinbash@posteo.de><CR>', 'From Howlin Bash')
hb.lnmap('date', ':r! date -I<CR>kJA', 'Append date to line')


-- -- OS Interaction

-- Copy paste
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]], { desc = '[ ][y]ank to system clipboard' })
vim.keymap.set("n", "<leader>Y", [["+Y]], { desc = '[ ][Y]ank whole line to system clipboard' })
hb.lnmap('sp', ':set paste<CR><esc>', 'set paste')

-- Terminal
vim.keymap.set({'n', 't'}, '<C-j><C-j>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })
hb.lnmap('te', ':vsp term://bash<CR>', 'Open terminal in vsplit')
hb.lnmap('hte', ':sp term://bash<CR>', 'Open terminal in split')

-- vim config
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { desc = '[ ] Make current file e[X]ecutable', silent = true })
hb.lnmap("so", ":so<CR>", "[ ][SO]urce file")


-- -- PLUGINS

hb.lnmap('how', ':vsp ~/src/manual/index.md<CR>', 'Open The Howlin Manual')

local home_dir = os.getenv("HOME")
local launch_todo = ':sp '..home_dir..'/.todo/boards/index.todo<CR>'
hb.lnmap('todo', launch_todo, 'Open Todos')
