return { -- Highlight, edit, and navigate code
  'nvim-treesitter/nvim-treesitter',
  build = ':TSUpdate',
  lazy = false,
  opts = {
    ensure_installed = {
      'bash',

      'c',
      'cpp',

      'lua',
      'luadoc',
      'vim',
      'vimdoc',

      'markdown',

      'html',
      'javascript',
      'typescript',
      'css',
      'json',
      'sxhkdrc',

      'python',
      'haskell',

      'go',
    },
    -- Autoinstall languages that are not installed
    auto_install = true,
  },
}
