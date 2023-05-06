local status_ok, mark = pcall(require, "harpoon.mark")
if not status_ok then
  return
end

local status_ok, ui = pcall(require, "harpoon.ui")
if not status_ok then
  return
end

vim.keymap.set('n', '<leader>h', "<cmd>lua require('harpoon.ui').toggle_quick_menu()<CR>")
vim.keymap.set('n', '<leader>hi', "<cmd>lua require('harpoon.mark').add_file()<CR>")
vim.keymap.set('n', '<leader>ha', "<cmd>lua require('harpoon.ui').nav_file(1)<CR>")
vim.keymap.set('n', '<leader>hs', "<cmd>lua require('harpoon.ui').nav_file(2)<CR>")
vim.keymap.set('n', '<leader>hd', "<cmd>lua require('harpoon.ui').nav_file(3)<CR>")
vim.keymap.set('n', '<leader>hf', "<cmd>lua require('harpoon.ui').nav_file(4)<CR>")

