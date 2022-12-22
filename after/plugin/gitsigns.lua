local gitsigns = require('gitsigns')

gitsigns.setup()
vim.keymap.set('n', '<leader>gj', gitsigns.next_hunk, {})
vim.keymap.set('n', '<leader>gk', gitsigns.prev_hunk, {})
vim.keymap.set('n', '<leader>gp', gitsigns.preview_hunk, {})
vim.keymap.set('n', '<leader>gb', gitsigns.blame_line)
vim.keymap.set('n', '<leader>gu', ':Gitsigns reset_hunk<CR>')
