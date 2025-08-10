return {
    "nvim-treesitter/nvim-treesitter",
    build = function()
        require("nvim-treesitter.install").update({ with_sync = true })()
    end,
    config = function()
        require("nvim-treesitter.configs").setup({
            highlight = {
                enable = true,
			},
			incremental_selection = {
                enable = true,
                keymaps = {
                    init_selection = "<CR>",
                    scope_incremental = "<CR>",
                    node_incremental = "<TAB>",
                    node_decremental = "<S-TAB>",
                }
            },
            ensure_installed = {
                "javascript",
                "c",
                "cpp",
                "lua",
                "markdown",
                "markdown_inline",
                "html",
                "css",
            },
        })
    end,
}
