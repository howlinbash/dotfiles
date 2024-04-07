require('lualine').setup {
  options = {
    icons_enabled = true,
    -- component_separators = '|',
    -- section_separators = '',
  },
  sections = { lualine_c = { '%F', '%m' } },

  inactive_sections = {
    lualine_c = { { '%F', color = { fg = '#fff' } }, '%m' },
    -- lualine_c = { '%F', '%m', }
  },
}
