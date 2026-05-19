require('nvim-treesitter').install({ 'rust', 'lua', 'javascript', 'typescript', 'c_sharp' })

vim.api.nvim_create_autocmd('FileType', {
  pattern = { '*.rs', '*.lua', '*.cs', '*.js', '*.ts', '*.tsx', '*.css', '*.html' },
  callback = function() vim.treesitter.start() end,
})

vim.wo[0][0].foldexpr = 'v:lua.vim.treesitter.foldexpr()'
vim.wo[0][0].foldmethod = 'expr'
