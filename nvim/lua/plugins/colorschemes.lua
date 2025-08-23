local transparency = false

return {
  {
    'folke/tokyonight.nvim',
    'nyoom-engineering/oxocarbon.nvim',
    'akinsho/horizon.nvim',
    'olimorris/onedarkpro.nvim',
  },
  { -- Colorscheme manager
    'vague2k/huez.nvim',
    -- if you want registry related features, uncomment this
    import = "huez-manager.import",
    branch = 'stable',
    -- event = 'UIEnter',
    priority = 1100,

    config = function()
      require('huez').setup {
        background = 'dark',
        -- picker = {
        --   themes = {
        --     layout = 'top',
        --   },
        -- },
      }
    end,
  },
  {
    'sainnhe/sonokai',
    -- lazy = false,
    -- priority = 1000,
    config = function()
      vim.g.sonokai_enable_italic = 0 -- true?
      vim.g.sonokay_better_performance = 1 -- true?
      vim.g.sonokai_transparent_background = 0
      vim.g.sonokay_syle = 'default' -- default, atlantis, andromeda, shusia, maia, espresso
      vim.g.sonokai_colors_override = {
        bg0 = { '#0f1012', '235' },
        bg2 = { '#0e0f12', '236' },
      }
    end,
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
