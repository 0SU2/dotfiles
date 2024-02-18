return {
    -- comment a single o multiple lines with gcc command
    {
        "numToStr/Comment.nvim",
        config = function()
            require("Comment").setup()
        end
    },
    -- onedark for the colorscheme, also its have a config file in other directory to took better style
    {
        "sainnhe/sonokai",
        priority = 1000,
        config = function()
                vim.cmd("let g:sonokai_transparent_background = 0")
                vim.cmd("colorscheme sonokai")
        end
    },
    -- lualine for the icons in the bottom
    {
        "nvim-lualine/lualine.nvim",
        dependecies = {
            "nvim-tree/nvim-web-devicons"
        },
        config = function()
            require("lualine").setup({
                icons_enable = true,
                theme = 'onedark',
            })
        end,
    },
    -- colorizer helps to display colors in the editor
    {
        "norcalli/nvim-colorizer.lua",
        config = function()
            require("colorizer").setup()
        end
    },
    -- lsp plugins
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
        "neovim/nvim-lspconfig",
        { 'folke/neodev.nvim', opts = {} },

    -- code completion 
    {
        'hrsh7th/nvim-cmp',
        dependencies = {
            'L3MON4D3/LuaSnip',
            'saadparwaiz1/cmp_luasnip',
            'rafamadriz/friendly-snippets',
            'hrsh7th/cmp-nvim-lsp',
        },
    },
    -- nvim tree for file extension
    {
        "nvim-tree/nvim-tree.lua",
        version = "*",
        lazy = false,
        dependencies = {
            "nvim-tree/nvim-web-devicons",
        },
            config = function()
                require("nvim-tree").setup {}
            end,
    },
    -- telescope 
    {
        'nvim-telescope/telescope.nvim',
        dependencies = { 'nvim-lua/plenary.nvim' }
    },
    {
        'nvim-telescope/telescope-fzf-native.nvim',
        build = 'make'
    },
    -- treesitter
    {
        'nvim-treesitter/nvim-treesitter',
        build = ':TSUpdate',
    },
}
