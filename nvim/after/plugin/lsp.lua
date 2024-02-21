local lsp = require('lsp-zero')

lsp.on_attach(function(client, bufnr)
  lsp.default_keymaps({ buffer = bufnr })

  vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, { buffer = bufnr })
  vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, { buffer = bufnr })
  vim.keymap.set('n', 'gI', vim.lsp.buf.implementation, { buffer = bufnr })
  vim.keymap.set('n', '<leader>D', vim.lsp.buf.type_definition, { buffer = bufnr })
  vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, { buffer = bufnr })
  vim.keymap.set('n', '<leader>f', vim.lsp.buf.format, { buffer = bufnr })
end)

require('mason').setup()
require('mason-lspconfig').setup({
  ensure_installed = { 'tsserver', 'lua_ls', 'rust_analyzer' },
  handlers = {
    lsp.default_setup,
    tsserver = function()
      require('lspconfig').tsserver.setup({
        on_attach = function(client, bufnr)
          client.server_capabilities.documentFormattingProvider = false;
        end,
      })
    end,
    lua_ls = function()
      require('lspconfig').lua_ls.setup(lsp.nvim_lua_ls())
    end
  },
})
