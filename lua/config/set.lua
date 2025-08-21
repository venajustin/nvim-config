vim.opt.relativenumber = true
vim.opt.number = true
 
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.breakindent = true
vim.opt.wrap = true

vim.o.tabstop = 4
vim.o.expandtab = true
vim.o.softtabstop = 4
vim.o.shiftwidth = 4
 
vim.opt.termguicolors = true

vim.opt.colorcolumn = "72"

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = vim.fn.stdpath('config') .. "\\undodir"
vim.opt.undofile = true

vim.cmd [[colorscheme wildcharm]]

vim.opt.cmdheight = 0
vim.opt.laststatus = 3
