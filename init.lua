vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.opt.relativenumber = true
vim.opt.number = true
vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4

-- KEYMAPS --------------------------------------------------------------------
--
local keymap = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- navigate splits
keymap('n', '<c-j>', '<c-w>j', opts) -- navigate to split below current
keymap('n', '<c-k>', '<c-w>k', opts) -- navigate to split above current
keymap('n', '<c-h>', '<c-w>h', opts) -- navigate to split left of current
keymap('n', '<c-l>', '<c-w>l', opts) -- navigate to split right of current

-- <leader>h clears search highlighting
vim.keymap.set('n', '<leader>h', ':nohlsearch<CR>')

-- LSP key maps ':help vim.lsp' for further information
keymap('n', 'gd', ':lua vim.lsp.buf.definition()<cr>', opts)            -- Jump to definition 
keymap('n', 'gD', ':lua vim.lsp.buf.declaration()<cr>', opts)           -- Jump to declaration
keymap('n', 'gi', ':lua vim.lsp.buf.implementation()<cr>', opts)        -- Jump to implementation
keymap('n', 'K', ':lua vim.lsp.buf.hover()<cr>', opts)                  -- open hover card
keymap('n', '<leader>k', ':lua vim.lsp.buf.signature_help()<cr>', opts) -- signature help  
keymap('n', '<leader>rn', ':lua vim.lsp.buf.rename()<cr>', opts)        -- rename

-- toggle treesitter
vim.keymap.set('n', '<c-n>', ':NvimTreeFindFileToggle<CR>')

-- telescope fuzzy finder
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
vim.keymap.set('n', '<leader>fo', builtin.oldfiles, {})
