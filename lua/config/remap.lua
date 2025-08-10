vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

vim.keymap.set("n",  "<leader><leader><leader>", function() vim.cmd("so") end)

vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

--tabs
vim.keymap.set("n", "<C-w>tn", vim.cmd.tabnew)
vim.keymap.set("n", "<C-w>tc", vim.cmd.tabclose)
vim.keymap.set("n", "<C-w>to", vim.cmd.tabonly)

-- control k and control j  to move screen
vim.keymap.set("n", "<C-k>", "<C-u>") 
vim.keymap.set("n", "<C-j>", "<C-d>")

-- delete to the right of cursor in insert (easier delete for macs)
vim.keymap.set("i", "<C-L>", "<C-O>x")


-- opposite of shift J
vim.keymap.set("n", "<leader>j", "i<CR><C-[>");

-- toggle relative line number on current buffer
-- good for code review
vim.keymap.set("n", "<leader>ln", function()
        if vim.wo.relativenumber == true then
                vim.wo.relativenumber = false
        else
                vim.wo.relativenumber = true
        end
end);


