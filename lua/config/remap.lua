vim.g.mapleader = " "
vim.g.maplocalleader = "\\"
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)


vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")


vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("x", "<leader>pp", [["_dP]])
vim.keymap.set("n", "<leader>pp", [["0p]])

-- next greatest remap ever : asbjornHaland
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.keymap.set({"n", "v"}, "<leader>d", [["_d]])

-- becuz im on wsl lol, remove if i ever actually move to arch :)
vim.keymap.set("n", "<C-b>", "<C-v>")

vim.keymap.set("n", "Q", "<nop>")
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")
vim.keymap.set("n", "<leader>ff", "gg=G<C-o>")


vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })


-- open current file with windows exploerer
vim.keymap.set("n", "<leader>poo", [[:!explorer.exe "<C-r>%"<CR>]])


-- terminal escape and navigate all windows with Alt-hjkl
vim.keymap.set("t", "<Esc>", "<C-\\><C-n>")

-- C-R paste in term
vim.keymap.set("t", "<expr><C-R>", "'<C-\\><C-N>\"'.nr2char(getchar()).'pi'")

vim.keymap.set("t", "<A-h>", "<C-\\><C-N><C-w>h" )
vim.keymap.set("t", "<A-j>", "<C-\\><C-N><C-w>j" )
vim.keymap.set("t", "<A-k>", "<C-\\><C-N><C-w>k" )
vim.keymap.set("t", "<A-l>", "<C-\\><C-N><C-w>l" )
vim.keymap.set("i", "<A-h>", "<C-\\><C-N><C-w>h" )
vim.keymap.set("i", "<a-j>", "<c-\\><c-n><c-w>j" )
vim.keymap.set("i", "<A-k>", "<C-\\><C-N><C-w>k" )
vim.keymap.set("i", "<A-l>", "<C-\\><C-N><C-w>l" )
vim.keymap.set("n", "<A-h>", "<C-w>h" )
vim.keymap.set("n", "<A-j>", "<C-w>j" )
vim.keymap.set("n", "<A-k>", "<C-w>k" )
vim.keymap.set("n", "<A-l>", "<C-w>l" )

