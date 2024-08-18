return {
  {
    'folke/tokyonight.nvim',
    'nyoom-engineering/oxocarbon.nvim',
    'Yazeed1s/minimal.nvim',
    'olivercederborg/poimandres.nvim',
    'akinsho/horizon.nvim',
    'olimorris/onedarkpro.nvim',
    -- :OnedarkproExportToKitty (puede exportar el colorscheme a kitty)
  },
  {
    'EdenEast/nightfox.nvim',
    lazy = false,
    priority = 1000,

    opts = {
      transparent_bg = false,
    },

    init = function()
      vim.cmd 'colorscheme terafox'
    end,
  },
  {
    'Mofiqul/dracula.nvim',
    opts = {
      transparent_bg = false,
    },
  },
  {
    'navarasu/onedark.nvim',
    opts = {
      style = 'warmer', -- dark, darker, cool, deep, warm, warmer, light
      transparent_background = false,
    },
  },
  {
    'neanias/everforest-nvim',
    opts = {
      background = 'hard', -- soft, medium, hard
      ui_contrast = 'high', -- low, high
    },
  },
  { 'catppuccin/nvim', name = 'catppuccin' },
  {
    'tiagovla/tokyodark.nvim',
    opts = { transparent_background = false },
  },
  {
    'comfysage/evergarden',
    opts = {
      transparent_background = false,
      contrast_dark = 'hard', -- 'hard'|'medium'|'soft'
    },
  },
  {
    'sainnhe/sonokai',
  },
}
