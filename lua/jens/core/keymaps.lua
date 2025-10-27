vim.g.mapleader = " "

local keymap = vim.keymap

keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode with jk" })

keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })

keymap.set("n", "<leader>w", ":w<CR>", { desc = "Write buffer" })
keymap.set("n", "<leader>h", ":bprevious<CR>", { desc = "Go to previous buffer" })
keymap.set("n", "<leader>l", ":bnext<CR>", { desc = "Go to next buffer" })
keymap.set("n", "<leader>X", ":%bd|e#|bd#<CR>", { desc = "Close all but current buffer" })

keymap.set("n", "<leader>s|", "<C-w>v", { desc = "Split window vertically" }) -- split window vertically
keymap.set("n", "<leader>s-", "<C-w>s", { desc = "Split window horizontally" }) -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" }) -- make split windows equal width & height
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" }) -- close current split window

-- keymap.set("n", "M", ":HopChar1<CR>", { desc = "hop" })
--
-- keymap.set("n", "<C-a>", "<cmd>CodeCompanionActions<cr>", { noremap = true, silent = true })
-- keymap.set("v", "<C-a>", "<cmd>CodeCompanionActions<cr>", { noremap = true, silent = true })
-- keymap.set("n", "<leader>a", "<cmd>CodeCompanionToggle<cr>", { noremap = true, silent = true })
-- keymap.set("v", "<leader>a", "<cmd>CodeCompanionToggle<cr>", { noremap = true, silent = true })
-- keymap.set("v", "ga", "<cmd>CodeCompanionAdd<cr>", { noremap = true, silent = true })

keymap.set("n", "ru", ":Rest run<cr>", { desc = "Run REST request" })
keymap.set("n", "rr", ":Rest last<cr>", { desc = "Run REST request" })
keymap.set("n", "ro", ":Rest open<cr>", { desc = "Open REST results" })
