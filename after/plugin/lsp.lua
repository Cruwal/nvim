local lsp = require('lsp-zero')

lsp.preset('recommended')

lsp.ensure_installed({
  'tsserver',
  'eslint',
  'lua_ls',
  'solargraph'
})

lsp.configure('lua_ls', {
  settings = {
    Lua = {
      diagnostics = {
        globals = { 'vim' }
      }
    }
  }
})

lsp.on_attach(function(_, bufnr)
  local bufopts = { noremap = true, silent = true, buffer = bufnr }

  vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, bufopts)
  vim.keymap.set('n', '<leader>f', vim.lsp.buf.format, bufopts)
  vim.keymap.set("n", "<leader>d", vim.diagnostic.open_float, bufopts)
end)

lsp.setup()
