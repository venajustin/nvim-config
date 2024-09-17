return {
    "folke/zen-mode.nvim",
    opts = {},
    keys = {
        {
            "<leader>zz", nil, desc = "Zen Mode toggle"
        },
        {
            "<leader>zZ", nil, desc = "Super Zen Mode"
        },
    },
    config = function()
        vim.keymap.set("n", "<leader>zz", function()
            require("zen-mode").setup{
                window = {
                    width = 90,
                    option = { }
                },
            }
            require("zen-mode").toggle()
            vim.wo.wrap = false
            vim.wo.number = true
            vim.wo.rnu = true
        end)

        vim.keymap.set("n", "<leader>zZ", function()
            require("zen-mode").setup {
                window = {
                    width = 80,
                    options = { }
                },
            }
            require ("zen-mode").toggle()
            vim.wo.wrap = false
            vim.wo.number = false
            vim.wo.rnu = false
        end)
    end
    
            
}
