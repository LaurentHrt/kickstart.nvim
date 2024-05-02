return {
  'stevearc/oil.nvim',
  opts = {},
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function()
    require('oil').setup {
      view_options = {
        show_hidden = true,
      },
      constrain_cursor = 'name',
      columns = {
        -- 'permissions',
        -- 'size',
        -- 'mtime',
        'icon',
      },
      keymaps = {
        -- ['<C-h>'] = 'actions.select_split',
        -- ['<C-l>'] = 'actions.refresh',
        ['<C-h>'] = false,
        ['<C-l>'] = false,
      },
    }
    vim.keymap.set('n', '<leader>e', '<cmd>Oil<CR>', { desc = '[E]xplore files' })
  end,
}
