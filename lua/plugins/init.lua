-- Automatically install packer
local install_path = vim.fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
  PACKER_BOOTSTRAP = vim.fn.system({
    "git",
    "clone",
    "--depth",
    "1",
    "https://github.com/wbthomason/packer.nvim",
    install_path,
  })
  print("Installing packer close and reopen Neovim...")
  vim.cmd [[packadd packer.nvim]]
end

-- Autocommand that reload neovim whenever you save the this file
vim.cmd [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost init.lua source <afile> | PackerSync
  augroup end
]]

local status_ok, packer = pcall(require, "packer")
if not status_ok then
  return
end

packer.init {
  display = {
    open_fn = function()
      return require("packer.util").float({ border = "rounded" })
    end,
  },
}

return packer.startup(function(use)
  use 'wbthomason/packer.nvim'
  use 'folke/tokyonight.nvim'

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

  if PACKER_BOOTSTRAP then
    require("packer").sync()
  end
end)
