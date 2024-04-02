return {
  {
    'folke/tokyonight.nvim',
  },
  {
    'akinsho/horizon.nvim',
    priority = 1000,
    init = function()
      vim.cmd.colorscheme 'horizon'
    end,
  },
}
