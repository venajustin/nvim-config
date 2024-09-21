return {
    "folke/todo-comments.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = {},
    keys = {
        {
            "<leader>tt", "<cmd>TodoTelescope keywords=TODO,FIX,FIXME<cr>",
            desc = "ToDo list, (TODO/FIX/FIXME)",
        },
    }
}
