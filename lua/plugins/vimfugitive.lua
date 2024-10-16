return {
    "tpope/vim-fugitive",
    opts = {},
    keys = {
        { "<leader>gs", "<cmd>Git<cr>", desc = "Git Tools" },
        { "<leader>gb", "<cmd>Git blame<cr>", desc = "Git Blame" },
    },
    config = function()
    end,
}
