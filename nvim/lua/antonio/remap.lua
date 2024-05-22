vim.g.mapleader = ","

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("i", "jj", "<Esc>", { noremap = true, nowait = true })

vim.keymap.set("n", "<leader>w", ":w<CR>")
vim.keymap.set("n", "<leader>q", ":q<CR>")

vim.keymap.set("n", "<leader>o", "o<Esc>")
vim.keymap.set("n", "<leader>O", "O<Esc>")

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<c-d>", "<c-d>zz")
vim.keymap.set("n", "<c-u>", "<c-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("x", "r", [["_dP]])

vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.keymap.set("n", "Q", "<nop>")

vim.keymap.set({"n", "v"}, "<C-j>", "<C-W>j")
vim.keymap.set({"n", "v"}, "<C-k>", "<C-W>k")
vim.keymap.set({"n", "v"}, "<C-h>", "<C-W>h")
vim.keymap.set({"n", "v"}, "<C-l>", "<C-W>l")

vim.keymap.set({"n", "v"}, "<leader><CR>", ":noh<cr>", { silent = true })
vim.keymap.set({"n", "v"}, "<space>", "/", { silent = true })

vim.keymap.set("n", "L", "$", { silent = true })
vim.keymap.set("n", "H", "^", { silent = true })

vim.keymap.set("v", 'H', '<gv', {noremap = true})
vim.keymap.set("v", 'L', '>gv', {noremap = true})

vim.keymap.set({"n", "v"}, 'w', 'b', {noremap = true})

vim.keymap.set("n", '<C-n>', '<C-w>v', {noremap = true})

vim.keymap.set("n", '<C-g>', ":echo expand('%:p')<CR>", {noremap = true})
