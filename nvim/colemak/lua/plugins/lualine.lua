return {
  'nvim-lualine/lualine.nvim',
  event = 'VeryLazy',
  opts = {
    options = {
      icons_enabled = true,
      theme = 'auto',
      component_separators = { left = ' ', right = ' ' },
      section_separators = { left = ' ', right = ' ' },
      globalstatus = true,
    },
    sections = {
      lualine_a = {
        {
          'mode',
          icon = '',
          color = {
            bg = '',
            fg = 'auto',
          },
        },
      },
      lualine_b = { { 'branch', icon = '' }, 'diff', 'diagnostics' },
      lualine_c = {
        { 'filetype', icon_only = true, separator = '', padding = { left = 1, right = 0 } },
        { 'filename', padding = { left = 0 } },
      },
      lualine_x = {},
      lualine_y = { 'progress', 'location' },
      lualine_z = {
        {
          function()
            return '  ' .. os.date '%X' .. ' 👾'
          end,
          color = {
            bg = '',
            fg = 'grey',
          },
        },
      },
    },
    tabline = {},
    winbar = {},
    inactive_winbar = {},
    extensions = {},
  },
}
