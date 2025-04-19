return {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.8',
    dependencies = {
        'nvim-lua/plenary.nvim'
    },
    cmd = {
        "Telescope",
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
                require('telescope.builtin').live_grep();
            end,
            desc = "Grep Search",
        },
        {
            "<leader>pd",
            "<cmd>Telescope git_files<cr>",
            desc = "Search Filenames in Git Repo",
        },
    }
}
