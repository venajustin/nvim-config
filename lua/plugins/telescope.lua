return {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.8',
    dependencies = { 
        'nvim-lua/plenary.nvim' 
    },
    keys = {
        {
            "<leader>pf", 
            "<cmd>Telescope find_files<cr>",
            desc = "Search Filenames in Active Dir",
        },
        {
            "<leader>pc", 
            function()
                require('telescope.builtin').grep_string(
                {
                    search = vim.fn.input("Grep > ")
                }); 
            end,
            desc = "Grep Search",
        },
            "<leader>pd", 
            "<cmd>Telescope git_files<cr>",
            desc = "Search Filenames in Git Repo",
        },
    }

