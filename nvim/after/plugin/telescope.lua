local builtin = require('telescope.builtin')

require('telescope').setup({
  defaults = {
    preview = {
      treesitter = false,
    }
  }
})

vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
--vim.keymap.set('n', '<C-p>', builtin.git_files, {})
