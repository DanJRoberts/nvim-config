vim.g.mapleader = " "
vim.g.maplocalleader = " "
vim.wo.wrap = false

vim.opt.relativenumber = true
vim.opt.number = true
vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.spelllang = "en_ca"
-- KEYMAPS --------------------------------------------------------------------
--
local keymap = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- Spelling
-- '<F7>' toggles Spellchecking
-- '[s' navigates to next misspelled word
-- ']s' navigates to previous misspelled word
-- 'z=' suggest correction
keymap('n', '<F7>', ':set spell!<CR>', opts) -- Toggle Spell check

-- navigate splits
keymap('n', '<c-j>', '<c-w>j', opts) -- navigate to split below current
keymap('n', '<Down>', '<c-w>j', opts) -- navigate to split below current
keymap('n', '<c-k>', '<c-w>k', opts) -- navigate to split above current
keymap('n', '<Up>', '<c-w>k', opts) -- navigate to split above current
keymap('n', '<c-h>', '<c-w>h', opts) -- navigate to split left of current
keymap('n', '<Left>', '<c-w>h', opts) -- navigate to split left of current
keymap('n', '<c-l>', '<c-w>l', opts) -- navigate to split right of current
keymap('n', '<Right>', '<c-w>l', opts) -- navigate to split right of current

--
keymap('i', 'jk', '<ESC>', opts) -- navigate to split right of current

-- <leader>h clears search highlighting
keymap('n', '<leader>h', ':nohlsearch<CR>', opts)

-- LSP keymaps are listed in ./plugin/lsp_config.lua 

-- Code completion keymaps are listed in ./plugin/completion.lua 

-- toggle nvim-tree
keymap('n', '<c-n>', ':NvimTreeFindFileToggle<CR>', opts)

-- telescope fuzzy finder
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})       -- find filename
vim.keymap.set('n', '<leader><leader>', builtin.oldfiles, {})   -- list previously opened files
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})        -- search for string in current directory
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})        -- List available help tags


