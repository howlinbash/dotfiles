-- Enable telescope fzf native, if installed
local telescope = require('telescope')
pcall(telescope.load_extension, 'fzf')

telescope.setup {
  pickers = {
    buffers = {
      show_all_buffers = true,
      sort_lastused = true,
      mappings = {
        i = {
          ["<c-d>"] = "delete_buffer",
        }
      }
    }
  },
  extensions = {
    ["ui-select"] = {
      require("telescope.themes").get_dropdown {
        -- even more opts
      }
    }
  }
}

require("telescope").load_extension("ui-select")

local hb = require('hb.lib')
local builtin = require('telescope.builtin')

local telefzf = function()
  -- You can pass additional configuration to telescope to change theme, layout, etc.
  builtin.current_buffer_fuzzy_find(require('telescope.themes').get_dropdown {
    winblend = 10,
    previewer = false,
  })
end

hb.lnmap('/', telefzf, '[ ][/] Fuzzily search in current buffer')
hb.lnmap('dl', builtin.diagnostics, '[ ][D]iagnostics [L]ist')
hb.lnmap('ma', builtin.marks, '[ ] Show [MA]rks')
hb.lnmap('sk', builtin.keymaps, '[ ][S]how [K]eymaps')
hb.lnmap('lb', builtin.builtin, '[ ][L]ist [B]uiltin telescope commands')
hb.lnmap('sh', builtin.help_tags, '[ ][S]earch [H]elp')
hb.lnmap('sf', hb.split(builtin.find_files, 1), '[ ][S]earch [F]iles')
hb.lnmap('sr', hb.split(builtin.git_files, 1), '[ ][S]earch [R]epo files')
hb.lnmap('sg', hb.split(builtin.live_grep, 1), '[ ][S]earch by [G]rep')
hb.lnmap('fw', hb.split(builtin.grep_string, 1), '[ ][F]ind [W]ord in other files')
hb.lnmap('sl', hb.split(builtin.oldfiles, 1), '[ ][S]how [L]atest opened files')
hb.lnmap('<leader>', hb.split(builtin.buffers, 1), '[ ][ ] Find existing buffers')
hb.lnmap('hsf', hb.split(builtin.find_files), '[ ][H][S]earch [F]iles in split')
hb.lnmap('hsr', hb.split(builtin.git_files), '[ ][H][S]earch [R]epo files in split')
hb.lnmap('hsg', hb.split(builtin.live_grep), '[ ][H][S]earch by [G]rep in split')
hb.lnmap('hfw', hb.split(builtin.grep_string), '[ ][H][F]ind [W]ord in other files in split')
hb.lnmap('hsl', hb.split(builtin.oldfiles), '[ ][H][S]how [L]atest opened files in split')
hb.lnmap('h<leader>', hb.split(builtin.buffers), '[ ][H][ ] Find existing buffers in split')
hb.lnmap('jsf', builtin.find_files, '[ ][J][S]earch [F]iles in current buffer')
hb.lnmap('jsr', builtin.git_files, '[ ][J][S]earch [R]epo files in current buffer')
hb.lnmap('jsg', builtin.live_grep, '[ ][J][S]earch by [G]rep in current buffer')
hb.lnmap('jfw', builtin.grep_string, '[ ][J][F]ind [W]ord in other files in current buffer')
hb.lnmap('jsl', builtin.oldfiles, '[ ][J][S]how [L]atest opened files in current buffer')
hb.lnmap('j<leader>', builtin.buffers, '[ ][J][ ] Find existing buffers in current buffer')


---
---
--- My New Goto Type Definition Plugin
---
---

local function bye()
  local win_count = vim.fn.winnr('$')
  for i = 1, win_count, 1 do
    local win_id = vim.fn.win_getid(i)
    local config = vim.api.nvim_win_get_config(win_id)
    if config.focusable and config.relative ~= '' then
      vim.fn.win_gotoid(win_id)
    end
  end
end

local hi = function ()
  vim.api.nvim_del_augroup_by_name('hack')
  vim.fn.timer_start(20, bye)
end

local goto_hover = function()
  local hack_group = vim.api.nvim_create_augroup('hack', { clear = true })
  vim.api.nvim_create_autocmd('BufEnter', {
    callback = hi,
    group = hack_group,
    pattern = '*',
  })
  vim.lsp.buf.hover()
end

local function on_list(options)
  local symbol = options.items[1]
  vim.cmd('split +' ..  symbol.lnum .. ' ' .. symbol.filename)
  vim.fn.search(options.context.params.query)
end

local function goto_definition()
  local cword = vim.fn.expand("<cword>")
  vim.api.nvim_win_close(0, true)
  vim.lsp.buf.workspace_symbol(cword, {on_list=on_list})
end

hb.nmap('gh', goto_hover, '[ ] Goto [H]over')
hb.lnmap('tt', goto_definition, '[ ] Go[T]o [T]ype definition')


---
---
--- My New Mappings Plugin
---
---

local actions = require("telescope.actions")
local finders = require("telescope.finders")
local pickers = require("telescope.pickers")
local conf = require("telescope.config").values
local entry_display = require("telescope.pickers.entry_display")
local action_state = require("telescope.actions.state")
local utils = require "telescope.utils"

local includes = function(tbl, x)
  local found = false
  for _, v in pairs(tbl) do
    if v == x then
      found = true
    end
  end
  return found
end

local function custom_keymaps(opts)
  local displayer = entry_display.create({
    separator = "▏",
    items = {
      { width = 2 },
      { width = 18 },
      { remaining = true },
    },
  })
  local make_display = function(entry)
    return displayer({
      { entry.mode, "TelescopeResultsIdentifier" },
      { entry.keys, "TelescopeResultsOperator" },
      { entry.description, "TelescopeResultsNumber" },
    })
  end

  opts.modes = vim.F.if_nil(opts.modes, { "n", "i", "c", "x" })
  opts.show_plug = vim.F.if_nil(opts.show_plug, true)
  opts.only_buf = vim.F.if_nil(opts.only_buf, false)

  local new_maps = {
    '  ',
    ' /',
    ' bl',
    ' ch',
    ' di',
    ' dl',
    ' ds',
    ' fsb',
    ' fsn',
    ' fw',
    ' la',
    ' lb',
    ' ma',
    ' p',
    ' rn',
    ' sf',
    ' sg',
    ' sh',
    ' sk',
    ' sl',
    ' so',
    ' sr',
    ' tt',
    ' wp',
    ' ws',
    ' wT',
    ' wx',
    ' x',
    ' y',
    ' Y',
    'gd',
    'gD',
    'gI',
    'go',
    'gr',
    'J',
    'K',
    '[d',
    ']d',
    '<C-H>',
  }


  local keymap_encountered = {} -- used to make sure no duplicates are inserted into keymaps_table
  local keymaps_table = {}
  local max_len_lhs = 0

  -- helper function to populate keymaps_table and determine max_len_lhs
  local function extract_keymaps(keymaps)
    for _, keymap in pairs(keymaps) do
      local keymap_key = keymap.buffer .. keymap.mode .. keymap.lhs -- should be distinct for every keymap
      if not keymap_encountered[keymap_key] then
        keymap_encountered[keymap_key] = true
        if
          (opts.show_plug or not string.find(keymap.lhs, "<Plug>"))
          and (not opts.lhs_filter or opts.lhs_filter(keymap.lhs))
        then
          if
            (includes(new_maps, keymap.lhs) and (keymap.desc ~= nil))
          then
            table.insert(keymaps_table, keymap)
            max_len_lhs = math.max(max_len_lhs, #utils.display_termcodes(keymap.lhs))
          end
        end
      end
    end
  end

  for _, mode in pairs(opts.modes) do
    local global = vim.api.nvim_get_keymap(mode)
    local buf_local = vim.api.nvim_buf_get_keymap(0, mode)
    if not opts.only_buf then
      extract_keymaps(global)
    end
    extract_keymaps(buf_local)
  end

  pickers.new(opts, {
    prompt_title = "New Mappings",
    sorter = conf.generic_sorter(opts),
    finder = finders.new_table({
      results = keymaps_table,
      entry_maker = function(mapping)
        return {
          value = mapping,
          ordinal = mapping.mode .. mapping.lhs .. mapping.desc,
          display = make_display,

          mode = mapping.mode,
          keys = mapping.lhs,
          description = mapping.desc,
        }
      end,
    }),
    attach_mappings = function(prompt_bufnr)
      actions.select_default:replace(function()
        local selection = action_state.get_selected_entry()
        if selection == nil then
          utils.__warn_no_selection "builtin.keymaps"
          return
        end

        vim.api.nvim_feedkeys(
          vim.api.nvim_replace_termcodes(selection.value.lhs, true, false, true),
          "t",
          true
        )
        return actions.close(prompt_bufnr)
      end)
      return true
    end,
  }):find()
end

hb.lnmap('sm', function() custom_keymaps(require("telescope.themes").get_dropdown{
    layout_config = {
      width = 120,
      height = 40
    }
  }) end, '[S]how my custom key[M]aps')
