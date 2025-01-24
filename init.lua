require("config.lazy")

vim.o.termguicolors = true
vim.cmd 'colorscheme dracula'
-- vim.cmd 'colorscheme visual_studio_code'
vim.cmd 'set tabstop=2'
vim.cmd 'set shiftwidth=2 smarttab'
vim.cmd 'set number'

-- use space as leader key
vim.cmd 'nnoremap <SPACE> <Nop>'
vim.g.mapleader = " "

-- map <SPACE>e to open error diagnostic
vim.cmd 'map <SPACE>e :lua vim.diagnostic.open_float(0, {scope="line"})<CR>'

-- telescope
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>lg', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>bf', builtin.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>ht', builtin.help_tags, { desc = 'Telescope help tags' })

-- Start NERDTree and put the cursor back in the other window.
-- vim.cmd 'autocmd VimEnter * NERDTree | wincmd p'
-- vim.cmd 'map <leader>f :NERDTreeFind<cr>'
-- vim.cmd 'map <leader>z :NERDTreeToggle<cr>'

-- gitsigns
require('gitsigns').setup()

-- fidget
require('fidget').setup()

