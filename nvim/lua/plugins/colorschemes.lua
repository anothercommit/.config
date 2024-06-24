return {
  {
    -- 'projekt0n/github-nvim-theme',
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
    'AlexvZyl/nordic.nvim',

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
      style = 'warmer', -- 'dark', 'darker', 'cool', 'deep', 'warm', 'warmer', 'light'
    },
    -- config = function()
    --   require('onedark').load()
    -- end,
  },
  { 'catppuccin/nvim', name = 'catppuccin' },
  {
    'tiagovla/tokyodark.nvim',
    opts = {
      transparent_background = true,
    },
  },
  {
    'comfysage/evergarden',
    opts = {
      transparent_background = true,
      contrast_dark = 'hard', -- 'hard'|'medium'|'soft'
    },
  },
  {
    'sainnhe/sonokai',
    lazy = false,
    priority = 1000,
    init = function()
      vim.cmd.colorscheme 'sonokai'
    end,
    -- config = function()
    --   require('nordic').load()
    -- end,
  },
}
