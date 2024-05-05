return {
  'NeogitOrg/neogit',
  dependencies = {
    'nvim-lua/plenary.nvim', -- required
    'sindrets/diffview.nvim', -- optional - Diff integration
    'nvim-telescope/telescope.nvim', -- optional
  },
  config = function()
    require('neogit').setup {
      -- Make neogit crash...
      -- mappings = { status = { ['<c-t>'] = false } },
    }
    vim.keymap.set('n', '<leader>gs', '<cmd>Neogit kind=auto<CR>', { desc = '[G]it [S]tatus (Neogit)' })
    vim.keymap.set('n', '<leader>gc', '<cmd>Neogit commit<CR>', { desc = '[G]it [C]ommit (Neogit)' })
    vim.keymap.set('n', '<leader>gp', '<cmd>Neogit pull<CR>', { desc = '[G]it [P]ull (Neogit)' })
    vim.keymap.set('n', '<leader>gP', '<cmd>Neogit push<CR>', { desc = '[G]it [P]ush (Neogit)' })
  end,
}
