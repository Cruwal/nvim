local lsp = require('lsp-zero')

lsp.preset('recommended')

lsp.ensure_installed({
	'tsserver',
	'eslint',
	'sumneko_lua',
	'solargraph'
})

lsp.set_preferences({ sign_icons = {} })

lsp.on_attach(function(client, bufnr)
  local bufopts = { noremap=true, silent=true, buffer=bufnr }

  vim.keymap.set('n', '<leader>gd', vim.lsp.buf.definition, bufopts)
  vim.keymap.set('n', '<leader>gr', vim.lsp.buf.references, bufopts)
  vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, bufopts)
  vim.keymap.set('n', '<leader>f', function() vim.lsp.buf.format { async = true } end, bufopts)
  vim.keymap.set("n", "<leader>d", vim.diagnostic.open_float, bufopts)
end)

lsp.setup()
