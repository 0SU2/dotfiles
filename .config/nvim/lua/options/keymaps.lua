local keymap = vim.keymap
vim.g.mapleader = " "

-- General Keymaps
keymap.set("v", "J", ":m '>+1<CR>gv=gv") -- move the selected line to a lower position
keymap.set("v", "K", ":m '<-2<CR>gv=gv") -- move the selected line to a upper position
keymap.set("v","<Leader>y" ,"*y") -- find the same patron of words
keymap.set("n","<Leader>h", ":noh<Enter>") -- stop highlighting

-- Move fast
keymap.set("n", "<C-j>", "10j") -- move 10 places down
keymap.set("n", "<C-k>", "10k") -- move 10 places up
keymap.set("n", "<C-l>", "10l") -- move 10 places right
keymap.set("n", "<C-h>", "10h") -- move 10 places left

-- Fast saving
keymap.set("n", "<C-w>", ":w <Enter>") -- This will only save
keymap.set("n", "<C-q>", ":qa! <Enter>") -- Exit without saving

-- window management
keymap.set("n", "<leader>sv", "<C-w>v") -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s") -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=") -- make split windows equal width & height
keymap.set("n", "<leader>sx", ":close<CR>") -- close current split window

-- Move between windows
-- Disclaimer: I make this changes to force my self to use the default keys to move arround
keymap.set("n", "<Left>", ":wincmd h <Enter>") -- enter to the left window
keymap.set("n", "<Right>", ":wincmd l <Enter>") -- enter to the right window
keymap.set("n", "<Up>", ":wincmd k <Enter>") -- enter to de up window
keymap.set("n", "<Down>", ":wincmd j <Enter>") -- enter to de down window

-- New tabs 
keymap.set("n", "<leader>to", ":tabnew<CR>") -- open new tab
keymap.set("n", "<leader>tx", ":tabclose<CR>") -- close current tab
keymap.set("n", "<leader>tn", ":tabn<CR>") --  go to next tab
keymap.set("n", "<leader>tp", ":tabp<CR>") --  go to previous tab

-- nvim-tree
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>") -- toggle file explorer
keymap.set("n", "<C-n>", ":NvimTreeResize-5<CR>") -- reduce file exporer to 5
keymap.set("n", "<C-u>", ":NvimTreeResize+5<CR>") -- rezise file exporer to 5

keymap.set("n", "H", ":NvimTreeCollapse<CR>") -- colapse all the tree if there are to much
