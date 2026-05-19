vim.opt.number  = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.smartindent = true

vim.opt.wrap = false

vim.o.mouse = 'a'
vim.wo.number = true

-- Sync clipboard between OS and Neovim.
vim.o.clipboard = 'unnamedplus'

vim.o.breakindent = true

vim.o.ignorecase = true
vim.o.smartcase = true

vim.wo.signcolumn = 'yes'

-- Decrease update time
vim.o.updatetime = 250
vim.o.timeout = true
vim.o.timeoutlen = 300

-- TODO: test this out
vim.o.termguicolors = true

-- TODO: do we need this?
vim.o.completeopt = 'menuone,noselect'

vim.api.nvim_create_autocmd('BufWritePre', {
  pattern = { "*" },
  callback = function() vim.opt_local.bomb = false end
})
