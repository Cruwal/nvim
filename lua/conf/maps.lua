vim.keymap.set('n', '<leader>w', '<cmd>w<CR>')
vim.keymap.set('n', '<leader>e', '<cmd>Ex<CR>')

vim.keymap.set('n', '<leader>t', require("custom.rspec").run_test_file)
vim.keymap.set('n', '<leader>tl', require("custom.rspec").run_current_test)
