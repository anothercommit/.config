return {
  'smoka7/hop.nvim',
  version = 'v2',
  keys = {
    { '<leader><leader>', '<cmd>HopWord<cr>', desc = 'HopWord' },
    { '<leader>l', '<cmd>HopLineStart<cr>', desc = 'Hop[L]ineStart' },
    { '<leader>p', '<cmd>HopPattern<cr>', desc = 'Hop[P]attern' },
  },
  config = true,
}
