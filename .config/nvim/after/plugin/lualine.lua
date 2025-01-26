require('lualine').setup {
  options = {
    icons_enabled = true,
    -- component_separators = '|',
    -- section_separators = '',
  },
  sections = {
    lualine_b = {},
    -- lualine_c = { '%F', '%m' },
    lualine_c = { { '%F', color = { fg = '#fff' } }, '%m' },
    -- Comment out below to see filformat (os) and encoding
    lualine_x = {
      'filetype'
    }
  },

  inactive_sections = {
    -- lualine_c = { '%F', '%m', }
    lualine_c = { { '%F', color = { fg = '#fff' } }, '%m' },
  },
}

