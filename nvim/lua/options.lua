o = vim.opt
g = vim.g

g.have_nerd_font = true
o.termguicolors = true
o.writebackup = false
o.swapfile = false

-- mostrar una status bar global al trabajar con splits
vim.opt.laststatus = 3
-- mostrar la tabline: 0 (nunca), 1 (+1 archivo), 2 (siempre)
vim.opt.showtabline = 1

-- que cuando hay un comentario, 'o' u 'O' no continue comentando
-- vim.api.nvim_create_autocmd('FileType', {
--   pattern = '*',
--   callback = function()
--     vim.opt_local.formatoptions:remove { 'o' }
--   end,
-- })

o.number = true
o.relativenumber = true

o.mouse = 'a'

o.showmode = false
o.tabstop = 4
o.shiftwidth = 4
o.expandtab = true

--  Remove this option if you want your OS clipboard to remain independent.
-- o.clipboard = 'unnamedplus'

-- Save undo history
if vim.loop.os_uname().sysname ~= 'Darwin' then
  o.undofile = true
end

-- Case-insensitive searching UNLESS \C or one or more capital letters in the search term
o.ignorecase = true
o.smartcase = true
o.showmatch = true -- show matching parenthesis on cursor hover

o.background = 'dark'
o.wrap = false
o.cmdheight = 0
o.foldmethod = 'marker'
o.foldlevel = 0

-- el espacio a la izquierda
o.signcolumn = 'no'

-- Decrease update time
o.updatetime = 250

-- Decrease mapped sequence wait time. Displays which-key popup sooner
o.timeoutlen = 600

-- Configure how new splits should be opened
o.splitright = true
o.splitbelow = true

-- mostrar caracteres en los tab y etc
--  See `:help 'list'`
o.list = true
--  and `:help 'listchars'`
--o.listchars = { tab = '»', trail = '·', nbsp = '␣', eol = '' }

-- Preview substitutions live, as you type!
o.inccommand = 'split'

-- Show which line your cursor is on
o.cursorline = true

-- Minimal number of screen lines to keep above and below the cursor.
o.scrolloff = 10

-- Set highlight on search, but clear on pressing <Esc> in normal mode
o.hlsearch = true

o.autoindent = true -- maintain indent of current line
o.breakindent = true -- continue indent visually
o.belloff = 'all' -- I NEVER want to hear this bell for ANY reason
-- opt.clipboard = "unnamedplus" -- use '+' register for all yanks, and deletes, sync with system clipboard
o.confirm = true -- confirm to save changes before closing modified buffer
o.colorcolumn = { '+1' }
o.expandtab = true -- always use spaces instead of tabs
o.inccommand = 'split' -- line preview of :s results
o.incsearch = true -- do incremental searching
o.joinspaces = true -- don't autoinsert two spaces after '.', '?', '!' for join command
o.showbreak = '↳ ' -- downwards arrow with tip rightwards(U+21B3, UTF-8: E2 86 B3)
o.showcmd = false -- dont show extra info at end of command line
o.showmode = false -- I have a status line for this
o.sidescrolloff = 8 -- same as 'scrolloff' but for columns
o.smarttab = true -- <tab><bs> indent/deindent in leading whitespace
o.termguicolors = true -- use 24bit colors in tui
o.ttyfast = true -- let vim know that I am using a fast term
o.virtualedit = 'block' -- allow cursor to move where there is no text in visual block mode
o.visualbell = false -- stop beeping for non-error errors, please god

o.formatoptions = o.formatoptions -- :help fo-table
  + 'r' -- continue comment with enter
  - 'o' -- but not w/ o and o, dont continue comments
  + 'n' -- smart auto indenting inside numbered lists
  - '2' -- this is not grade school anymore

o.shortmess = o.shortmess
  + 'A' -- ignore annoying swapfile messages
  + 'W' -- dont echo '[w]/[written]' when writing
  + 'a' -- use abbreviations in message '[ro]' instead of '[readonly]'

-- o.wildmode = { -- shell-like autocomplete to unambiguous portions
--   'longest',
--   'list',
--   'full',
-- }
