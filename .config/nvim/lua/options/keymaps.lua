local keymap = vim.keymap
vim.g.mapleader = " "

-- General Keymaps
keymap.set("v", "J", ":m '>+1<CR>gv=gv") -- move the selected line to a lower position
keymap.set("v", "K", ":m '<-2<CR>gv=gv") -- move the selected line to a upper position
keymap.set("v","<Leader>y" ,"*y") -- find the same patron of words
keymap.set("n","<Leader>h", "<Cmd>noh<CR>") -- stop highlighting

-- window management
keymap.set("n", "<leader>sv", "<C-w>v") -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s") -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=") -- make split windows equal width & height
keymap.set("n", "<leader>sx", "<Cmd>close<CR>") -- close current split window

-- Move between windows
keymap.set("n", "<Left>", "<Cmd>wincmd h <CR>") -- enter to the left window
keymap.set("n", "<Right>", "<Cmd>wincmd l <CR>") -- enter to the right window
keymap.set("n", "<Up>", "<Cmd>wincmd k <CR>") -- enter to de up window
keymap.set("n", "<Down>", "<Cmd>wincmd j <CR>") -- enter to de down window

-- Window sizes
keymap.set("n", "<C-Up>", "<C-w>+")
keymap.set("n", "<C-Down>", "<C-w>-")

-- Tabs 
keymap.set("n", "<leader>to", ":tabnew<CR>") -- open new tab
keymap.set("n", "<leader>tx", ":tabclose<CR>") -- close current tab
keymap.set("n", "<tab>", "<Cmd>BufferLineCycleNext<CR>") -- move to the next tab
keymap.set("n", "<S-tab>", "<Cmd>BufferLineCyclePrev<CR>") --  go to previous tab
keymap.set("n", "<C-p>", "<Cmd>BufferPin<CR>") -- pin buffer
keymap.set("n", "<C-q>", "<Cmd>BufferClose<CR>") -- close current buffer

-- Telescope
keymap.set("n", "<C-f>", "<Cmd>Telescope find_files<Cr>") -- open files finder
