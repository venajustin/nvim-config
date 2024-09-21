return {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    keys = {
        { "<leader>a", nil, desc = "Harpoon Mark" },
        { "<C-e>", nil, desc = "Open Harpoon" },
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

        local harpoon = require("harpoon")

        -- REQUIRED
        harpoon:setup()
        -- REQUIRED

        vim.keymap.set("n", "<leader>a", function() harpoon:list():add() end)
        vim.keymap.set("n", "<C-e>", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)

        vim.keymap.set("n", "<leader>1", function() harpoon:list():select(1) end)
        vim.keymap.set("n", "<leader>2", function() harpoon:list():select(2) end)
        vim.keymap.set("n", "<leader>3", function() harpoon:list():select(3) end)
        vim.keymap.set("n", "<leader>4", function() harpoon:list():select(4) end)

        --[[ I would like to use these, but idk about what keybind to put them on
        -- Toggle previous & next buffers stored within Harpoon list
        vim.keymap.set("n", "<C-S-P>", function() harpoon:list():prev() end)
        vim.keymap.set("n", "<C-S-N>", function() harpoon:list():next() end)
        ]]--

    end,

}
