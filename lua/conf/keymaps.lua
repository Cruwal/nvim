--------- Normal ----------
vim.keymap.set('n', '<leader>w', '<cmd>w<CR>')
vim.keymap.set('n', '<leader>e', '<cmd>Ex<CR>')

-- Better window navigation
vim.keymap.set('n', '<C-h>', '<C-w>h')
vim.keymap.set('n', '<C-j>', '<C-w>j')
vim.keymap.set('n', '<C-k>', '<C-w>k')
vim.keymap.set('n', '<C-l>', '<C-w>l')

vim.keymap.set('n', '<leader>e', ':Lex 30<CR>')

-- Resie with arrows
vim.keymap.set('n', '<C-Up>', ':resize +2<CR>')
vim.keymap.set('n', '<C-Down>', ':resize -2<CR>')
vim.keymap.set('n', '<C-Left>', ':vertical resize +2<CR>')
vim.keymap.set('n', '<C-Right>', ':vertical resize -2<CR>')

-- Navigate buffers
vim.keymap.set('n', '<S-l>', ':bnext<CR>')
vim.keymap.set('n', '<S-h>', ':bprevious<CR>')

-- RSpec
vim.keymap.set('n', '<leader>t', require("custom.rspec").run_test_file)
vim.keymap.set('n', '<leader>tl', require("custom.rspec").run_current_test)


--------- Visual ----------
