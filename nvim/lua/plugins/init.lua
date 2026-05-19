return {
    {
        'nvim-telescope/telescope.nvim',
        dependencies = { 'nvim-lua/plenary.nvim' },
    },

    'tpope/vim-fugitive',
    'tpope/vim-sleuth',

    {
        'numToStr/Comment.nvim',
        lazy = false,
        config = function()
            require('Comment').setup()
        end
    },


    {
        'folke/trouble.nvim',
        config = function()
            require('trouble').setup({
                icons = false
            })
        end
    },

    -- Snippets
    'L3MON4D3/LuaSnip',
    'rafamadriz/friendly-snippets',

    {
        'lukas-reineke/indent-blankline.nvim',
        main = "ibl",
    }
}
