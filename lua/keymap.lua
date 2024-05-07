vim.g.mapleader = ' '
local keymap = vim.keymap
local opts = { noremap = true, expr = true }

keymap.set('n', '<c-a>', 'ggVG')

keymap.set({ 'n', 'x' }, '<leader>p', '"0p')

keymap.set('n', '<leader>q', '<cmd>q<cr>')
keymap.set('n', '<leader>w', '<cmd>w<cr>')
keymap.set('n', '<leader>x', '<cmd>x<cr>')

keymap.set('n', 'j', [[v:count?'j':'gj']], opts)
keymap.set('n', 'k', [[v:count?'k':'gk']], opts)

keymap.set('n', '<leader>nh', ':nohl<CR>', { desc = 'Clear search highlights' })

keymap.set('n', '<Leader>hh', ':nohlsearch<CR>', opts)

local opt = { noremap = true, silent = true }
local map = vim.api.nvim_set_keymap

--Control + S to save files
map('n', '', ':write<CR>', opt)
map('i', '', '<ESC>:write<CR>', opt)
