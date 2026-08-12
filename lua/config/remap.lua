vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

vim.keymap.set("n",  "<leader><leader><leader>", function() vim.cmd("so") end)

vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- moving around regardless of current mode
vim.keymap.set({"n","v","i","t"}, "<A-k>", "<C-\\><C-n><C-w>k")
vim.keymap.set({"n","v","i","t"}, "<A-j>", "<C-\\><C-n><C-w>j")
vim.keymap.set({"n","v","i","t"}, "<A-l>", "<C-\\><C-n><C-w>l")
vim.keymap.set({"n","v","i","t"}, "<A-h>", "<C-\\><C-n><C-w>h")

--tabs
vim.keymap.set("n", "<C-w>tn", vim.cmd.tabnew)
vim.keymap.set("n", "<C-w>tc", vim.cmd.tabclose)
vim.keymap.set("n", "<C-w>to", vim.cmd.tabonly)

-- control k and control j  to move screen
vim.keymap.set("n", "<C-k>", "<C-u>") 
vim.keymap.set("n", "<C-j>", "<C-d>")

-- control k remap becuase used above
vim.keymap.set("n", "<C-K>", vim.cmd.noh);

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


-- Toggle terminal
vim.keymap.set({"n","v","i","t"}, "<A-t>", 
    function() 
        if vim.bo.buftype == "terminal" then
            -- vim.cmd("bdelete!")
            if #vim.api.nvim_tabpage_list_wins(0) == 1 then
                vim.cmd("enew")
            else 
                vim.cmd("close")
            end
        else
            
            local tbuf = vim.g.terminal_hotkey_last
            local newbuf = false
            if not tbuf then
                newbuf = true
                tbuf = vim.api.nvim_create_buf(false, true)
                vim.g.terminal_hotkey_last = tbuf
            end

            local wid = vim.fn.bufwinid(tbuf)
            if wid == -1 then
                vim.cmd("botright split")
                vim.api.nvim_win_set_height(0, 10)
                vim.api.nvim_win_set_buf(0, tbuf)
            else
                vim.api.nvim_set_current_win(wid)
            end

            if newbuf then
                vim.cmd("term")
            end
            vim.cmd("startinsert")
        end
    end
)
