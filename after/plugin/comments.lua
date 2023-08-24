local status_ok, comment = pcall(require, "Comment")
if not status_ok then
  vim.notify("Comment not found!")
  return
end

comment.setup {
  mappings = { extra = false },
  toggler = { line = '<leader>/' },
  opleader = { line = '<leader>/' },
}
