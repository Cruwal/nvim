return {
  init_options = { hostInfo = 'neovim' },
  cmd = { 'typescript-language-server', '--stdio' },
  filetypes = {
    'typescript',
    'javascript',
    'typescript.tsx',
    'javascript.jsx',
    'typescriptreact',
    'javascriptreact',
  },
  root_markers = { 'package-lock.json', 'yarn.lock', 'pnpm-lock.yaml', 'bun.lockb', 'bun.lock' }
}
