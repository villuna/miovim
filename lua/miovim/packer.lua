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
                    },
                    rlib = {
                        icon = "󱘗",
                        color = "#DEA584",
                        name = "Rlib",
                    },
                    [".gitignore"] = {
                        icon = "󰊢",
                        color = "#F22C00",
                        name = "GitIgnore",
                    },
                    json = {
                        icon = "󰘦",
                        color = "#cbcb41",
                        cterm_color = "185",
                        name = "Json",
                    },
                    tja = {
                        icon = "󰪡",
                        color = "#F84828",
                        name = "Tja",
                    },
                    png = {
                        icon = "󰈟",
                        color = "#26a69a",
                        name = "Png",
                    },
                    jpg = {
                        icon = "󰈟",
                        color = "#26a69a",
                        name = "Jpg",
                    },
                    jpeg = {
                        icon = "󰈟",
                        color = "#26a69a",
                        name = "Jpeg",
                    },
                    mp4 = {
                        icon = "󰎁",
                        color = "#ff9800",
                        cterm_color = "208",
                        name = "Mp4",
                    },
                    mp3 = {
                        icon = "󰝚",
                        color = "#f44336",
                        cterm_color = "203",
                        name = "Mp3",
                    },
                    wav = {
                        icon = "󰝚",
                        color = "#f44336",
                        cterm_color = "203",
                        name = "Wav",
                    },
                    ogg = {
                        icon = "󰝚",
                        color = "#f44336",
                        cterm_color = "203",
                        name = "ogg",
                    },
                    wgsl = {
                        icon = "󰠱",
                        color = "#39e678",
                        name = "Wgsl",
                    },
                    glsl = {
                        icon = "󰠱",
                        color = "#39e678",
                        name = "Glsl",
                    },
                    ["LICENSE"] = {
                        icon = "󰄤",
                        color = "#ff5722",
                        cterm_color = "202",
                        name = "License",
                    },
                };
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
    use {
        "folke/which-key.nvim",
        config = function()
            vim.o.timeout = true
            vim.o.timeoutlen = 300
            require("which-key").setup {
                -- your configuration comes here
                -- or leave it empty to use the default settings
                -- refer to the configuration section below
            }
        end
    }

    use "RRethy/vim-illuminate"

    use {"akinsho/toggleterm.nvim", tag = '*', config = function()
        require("toggleterm").setup({
            open_mapping = [[<c-`>]],
            insert_mappings = true,
            start_in_insert = true,
        })
    end}

    use 'andweeb/presence.nvim'
end)
