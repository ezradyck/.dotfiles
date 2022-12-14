local nnoremap = require("dyck.keymap").nnoremap
local inoremap = require("dyck.keymap").inoremap

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

local cmp = require('cmp')
local source_mapping = {
    nvim_lua = '[Lua]',
    nvim_lsp = '[LSP]',
    buffer = '[Buffer]',
    path = '[Path]',
}
local lspkind = require('lspkind')

cmp.setup({
    snippet = {
        expand = function(args)
            require('luasnip').lsp_expand(args.body)
        end,
    },
    mapping = cmp.mapping.preset.insert({
        ['<c-y>'] = cmp.mapping.confirm({ select = true }),
        ['<c-u>'] = cmp.mapping.scroll_docs(-4),
        ['<c-d>'] = cmp.mapping.scroll_docs(4),
        ['<c-Space>'] = cmp.mapping.complete(),
    }),

    formatting = {
        format = function(entry, vim_item) 
            vim_item.kind = lspkind.presets.default[vim_item.kind]
            local menu = source_mapping[entry.source.name]

            if entry.source.name == 'cmp_tabnine' then
               if entry.completion_item.data ~= nil and entry.completion_item.data.detail ~= nil then
                   menu = entry.completion_item.data.detail .. ' ' .. menu
               end
               vim_item.kind = ""
           end
           vim_item.menu = menu
           return vim_item
       end,
    },

    sources = {
        { name = 'luasnip' },
        { name = 'nvim_lsp' },
    }
})

local function config(_config)
    return vim.tbl_deep_extend("force", {
        capabilities = require("cmp_nvim_lsp").update_capabilities(vim.lsp.protocol.make_client_capabilities()),
        on_attach = function()
            nnoremap("gd", function() vim.lsp.buf.definition() end)
            nnoremap("K", function() vim.lsp.buf.hover() end)
            nnoremap("<leader>vrr", function() vim.lsp.buf.references() end)
            nnoremap("<leader>vrn", function() vim.lsp.buf.rename() end)
            inoremap("<c-h>", function() vim.lsp.buf.signature_help() end)
        end,
    }, _config or {})
end

require("lspconfig").pyright.setup{}

-- TODO: maybe don't use omnisharp... memory hog
-- '/Users/ezradyck/.local/omnisharp/omnisharp/OmniSharp.exe'
require('lspconfig').omnisharp.setup(config({
    cmd = { 'C:/Users/EzraDyck/AppData/Local/omnisharp/OmniSharp.exe' },
    autostart = true
}))

require('lspconfig').rust_analyzer.setup(config({
    settings = {
        ['rust-analyzer'] = {
            imports = {
                granularity = {
                    group = 'module',
                },
                prefix = 'self',
            },
            cargo = {
                buildScripts = {
                    enable = true,
                },
            },
            procMacro = {
                enable = true,
            },
        }
    }
}))

local opts = {
    -- whether to highlight the currently hovered symbol
    -- disable if your cpu usage is higher than you want it
    -- or you just hate the highlight
    -- default: true
    hightlight_hovered_item = true,

    -- whether to show outline guides
    -- default: true
    show_guides = true,
}

require('symbols-outline').setup(opts)
