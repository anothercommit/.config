return {
  'tpope/vim-sleuth', -- Detect tabstop and shiftwidth automatically
  'onsails/lspkind.nvim',
  -- 'xiyaowong/transparent.nvim',
  {
    'windwp/nvim-autopairs',
    event = 'InsertEnter',
    config = true,
  },
  {
    'norcalli/nvim-colorizer.lua',
    event = 'VeryLazy',
    config = true,
  },
  {
    'numToStr/Comment.nvim',
    opts = {
      ignore = '^$', --ignore empty lines
    },
  },
  {
    'lewis6991/gitsigns.nvim',
    opts = {
      signs = {
        add = { text = '+' },
        change = { text = '~' },
        delete = { text = '_' },
        topdelete = { text = '‾' },
        changedelete = { text = '~' },
      },
    },
  },
  -- Highlight todo, notes, etc in comments
  {
    'folke/todo-comments.nvim',
    event = 'VimEnter',
    dependencies = { 'nvim-lua/plenary.nvim' },
    opts = { signs = false },
  },
  { -- Useful plugin to show you pending keybinds.
    'folke/which-key.nvim',
    event = 'VimEnter',
    -- config = function()
    --   require('which-key').setup()

    --   -- Document existing key chains
    --   require('which-key').register {
    --     ['<leader>c'] = { name = '[C]ode', _ = 'which_key_ignore' },
    --     ['<leader>d'] = { name = '[D]ocument', _ = 'which_key_ignore' },
    --     ['<leader>r'] = { name = '[R]ename', _ = 'which_key_ignore' },
    --     ['<leader>s'] = { name = '[S]earch', _ = 'which_key_ignore' },
    --     ['<leader>w'] = { name = '[W]orkspace', _ = 'which_key_ignore' },
    --   }
    -- end,
  },
}
