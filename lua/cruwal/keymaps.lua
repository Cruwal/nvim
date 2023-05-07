vim.g.mapleader = " "

--------- Normal ----------
vim.keymap.set('n', '<leader>w', '<cmd>w<CR>')
vim.keymap.set('n', '<leader>q', '<cmd>bd<CR>')
vim.keymap.set('n', '<leader>Q', '<cmd>%bd|e#<CR>')

-- Better window navigation
vim.keymap.set('n', '<C-h>', '<C-w>h')
vim.keymap.set('n', '<C-j>', '<C-w>j')
vim.keymap.set('n', '<C-k>', '<C-w>k')
vim.keymap.set('n', '<C-l>', '<C-w>l')

-- Change all occurrences of the word
vim.keymap.set("n", "<leader>rw", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

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
vim.keymap.set('n', '<leader>gt', require("custom.rspec").go_to_test_file)

-------- Visual -------------
vim.keymap.set('v', '<', '<gv')
vim.keymap.set('v', '>', '>gv')

-- Preserve the copied string when paste
vim.keymap.set("x", "<leader>p", [["_dP]])

-- Fugitive ---
vim.keymap.set('n', "<leader>cc", '<cmd>Git commit<CR>')
vim.keymap.set('n', "<leader>ca", '<cmd>Git commit --amend --no-edit<CR>')
vim.keymap.set('n', "<leader>gf", '<cmd>Git fetch<CR>')
vim.keymap.set('n', "<leader>pp", '<cmd>Git push<CR>')
vim.keymap.set('n', "<leader>pf", '<cmd>Git push -f<CR>')
vim.keymap.set('n', "<leader>rb", '<cmd>Git rebase -i HEAD~15<CR>')
vim.keymap.set('n', "<leader>gl",
  "<cmd>Git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit<CR>")
-- Fugitive - Conflicts ---
vim.keymap.set('n', "<leader>gc", '<cmd>Gvdiffsplit!<CR>')
vim.keymap.set('n', "<leader>gch", '<cmd>diffget //2<CR>')
vim.keymap.set('n', "<leader>gcl", '<cmd>diffget //3<CR>')
