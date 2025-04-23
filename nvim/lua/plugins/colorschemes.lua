local transparency = false

return {
  {
    'Mofiqul/dracula.nvim',
    'folke/tokyonight.nvim',
    'nyoom-engineering/oxocarbon.nvim',
    'Yazeed1s/minimal.nvim',
    'olivercederborg/poimandres.nvim',
    'akinsho/horizon.nvim',
    'olimorris/onedarkpro.nvim',
    'AlexvZyl/nordic.nvim',
    -- :OnedarkproExportToKitty (puede exportar el colorscheme a kitty)
  },
  { -- Colorscheme manager
    'vague2k/huez.nvim',
    -- if you want registry related features, uncomment this
    -- import = "huez-manager.import"
    branch = 'stable',
    -- event = 'UIEnter',
    priority = 1100,

    config = function()
      require('huez').setup {
        background = 'dark',
        picker = {
          themes = {
            layout = 'top',
          },
        },
      }
    end,
  },
  {
    'sainnhe/sonokai',
    lazy = false,
    priority = 1000,
    config = function()
      vim.g.sonokai_enable_italic = 0 -- true?
      vim.g.sonokay_better_performance = 1 -- true?
      vim.g.sonokai_transparent_background = 0
      vim.g.sonokay_syle = 'default' -- default, atlantis, andromeda, shusia, maia, espresso
      vim.g.sonokai_colors_override = {
        bg0 = { '#1b1c20', '235' },
        bg2 = { '#191b20', '236' },
      }
    end,
  },
  { 'catppuccin/nvim', name = 'catppuccin' },
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
            -- bg1 = '#1d2029',
            bg1 = '#18140d',
          },
        },
      }
    end,
  },
  {
    'navarasu/onedark.nvim',
    opts = {
      style = 'warmer', -- dark, darker, cool, deep, warm, warmer, light
      transparent_background = transparency,
    },
  },
  {
    'tiagovla/tokyodark.nvim',
    opts = { transparent_background = transparency },
  },
  {
    'comfysage/evergarden',
    opts = {
      transparent_background = transparency,
      contrast_dark = 'hard', -- 'hard'|'medium'|'soft'
    },
  },
}
