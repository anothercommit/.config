return {
  {
    'folke/tokyonight.nvim',
    'nyoom-engineering/oxocarbon.nvim',
    'dgox16/oldworld.nvim',
    'Yazeed1s/oh-lucy.nvim',
    'Yazeed1s/minimal.nvim',
    'neanias/everforest-nvim',
    'olivercederborg/poimandres.nvim',
    'zootedb0t/citruszest.nvim',
    'EdenEast/nightfox.nvim',
    'akinsho/horizon.nvim',
    'sainnhe/sonokai',

    'olimorris/onedarkpro.nvim',
    -- :OnedarkproExportToKitty (puede exportar el colorscheme a kitty)

    'ribru17/bamboo.nvim',
    -- config = function()
    --   require('bamboo').load()
    -- end,
  },
  {
    'navarasu/onedark.nvim',
    opts = {
      style = 'dark', -- 'dark', 'darker', 'cool', 'deep', 'warm', 'warmer', 'light'
    },
    -- config = function()
    --   require('onedark').load()
    -- end,
  },
  { 'catppuccin/nvim', name = 'catppuccin' },
  {
    'tiagovla/tokyodark.nvim',
    opts = {
      transparent_background = false,
    },
  },
  {
    'comfysage/evergarden',
    opts = {
      transparent_background = false,
      contrast_dark = 'hard', -- 'hard'|'medium'|'soft'
    },
  },
  {
    'AlexvZyl/nordic.nvim',
    priority = 1000,
    -- init = function()
    --   vim.cmd.colorscheme 'oxocarbon'
    -- end,
    config = function()
      require('nordic').load()
    end,
  },
}
