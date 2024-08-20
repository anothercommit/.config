return {
  {
    'Mofiqul/dracula.nvim',
    'folke/tokyonight.nvim',
    'nyoom-engineering/oxocarbon.nvim',
    'Yazeed1s/minimal.nvim',
    'olivercederborg/poimandres.nvim',
    'akinsho/horizon.nvim',
    'olimorris/onedarkpro.nvim',
    -- :OnedarkproExportToKitty (puede exportar el colorscheme a kitty)
  },
  {
    'sainnhe/sonokai',
    lazy = false,
    priority = 1000,
    config = function()
      vim.cmd 'colorscheme sonokai'
    end,
  },
  { 'catppuccin/nvim', name = 'catppuccin' },
  {
    'AlexvZyl/nordic.nvim',
    -- lazy = false,
    -- priority = 1000,

    -- config = function()
    --   vim.cmd 'colorscheme nordic'
    -- end,
  },
  {
    'EdenEast/nightfox.nvim',
    config = function()
      require('nightfox').setup {
        palettes = {
          nordfox = {
            -- A palette also defines the following:
            --   bg0, bg1, bg2, bg3, bg4, fg0, fg1, fg2, fg3, sel0, sel1, comment
            --
            -- These are the different foreground and background shades used by the theme.
            -- The base bg and fg is 1, 0 is normally the dark alternative. The others are
            -- incrementally lighter versions.
            bg0 = '#1e2340',
            bg1 = '#1d2029',
          },
        },
      }
    end,
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
}
