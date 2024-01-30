vim.g.mapleader = " "

local keymap = vim.keymap -- haz las cosas facil..

-- General Keymaps
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv") 
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
vim.keymap.set("v","<Leader>y" ,"*y")

-- Move fast
keymap.set("n", "<C-j>", "10j")
keymap.set("n", "<C-k>", "10k")
keymap.set("n", "<C-l>", "10l")
keymap.set("n", "<C-h>", "10h")

-- Fast saving
keymap.set("n", "<C-w>", ":w <Enter>") -- This will only save
keymap.set("n", "<C-q>", ":qa! <Enter>") -- Exit without saving

-- window management
keymap.set("n", "<leader>sv", "<C-w>v") -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s") -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=") -- make split windows equal width & height
keymap.set("n", "<leader>sx", ":close<CR>") -- close current split window

-- Move between windows
-- I make this changes to force my self to use the default keys to move arround
keymap.set("n", "<Left>", ":wincmd h <Enter>") 
keymap.set("n", "<Right>", ":wincmd l <Enter>")
keymap.set("n", "<Up>", ":wincmd k <Enter>")
keymap.set("n", "<Down>", ":wincmd j <Enter>")

-- New tabs 
keymap.set("n", "<leader>to", ":tabnew<CR>") -- open new tab
keymap.set("n", "<leader>tx", ":tabclose<CR>") -- close current tab
keymap.set("n", "<leader>tn", ":tabn<CR>") --  go to next tab
keymap.set("n", "<leader>tp", ":tabp<CR>") --  go to previous tab

-- nvim-tree
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>") -- toggle file explorer
keymap.set("n", "<C-u>", ":NvimTreeResize+5<CR>")
keymap.set("n", "<C-n>", ":NvimTreeResize-5<CR>")

keymap.set("n", "H", ":NvimTreeCollapse") -- colapse all the tree if there are to much

keymap.set("v", "J", ":m '>+1<CR>gv=gv")
