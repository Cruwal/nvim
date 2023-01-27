local status_ok, tree = pcall(require, "nvim-tree")
if not status_ok then
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
    enable = false,
    show_on_dirs = false,
    debounce_delay = 50,
  },
  git = {
    ignore = false,
  }
})

vim.keymap.set('n', '<leader>e', ':NvimTreeFindFileToggle<CR>', {})
