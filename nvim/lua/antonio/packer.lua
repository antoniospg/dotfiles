vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.6',
        -- or                            , branch = '0.1.x',
        requires = { {'nvim-lua/plenary.nvim'} }
    }
    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }
    use({ 'rebelot/kanagawa.nvim',
    as = 'kanagawa' , config = function()
        vim.cmd("colorscheme kanagawa-dragon")
    end})
    --use 'mbbill/undotree'
    use 'tomasky/bookmarks.nvim'
    use 'tpope/vim-fugitive'
    use 'sbdchd/neoformat'
    --use 'preservim/nerdtree'
    use 'nvim-tree/nvim-web-devicons' -- OPTIONAL: for file icons
    use 'lewis6991/gitsigns.nvim' -- OPTIONAL: for git status
    use 'romgrk/barbar.nvim'
    use 'nvim-tree/nvim-tree.lua'
    --use 'folke/neoconf.nvim'
    use 'tpope/vim-surround'
    --use {
    --    'nvim-lualine/lualine.nvim',
    --    requires = { 'nvim-tree/nvim-web-devicons', opt = true }
    --}
    use {"akinsho/toggleterm.nvim", tag = '*', config = function()
        require("toggleterm").setup()
    end}
    use {'VonHeikemen/lsp-zero.nvim', branch = 'v3.x',
    requires = {
        {'williamboman/mason.nvim'},
        {'williamboman/mason-lspconfig.nvim'},
        {'neovim/nvim-lspconfig'},
        {'hrsh7th/cmp-nvim-lsp'},
        {'hrsh7th/nvim-cmp'},
        {'L3MON4D3/LuaSnip'},
    }
}
end)

