return {
  {
    'folke/tokyonight.nvim',
  },
  {
    'nyoom-engineering/oxocarbon.nvim',
  },
  {
    'tiagovla/tokyodark.nvim',
    opts = {
      transparent_background = false,
    },
  },
  {
    'dgox16/oldworld.nvim',
  },
  {
    'Yazeed1s/oh-lucy.nvim',
  },
  {
    'Yazeed1s/minimal.nvim',
  },
  {
    'neanias/everforest-nvim',
  },
  {
    'olivercederborg/poimandres.nvim',
  },
  {
    'zootedb0t/citruszest.nvim',
  },
  {
    'comfysage/evergarden',
    opts = {
      transparent_background = false,
      contrast_dark = 'hard', -- 'hard'|'medium'|'soft'
    },
  },
  {
    'ribru17/bamboo.nvim',
    config = function()
      require('bamboo').load()
    end,
  },
  {
    'AlexvZyl/nordic.nvim',
    config = function()
      require('nordic').load()
    end,
  },
  {
    'akinsho/horizon.nvim',

    -- Cortar y pegar esto en el tema a usar
    lazy = false,
    priority = 1000,
    init = function()
      vim.cmd.colorscheme 'horizon'
    end,
  },
}
