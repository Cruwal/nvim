vim.cmd [[packadd packer.nvim]]

require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'

  use 'folke/tokyonight.nvim'
  vim.cmd [[colorscheme tokyonight]]

  use 'nvim-treesitter/nvim-treesitter'
  require'nvim-treesitter.configs'.setup {
    ensure_installed = { "c", "lua", "rust", "ruby", "javascript", "typescript", "go", "json" },
    highlight = {
      enable = true,
    }
  }

  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }
  require('lualine').setup {
    options = {
      icons_enabled = true,
      theme = 'tokyonight',
    }
  }

  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.0',
    requires = {
      {'nvim-lua/plenary.nvim'},
      {'BurntSushi/ripgrep'},
      {'nvim-telescope/telescope-fzf-native.nvim'}
    }
  }
  require('telescope').setup{
    pickers = {
      find_files = {
        theme = "dropdown",
      }
    }
  }
end)

vim.opt.list = true
vim.opt.cursorline = true
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.incsearch = true
vim.opt.smartindent = true
vim.spell = true
vim.spelllang = 'en'
vim.opt.wrap = false

-- Keymaps
vim.g.mapleader = ' '

-- save
vim.keymap.set('n', '<leader>w', '<cmd>w<CR>')
vim.keymap.set('n', '<leader>e', '<cmd>Ex<CR>')

require("conf.maps")

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
