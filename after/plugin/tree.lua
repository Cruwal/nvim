local status_ok, tree = pcall(require, "nvim-tree")
if not status_ok then
  vim.notify("Nvim tree not found!")
  return
end

tree.setup({
  sort_by = "case_sensitive",
  view = {
    adaptive_size = true,
    mappings = {
      list = {
        { key = "u", action = "dir_up" },
      },
    },
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = false,
  },
  diagnostics = {
    enable = true,
    show_on_dirs = true,
    debounce_delay = 50,
  },
  git = {
    ignore = false,
  }
})

vim.keymap.set('n', '<leader>e', ':NvimTreeFindFileToggle<CR>', {})
