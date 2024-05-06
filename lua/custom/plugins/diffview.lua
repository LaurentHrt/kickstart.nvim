return {
  'sindrets/diffview.nvim', -- optional - Diff integration
  config = function()
    vim.keymap.set('n', '<leader>fh', '<cmd>DiffviewFileHistory %<CR>', { desc = '[F]ile [H]istory' })
    vim.keymap.set('n', '<leader>dv', '<cmd>DiffviewOpen %<CR>', { desc = '[D]iff [V]iew' })
  end,
}
