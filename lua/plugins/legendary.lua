return {
  'mrjones2014/legendary.nvim',
  dependencies = {
    'hinell/duplicate.nvim',
  },
  priority = 10000,
  lazy = false,
  config = function()
    local legendary = require 'legendary'
    legendary.keymaps {
      -- duplicate
      {
        description = 'Line: duplicate up',
        mode = { 'n' },
        '<C-A-Up>',
        '<CMD>LineDuplicate -1<CR>',
      },
      {
        description = 'Line: duplicate down',
        mode = { 'n' },
        '<C-A-Down>',
        '<CMD>LineDuplicate +1<CR>',
      },
      {
        description = 'Selection: duplicate up',
        mode = { 'v' },
        '<C-A-Up>',
        '<CMD>VisualDuplicate -1<CR>',
      },
      {
        description = 'Selection: duplicate down',
        mode = { 'v' },
        '<C-A-Down>',
        '<CMD>VisualDuplicate +1<CR>',
      },
      -- project
      {
        description = 'find a project based on patterns',
        mode = { 'n' },
        '<leader>d',
        '<CMD>Telescope neovim-project discover<CR>',
      },
      {
        description = 'select a project from your recent history',
        mode = { 'n' },
        '<leader>h',
        '<CMD>Telescope neovim-project history<CR>',
      },
    }
  end,
}
