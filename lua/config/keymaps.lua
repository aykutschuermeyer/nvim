-- Buffer keys
vim.keymap.set("n", "<tab>", "<cmd>bnext<cr>", { desc = "Next buffer" })
vim.keymap.set("n", "<S-tab>", "<cmd>bprev<cr>", { desc = "Previous buffer" })
vim.keymap.set("n", "<leader>x", "<cmd>bd<cr>", { desc = "Close buffer" })

-- Move between split windows
vim.keymap.set("n", "<C-H>", "<cmd>wincmd h<cr>", { desc = "Focus on left split window" })
vim.keymap.set("n", "<C-J>", "<cmd>wincmd j<cr>", { desc = "Focus on lower split window" })
vim.keymap.set("n", "<C-K>", "<cmd>wincmd k<cr>", { desc = "Focus on upper split window" })
vim.keymap.set("n", "<C-L>", "<cmd>wincmd l<cr>", { desc = "Focus on right split window" })
