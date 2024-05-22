vim.opt.guicursor = ""

vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

vim.opt.colorcolumn = "80"

vim.opt.timeoutlen = 1000
vim.opt.ttimeoutlen = 0

vim.opt.autoread = true

vim.cmd([[
    autocmd FocusGained,BufEnter * checktime
]])

vim.cmd([[
    command! W execute 'w !sudo tee % > /dev/null' | edit!
]])

vim.cmd([[
    autocmd BufWritePre * :%s/\s\+$//e
]])

vim.cmd([[
    autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
]])

vim.opt.mouse = a
vim.opt.hlsearch = true
vim.opt.showmatch = true
vim.opt.ignorecase = true

vim.g.format_on_save = false
vim.g.zig_fmt_autosave=false
