return {
  'lukas-reineke/indent-blankline.nvim',
  name = 'ibl',
  opts = {

    -- indent = { highlight = whitespace, char = '▏' },
    -- whitespace = {
    --   highlight = whitespace,
    --   remove_blankline_trail = false,
    -- },
    scope = {
      --   highlight = 'white',
      show_start = false,
      show_end = false,
      show_exact_scope = false,
      enabled = false,
    },
    -- local hl = {
    --   'CursorColumn',
    --   'Whitespace',
    -- }

    -- local whitespace = {}
    -- local scope = {}

    -- local hooks = require 'ibl.hooks'
    -- create the highlight groups in the highlight setup hook, so they are reset
    -- every time the colorscheme changes
    -- hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
    -- whitespace
    -- for i, color in pairs { '#3b2529', '#443c31', '#262b4c', '#283e41' } do
    --   local name = 'IBL_Indent' .. i
    --   vim.api.nvim_set_hl(0, name, { bg = color })
    --   table.insert(whitespace, name)
    -- end

    -- vim.api.nvim_set_hl(0, 'white', { fg = '#808080' })
    -- scope
    -- for i, color in pairs { '#bf4e30', '#fcdc4d', '#3772ff', '#47e5bc' } do
    --   local name = 'IBL_Scope' .. i
    --   vim.api.nvim_set_hl(0, name, { fg = color })
    --   table.insert(scope, name)
    -- end
    -- end)
    -- hooks.register(hooks.type.SCOPE_HIGHLIGHT, hooks.builtin.scope_highlight_from_extmark)
  },
}
