require("conf.options")
require("conf.keymaps")
require("conf.colorscheme")
require("plugins")
require("conf.cmp")
require("conf.lsp")
require("conf.tree")

-- Telecope
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>sf', builtin.find_files, {})
vim.keymap.set('n', '<leader>st', builtin.live_grep, {})
vim.keymap.set('n', '<leader>sr', builtin.oldfiles, {})
vim.keymap.set('n', '<leader>ss', builtin.grep_string, {})

vim.keymap.set('n', '<leader>gr', builtin.lsp_references, {})
vim.keymap.set('n', '<leader>gd', builtin.lsp_definitions, {})
vim.keymap.set('n', '<leader>gi', builtin.lsp_implementations, {})
vim.keymap.set('n', '<leader>go', builtin.git_status, {})

-- Gitsigns
local gitsigns = require('gitsigns')
vim.keymap.set('n', '<leader>gj', gitsigns.next_hunk, {})
vim.keymap.set('n', '<leader>gk', gitsigns.prev_hunk, {})
vim.keymap.set('n', '<leader>gp', gitsigns.preview_hunk, {})
vim.keymap.set('n', '<leader>gb', function() gitsigns.blame_line{full=true} end)
vim.keymap.set('n', '<leader>gu', ':Gitsigns reset_hunk<CR>')

-- Nvim tree
local tree = require('nvim-tree')
vim.keymap.set('n', '<leader>e', ':NvimTreeFindFileToggle<CR>', {})
