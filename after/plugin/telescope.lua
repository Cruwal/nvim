local status_ok, builtin = pcall(require, 'telescope.builtin')
if not status_ok then
  vim.notify("Telescope not found!")
  return
end

vim.keymap.set('n', '<leader>sg', builtin.find_files, {})
vim.keymap.set('n', '<leader>sf', builtin.git_files, {})
vim.keymap.set('n', '<leader>sw', builtin.live_grep, {})
vim.keymap.set('n', '<leader>sr', builtin.oldfiles, {})
vim.keymap.set('n', '<leader>ss', builtin.grep_string, {})
vim.keymap.set('n', '<leader>sb', builtin.buffers, {})

vim.keymap.set('n', 'gr', builtin.lsp_references, {})
vim.keymap.set('n', 'gi', builtin.lsp_implementations, {})
vim.keymap.set('n', '<leader>o', builtin.git_status, {})
vim.keymap.set('n', '<leader>b', builtin.git_branches, {})
