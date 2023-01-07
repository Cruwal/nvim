local status_ok, gitsigns = pcall(require, 'gitsigns')
if not status_ok then
  return
end

gitsigns.setup()
vim.keymap.set('n', '<leader>gj', gitsigns.next_hunk, {})
vim.keymap.set('n', '<leader>gk', gitsigns.prev_hunk, {})
vim.keymap.set('n', '<leader>gp', gitsigns.preview_hunk, {})
vim.keymap.set('n', '<leader>gb', gitsigns.blame_line)
vim.keymap.set('n', '<leader>gu', gitsigns.reset_hunk)
vim.keymap.set('n', '<leader>ga', gitsigns.stage_hunk)
