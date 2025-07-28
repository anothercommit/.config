o = vim.opt
g = vim.g

vim.api.nvim_create_autocmd('TermOpen', {
  group = vim.api.nvim_create_augroup('custom-term-open', { clear = true }),
  callback = function()
    o.number = false
    o.relativenumber = false
  end,
})

vim.diagnostic.config { jump = { float = true } }

g.have_nerd_font = true
o.termguicolors = true
o.writebackup = false
o.swapfile = false

o.signcolumn = 'no'
vim.opt.laststatus = 3
vim.opt.showtabline = 1 -- tabline: 0 (nunca), 1 (+1 archivo), 2 (siempre)

o.number = true
o.relativenumber = true

o.mouse = 'a'

o.showmode = false
o.tabstop = 4
o.shiftwidth = 4
o.expandtab = true

-- Save undo history
if vim.loop.os_uname().sysname ~= 'Darwin' then
  o.undofile = true
end

o.ignorecase = true
o.smartcase = true
o.showmatch = true -- show matching parenthesis on cursor hover

o.background = 'dark'
o.wrap = false
o.cmdheight = 0
o.foldmethod = 'manual'

-- Decrease update time
o.updatetime = 250

-- Decrease mapped sequence wait time. Displays which-key popup sooner
o.timeoutlen = 1000

o.splitright = true
o.splitbelow = true

-- mostrar caracteres en los tab y etc
--  See `:help 'list'`
-- o.list = true
--  and `:help 'listchars'`
--o.listchars = { tab = '»', trail = '·', nbsp = '␣', eol = '' }

-- Preview substitutions live, as you type!
o.inccommand = 'split'

o.scrolloff = 10

-- Set highlight on search, but clear on pressing <Esc> in normal mode
o.hlsearch = true

o.autoindent = true -- maintain indent of current line
o.breakindent = true -- continue indent visually
o.belloff = 'all'
o.confirm = true -- confirm to save changes before closing modified buffer
o.colorcolumn = { '+1' }
o.expandtab = true -- always use spaces instead of tabs
o.showbreak = '↳ ' -- downwards arrow with tip rightwards(U+21B3, UTF-8: E2 86 B3)
o.showcmd = false -- dont show extra info at end of command line
o.sidescrolloff = 8 -- same as 'scrolloff' but for columns
o.smarttab = true -- <tab><bs> indent/deindent in leading whitespace
o.termguicolors = true
o.ttyfast = true -- let vim know that I am using a fast term
o.virtualedit = 'block' -- allow cursor to move where there is no text in visual block mode
o.visualbell = false -- stop beeping for non-error errors, please god

-- esto no funciona por alguna razon
o.formatoptions = o.formatoptions -- :help fo-table
  + 'r' -- continue comment with enter
  + 'n' -- smart auto indenting inside numbered lists
  - '2' -- el 2 formatea teniendo en cuenta las sangrias
  - 'o' -- que 'o' no continue un comentario

o.shortmess = o.shortmess
  + 'A' -- ignore annoying swapfile messages
  + 'W' -- dont echo '[w]/[written]' when writing
  + 'a' -- use abbreviations in message '[ro]' instead of '[readonly]'
