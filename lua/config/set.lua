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


-- Set default :term shell to powershell
if vim.fn.executable("pwsh") == 1 then
    vim.o.shell = "pwsh"
else
    vim.o.shell = "powershell"
end

-- Settings that help terminal execution work correctly (according to Gemini)
vim.o.shellcmdflag = "-NoLogo -NoProfile -ExecutionPolicy RemoteSigned -Command [Console]::InputEncoding=[Console]::OutputEncoding=[System.Text.Encoding]::UTF8;"
vim.o.shellredir = "2>&1 | Out-File -Encoding UTF8 %s"
vim.o.shellpipe = "2>&1 | Out-File -Encoding UTF8 %s"
vim.o.shellquote = ""
vim.o.shellxquote = ""
