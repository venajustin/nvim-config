return {
    "eandrju/cellular-automaton.nvim",
    config = function()
    end,
    keys = {
        {
            "<leader>fml",
            "<cmd>CellularAutomaton make_it_rain<CR>",
            desc = "End it all....."
        }, 
        {
            "<leader>fmgl",
            "<cmd>CellularAutomaton game_of_life<CR>",
            desc = "Go touch some grass"
        }
    }
}
