local telescope = require("telescope.builtin")

local cmds = function(commands, func)
  return function()
    print 'inside gd'
    for _, cmd in ipairs(commands) do
      vim.cmd(cmd)
    end
    if func then
      func()
    end
  end
end

local split_string = function(v, dot)
  local spl = 'split'
  if v then
    spl = 'v' .. spl
  end
  if dot then
    spl = spl .. ' ./'
  end
  return spl
end

local hb = {}

function hb.split(func, v)
  return cmds({ split_string(v) }, func)
end

function hb.dot_split(func, v)
  return cmds({ split_string(v, 1), func })
end

function hb.map(mode, keys, func, desc, opts)
  if opts then
    opts[desc] = desc
  else
    opts = { desc = desc }
  end
  vim.keymap.set(mode, keys, func, opts)
end

function hb.nmap(keys, func, desc, opts)
  hb.map('n', keys, func, desc, opts)
end

function hb.lnmap(keys, func, desc, opts)
  hb.nmap('<leader>' .. keys, func, desc, opts)
end

function hb.lsp_references()
  telescope.lsp_references({ fname_width = 70, trim_text = true })
end

function hb.trinity(func, m)
  if m == 0 then
    return hb.split(func, 1)
  end
  if m == 1 then
    return hb.split(func)
  end
  if m == 2 then
    return func
  end
end

return hb
