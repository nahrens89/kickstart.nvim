-- Neo-tree is a Neovim plugin to browse the file system
-- https://github.com/nvim-neo-tree/neo-tree.nvim

return {
        'nvim-neo-tree/neo-tree.nvim',
        version = '*',
        dependencies = {
                'nvim-lua/plenary.nvim',
                'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
                'MunifTanjim/nui.nvim',
        },
        lazy = false,
        keys = {
                { '\\', ':Neotree reveal<CR>', desc = 'NeoTree reveal', silent = true },
        },
        opts = {
                filesystem = {
                        visible = true,
                        hide_dotfiles = false,
                        hide_gitignored = false,
                        filtered_items = {
                                visible = true, -- This is what you want: if you set this to `true`, all "hide" just mean "dimmed out"
                                hide_dotfiles = false,
                                hide_gitignored = false,
                                hide_by_name = {
                                        -- Add any specific files/folders you want to hide here
                                        -- ".git",
                                        -- "node_modules",
                                },
                                never_show = { -- Remains completely hidden
                                        -- Add files that should never be shown
                                },
                        },
                },
                window = {
                        mappings = {
                                ['\\'] = 'close_window',
                        },
                },
        },
}
