local status_ok, tree = pcall(require, "nvim-tree")
if not status_ok then
  vim.notify("Nvim tree not found!")
  return
end

local function custom_methods(bufnr)
  local api = require "nvim-tree.api"

  local function opts(desc)
    return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
  end

  local function change_working_directory()
    local node = api.tree.get_node_under_cursor()

    api.tree.change_root_to_node(node)
    vim.cmd("cd " .. node.absolute_path)
  end

  vim.keymap.set('n', '<C-]>', change_working_directory, opts('Change Working Directory'))
end

tree.setup({
  -- on_attach = custom_methods,
  sort_by = "case_sensitive",
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
