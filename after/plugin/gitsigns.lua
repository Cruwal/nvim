local gitsigns = require('gitsigns')

gitsigns.setup()
vim.keymap.set('n', '<leader>gj', gitsigns.next_hunk, {})
vim.keymap.set('n', '<leader>gk', gitsigns.prev_hunk, {})
vim.keymap.set('n', '<leader>gp', gitsigns.preview_hunk, {})
vim.keymap.set('n', '<leader>gb', function() gitsigns.blame_line{full=true} end)
vim.keymap.set('n', '<leader>gu', ':Gitsigns reset_hunk<CR>')
