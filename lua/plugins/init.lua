return {
    {
        "moll/vim-bbye",
        event = "BufEnter"
    },
    {
        "rcarriga/nvim-notify",
        event = "VeryLazy",
        config = function()
            vim.notify = require("notify")

            require("notify").setup({
                background_colour = "#000000",
            })
        end
    },

    {
        "kevinhwang91/nvim-ufo",
        event = "BufEnter",
        dependencies = "kevinhwang91/promise-async"
    },

    -- DEBUG,
    -- { "mfussenegger/nvim-dap", lazy = true },
    -- { "rcarriga/nvim-dap-ui",  lazy = true },
    -- { "leoluz/nvim-dap-go",    lazy = true },
    -- Surround,

    {
        "tpope/vim-surround",
        event = "VeryLazy"
    },
    {
        "dstein64/vim-startuptime",
        cmd = "StartupTime"
    },

    -- TreeSitter.,
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
        event = "VeryLazy",
        config = function()
            local configs = require 'nvim-treesitter.configs'
            configs.setup {
                ensure_installed = 'all',
                -- установка phpdoc падает на m1
                ignore_install = { 'phpdoc', 'smali' },
                highlight = { -- enable highlighting
                    enable = true,
                },
                indent = {
                    enable = false, -- default is disabled anyways
                },
            }
        end
    },
    -- Helping indent lines.,
    {
        "lukas-reineke/indent-blankline.nvim",
        event = "VeryLazy",
        main = "ibl",
        opts = {

            scope = { enabled = false },
        },
    },

    { "preservim/tagbar",        lazy = true },
    { "neovim/nvim-lspconfig",   lazy = true },
    { "williamboman/mason.nvim", lazy = true },
    { "mbbill/undotree" },
    {
        "folke/trouble.nvim",
        dependencies = "nvim-tree/nvim-web-devicons",
        config = true,
        lazy = true

    },
    -- snippets,
    {
        "ray-x/lsp_signature.nvim",
        event = "VeryLazy",
        config = true
    },
    {
        "numToStr/Comment.nvim",
        config = true,
        event = "BufEnter",
        --    lazy = true

    },
    {
        'stevearc/oil.nvim',
        opts = {},
        -- Optional dependencies
        dependencies = { "nvim-tree/nvim-web-devicons" },
    }
}
