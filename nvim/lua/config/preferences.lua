local opt = vim.opt

opt.number = true
opt.relativenumber = true
opt.signcolumn = "yes"

-- wrap and break lines
opt.wrap = true
opt.linebreak = true

-- sync clipboard
opt.clipboard = "unnamedplus"

-- beautify buffer
opt.termguicolors = true

-- indentation
opt.autoindent = true
opt.smartindent = true
opt.ignorecase = true
opt.smartcase = true
opt.shiftwidth = 2
opt.tabstop = 2
opt.softtabstop = 2
opt.expandtab = true
opt.cindent = true

opt.swapfile = false
opt.backup = false
opt.writebackup = false

opt.hlsearch = false
opt.incsearch = true

opt.scrolloff = 12
opt.sidescrolloff = 8
opt.colorcolumn = "120"
opt.updatetime = 50

-- cursorline
opt.cursorline = true
opt.cursorlineopt = "both"

-- split buffer
opt.splitbelow = true
opt.splitright = true

-- pop-up menu
opt.pumblend = 30
opt.pumheight = 10

-- preview window
-- opt.pvw = true
-- opt.pvh = 10

opt.backspace = 'indent,eol,start' -- Allow backspace on (default: 'indent,eol,start')
opt.conceallevel = 0 -- So that `` is visible in markdown files (default: 1)
opt.fileencoding = 'utf-8' -- The encoding written to a file (default: 'utf-8')
opt.cmdheight = 1 -- More space in the Neovim command line for displaying messages (default: 1)
opt.breakindent = true -- Enable break indent (default: false)
opt.timeoutlen = 300 -- Time to wait for a mapped sequence to complete (in milliseconds) (default: 1000)
opt.completeopt = 'menuone,noselect' -- Set completeopt to have a better completion experience (default: 'menu,preview')
opt.shortmess:append 'c' -- Don't give |ins-completion-menu| messages (default: does not include 'c')
opt.iskeyword:append '-' -- Hyphenated words recognized by searches (default: does not include '-')
opt.formatoptions:remove { 'c', 'r', 'o' } -- Don't insert the current comment leader automatically for auto-wrapping comments using 'textwidth', hitting <Enter> in insert mode, or hitting 'o' or 'O' in normal mode. (default: 'croql')
opt.runtimepath:remove '/usr/share/vim/vimfiles' -- Separate Vim plugins from Neovim in case Vim still in use (default: includes this path if Vim is installed)
opt.whichwrap = 'bs<>[]hl' -- Which "horizontal" keys are allowed to travel to prev/next line (default: 'b,s')

-- highlight on yank
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})
