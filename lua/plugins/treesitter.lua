return {
    "nvim-treesitter/nvim-treesitter",
    build = function()
        install = require("nvim-treesitter.install")
        install.update({ with_sync = true })()
    end,
    config = function() 
        require("nvim-treesitter.install").compilers = {"clang"}        
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
            }
        })
        vim.cmd([[TSEnable highlight]])

    end,
}

