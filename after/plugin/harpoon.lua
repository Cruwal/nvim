local mark_status_ok, _ = pcall(require, "harpoon.mark")
if not mark_status_ok then
  return
end

local status_ok, _ = pcall(require, "harpoon.ui")
if not status_ok then
  return
end

vim.keymap.set('n', '<leader>m', "<cmd>lua require('harpoon.ui').toggle_quick_menu()<CR>")
vim.keymap.set('n', '<leader>i', "<cmd>lua require('harpoon.mark').add_file()<CR>")
vim.keymap.set('n', '<leader>j', "<cmd>lua require('harpoon.ui').nav_file(1)<CR>")
vim.keymap.set('n', '<leader>k', "<cmd>lua require('harpoon.ui').nav_file(2)<CR>")
vim.keymap.set('n', '<leader>l', "<cmd>lua require('harpoon.ui').nav_file(3)<CR>")
vim.keymap.set('n', '<leader>;', "<cmd>lua require('harpoon.ui').nav_file(4)<CR>")

