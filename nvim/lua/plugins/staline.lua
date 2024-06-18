return {
  'tamton-aquib/staline.nvim',

  config = true,
  opts = {
    defaults = {
      left_separator = '',
      right_separator = '',
      line_column = '%l:%c ', -- `:h stl` to see all flags.

      fg = '#000000', -- Foreground text color.
      bg = 'none', -- Default background is transparent.
      inactive_color = '#303030',
      inactive_bgcolor = 'none',
      true_colors = true, -- true lsp colors.
      font_active = 'none', -- "none", "bold", "italic", "bold,italic", etc

      mod_symbol = ' !',
      branch_symbol = ' ',
    },
    -- los colores sugeridos son re lindos, sino los por defecto son segun el colorscheme
    -- mode_colors = {
    --   n = '#2bbb4f',
    --   c = '#e27d60',
    --   i = '#986fec',
    --   v = '#4799eb',
    -- },
    mode_icons = {
      n = ' ', -- 
      i = ' ',
      c = ' ',
      v = ' ',
    },
    sections = {
      left = { '- ', '-mode', 'left_sep_double', ' ', 'branch' },
      mid = { 'file_name' },
      right = { 'filas -> %L ', 'right_sep_double', '-line_column' },
    },
    inactive_sections = {
      left = { 'branch' },
      mid = { 'file_name' },
      -- right = { 'line_column' },
    },
  },
}
