return {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    keys = {
        { "<leader>a", nil, desc = "Fugitive Mark" },
        { "<leader>e", nil, desc = "Open Fugitive" },
        { "<leader>1", nil, desc = "Jump to page 1" },
        { "<leader>2", nil, desc = "Jump to page 2" },
        { "<leader>3", nil, desc = "Jump to page 3" },
        { "<leader>4", nil, desc = "Jump to page 4" },
    },
    dependencies = {
        {"nvim-lua/plenary.nvim"},
        {"vhyrro/luarocks.nvim", priority = 1000, config = true,},
    },
    config = function() 
        local mark = require("harpoon.mark")
        local ui = require("harpoon.ui")

        vim.keymap.set("n", "<leader>a", mark.add_file)
        vim.keymap.set("n", "<leader>e", ui.toggle_quick_menu)

        vim.keymap.set("n", "<<leader>1", function() ui.nav_file(1) end)
        vim.keymap.set("n", "<<leader>2", function() ui.nav_file(2) end)
        vim.keymap.set("n", "<<leader>3", function() ui.nav_file(3) end)
        vim.keymap.set("n", "<<leader>4", function() ui.nav_file(4) end)

    end,

}
