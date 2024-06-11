return {
  {
    'folke/tokyonight.nvim',
  },
  {
    'nyoom-engineering/oxocarbon.nvim',
    priority = 1000,
    init = function()
      vim.cmd.colorscheme 'oxocarbon'
    end,
  },
  {
    'tiagovla/tokyodark.nvim',
    opts = {
      transparent_background = false,
    },
    -- config = function(_, opts)
    --   require('tokyodark').setup(opts) -- calling setup is optional
    --   vim.cmd [[colorscheme tokyodark]]
    -- end,
  },
  {
    'akinsho/horizon.nvim',
  },
}
