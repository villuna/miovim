-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.1',
        -- or                            , branch = '0.1.x',
        requires = { {'nvim-lua/plenary.nvim'} }
    }
    use {
        'folke/tokyonight.nvim',
        config = function()
            vim.cmd('colorscheme tokyonight-night')
        end
    }
    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }
    use 'nvim-treesitter/playground'
    use 'tpope/vim-fugitive'
    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v2.x',
        requires = {
            -- LSP Support
            {'neovim/nvim-lspconfig'},             -- Required
            {                                      -- Optional
                'williamboman/mason.nvim',
                run = function()
                    pcall(vim.cmd, 'MasonUpdate')
                end,
            },
            {'williamboman/mason-lspconfig.nvim'}, -- Optional

            -- Autocompletion
            {'hrsh7th/nvim-cmp'},     -- Required
            {'hrsh7th/cmp-nvim-lsp'}, -- Required
            {'L3MON4D3/LuaSnip'},     -- Required
        }
    }
    use 'nvim-lualine/lualine.nvim'

    use {
        "DaikyXendo/nvim-material-icon",
        config = function()
            require("nvim-material-icon").setup({
                override = {
                    rs = {
                        icon = "󱘗",
                        color = "#FF6133",
                        name = "Rs",
                    }
                };
                override_by_filename = {
                    [".gitignore"] = {
                        icon = "󰊢",
                        color = "#F22C00",
                        name = "Gitignore",
                    }
                }
            })
        end
    }
    use {
        'DaikyXendo/nvim-tree.lua',
        requires = {
            'DaikyXendo/nvim-material-icon', -- optional, for file icons
        },
        --tag = 'nightly' -- optional, updated every week. (see issue #1193)
    }
    use {
        "Yggdroot/indentLine",
        config = function()
            vim.g.indentLine_char = '▏'
        end
    }
end)
