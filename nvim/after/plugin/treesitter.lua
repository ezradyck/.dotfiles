local configs = require('nvim-treesitter.configs')

configs.setup({
    ensure_installed = { 'lua', 'vim', 'javascript', 'typescript', 'tsx', 'rust', 'go', },
    sync_install = false,
    highlight = { enable = true },
    indent = { enable = true },
})

local parser_config = require('nvim-treesitter.parsers').get_parser_configs()

parser_config.blade = {
    install_info = {
        url = "https://github.com/EmranMR/tree-sitter-blade",
        files = {"src/parser.c"},
        branch = "main",
    },
    filetype = "blade"
}

-- " Set the *.blade.php file to be filetype of blade 
-- augroup BladeFiltypeRelated
--   au BufNewFile,BufRead *.blade.php set ft=blade
-- augroup END
