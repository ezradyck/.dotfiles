local configs = require('nvim-treesitter.configs')

configs.setup({
    ensure_installed = { 'lua', 'vim', 'javascript', 'typescript', 'tsx', 'rust', 'go', },
    sync_install = false,
    highlight = { enabled = true },
    indent = { enabled = true },
})
