require('hb')

local todo = vim.fn.expand("~/.config/nvim/todo/todo.vim")
local todo_syntax = vim.fn.expand("~/.config/nvim/syntax/todo.vim")

vim.cmd("source " .. todo)
-- vim.cmd("syntax on")
-- vim.cmd("syntax enable")
vim.cmd("source " .. todo_syntax)
