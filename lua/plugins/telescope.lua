return {
    'nvim-telescope/telescope.nvim', tag = '0.1.8',
    dependencies = { 'nvim-lua/plenary.nvim',
        'BurntSushi/ripgrep',
    },
    config = function() 
        local builtin = require('telescope.builtin')

        vim.keymap.set('n', '<leader>pf', builtin.find_files, { desc = 'Telescope find files'})
        vim.keymap.set('n', '<leader>pc', builtin.live_grep, { desc = 'Telescope live grep'})
        vim.keymap.set('n', '<leader>pb', builtin.buffers, { desc = 'Telescope buffers'})
        vim.keymap.set('n', '<leader>pd', builtin.git_files, { desc = 'Telescope git files'})

        local get_selection = function()
            return vim.fn.getregion(
                vim.fn.getpos ".", vim.fn.getpos "v", {mode = vim.fn.mode() }
            )
        end
        vim.keymap.set(
            "v",
            "<leader>pc",
            function() require("telescope.builtin").live_grep {
                default_text = table.concat(get_selection())
            }
        end,
        {desc = 'Telescope live grep with visual selection' }
        )
        vim.keymap.set(
            "v",
            "<leader>pf",
            function() require("telescope.builtin").find_files {
                default_text = table.concat(get_selection())
            }
        end,
        {desc = 'Telescope live grep with visual selection' }
        )
        vim.keymap.set(
            "v",
            "<leader>pd",
            function() require("telescope.builtin").git_files {
                default_text = table.concat(get_selection())
            }
        end,
        {desc = 'Telescope live grep with visual selection' }
        )
    end,
}
