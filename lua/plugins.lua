return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'


    -- Mason

    use 'williamboman/mason.nvim'
    use 'williamboman/mason-lspconfig.nvim'

    -- Rust
    use 'neovim/nvim-lspconfig'
    use 'simrat39/rust-tools.nvim'
    use 'nvim-treesitter/nvim-treesitter'

    -- Completion framework:
    use 'hrsh7th/nvim-cmp'

    -- LSP completion source:
    use 'hrsh7th/cmp-nvim-lsp'

    -- Useful completion sources:
    use 'hrsh7th/cmp-nvim-lua'
    use 'hrsh7th/cmp-nvim-lsp-signature-help'
    use 'hrsh7th/cmp-vsnip'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/vim-vsnip'
    use 'puremourning/vimspector'

    use 'voldikss/vim-floaterm'

    use 'nvim-tree/nvim-tree.lua'
    use 'nvim-tree/nvim-web-devicons'

    use 'folke/todo-comments.nvim'
    use 'tanvirtin/monokai.nvim'
    use {
        'numToStr/Comment.nvim',
        config = function()
            require('Comment').setup()
        end
    }

    use 'folke/trouble.nvim'

    use 'RRethy/vim-illuminate'

    use "nvim-lua/plenary.nvim"
    use 'BurntSushi/ripgrep'
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.1',
        requires = { {'nvim-lua/plenary.nvim'} }
    }
   -- other plugins...
end)
