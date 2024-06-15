return {
  'nvim-lualine/lualine.nvim',
  event = 'VeryLazy',
  opts = {
    options = {
      component_separators = { left = ' ', right = ' ' },
      section_separators = { left = ' ', right = ' ' },
    },
    sections = {
      lualine_a = {
        {
          'mode',
          icon = '',
        },
      },
      lualine_b = { { 'branch', icon = '' }, 'diff', 'diagnostics' },
      lualine_c = {
        { 'filetype', icon_only = true, separator = '', padding = { left = 1, right = 0 } },
        { 'filename', padding = { left = 1 } },
      },
      lualine_x = {},
      lualine_y = { 'progress' },
      lualine_z = { 'location' },
    },
  },
}
