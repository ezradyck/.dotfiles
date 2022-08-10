return require('packer').startup(function()
  use 'wbthomason/packer.nvim'

  -- lsp packages
  use 'neovim/nvim-lspconfig'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-buffer'
  use 'onsails/lspkind-nvim'
  use 'nvim-lua/lsp_extensions.nvim'
  use 'simrat39/symbols-outline.nvim'
  use 'L3MON4D3/LuaSnip'
  use 'saadparwaiz1/cmp_luasnip'

  -- telescope
  use 'nvim-lua/plenary.nvim'
  use {
      'nvim-telescope/telescope.nvim', tag = '0.1.0',
      requires = {
          { 'nvim-lua/plenary.nvim' }
      }
  }

  -- statusline 
  -- TODO: need to confirm if this is actually being used
  use 'vim-airline/vim-airline'
  use 'vim-airline/vim-airline-themes'

  -- color themes
  use("gruvbox-community/gruvbox")
  use("folke/tokyonight.nvim")

  -- treesitter
  use('nvim-treesitter/nvim-treesitter', {
      run = ':TSUpdate'
  })

  use ('nvim-treesitter/playground')
  use('nvim-treesitter/nvim-treesitter-context');

  use({
      "iamcco/markdown-preview.nvim",
      run = function() vim.fn["mkdp#util#install"]() end,
  })
end)
