local status_ok, gitsigns = pcall(require, 'gitsigns')
if not status_ok then
  vim.notify("Gitsigns not found!")
  return
end

gitsigns.setup()
vim.keymap.set('n', '<leader>gj', gitsigns.next_hunk, {})
vim.keymap.set('n', '<leader>gk', gitsigns.prev_hunk, {})
vim.keymap.set('n', '<leader>gu', gitsigns.reset_hunk)
vim.keymap.set('n', '<leader>ga', gitsigns.stage_hunk)
vim.keymap.set('n', '<leader>gbl', gitsigns.blame_line)
vim.keymap.set('n', '<leader>pv', gitsigns.preview_hunk)
