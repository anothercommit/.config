return {
  {
    -- 'projekt0n/github-nvim-theme',
    'folke/tokyonight.nvim',
    'nyoom-engineering/oxocarbon.nvim',
    'dgox16/oldworld.nvim',
    'Yazeed1s/oh-lucy.nvim',
    'Yazeed1s/minimal.nvim',
    'olivercederborg/poimandres.nvim',
    'zootedb0t/citruszest.nvim',
    'EdenEast/nightfox.nvim',
    'akinsho/horizon.nvim',

    'olimorris/onedarkpro.nvim',
    -- :OnedarkproExportToKitty (puede exportar el colorscheme a kitty)

    'ribru17/bamboo.nvim',
    -- config = function()
    --   require('bamboo').load()
    -- end,
  },
  {
    'Mofiqul/dracula.nvim',
    opts = {
      transparent_bg = true,
    },
  },
  {
    'AlexvZyl/nordic.nvim',
    -- config = function()
    --   require('nordic').load()
    -- end,
  },
  {
    'navarasu/onedark.nvim',
    opts = {
      style = 'warmer', -- 'dark', 'darker', 'cool', 'deep', 'warm', 'warmer', 'light'
      transparent_background = true,
    },
    -- config = function()
    --   require('onedark').load()
    -- end,
  },
  {
    'neanias/everforest-nvim',
    config = function()
      require('everforest').setup {
        background = 'hard', -- soft, medium, hard
        ui_contrast = 'low', -- low, high
      }
    end,
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
    lazy = false,
    priority = 1000,
    init = function()
      vim.cmd.colorscheme 'evergarden'
    end,
    opts = {
      transparent_background = true,
      contrast_dark = 'medium', -- 'hard'|'medium'|'soft'
    },
  },
  {
    'sainnhe/sonokai',
  },
}
