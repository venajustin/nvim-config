return {
    "nvim-treesitter/nvim-treesitter",
    build = function()
        require("nvim-treesitter.install").update({ with_sync = true })()
    end,
    config = function()
        require("nvim-treesitter.configs").setup ({
            ensure_installed = {
                "c",
                "cpp",
                "go",
                "lua",
                "vim",
                "vimdoc",
                "query",
                "markdown",
                "markdown_inline",
                "java",
                "javascript",
                "html",
                "css",
                "cmake",
                "glsl",
            }
        })
        vim.cmd([[TSEnable highlight]])

    end,
}

