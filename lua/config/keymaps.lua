-- Buffer keys
vim.keymap.set("n", "<tab>", "<CMD>bnext<CR>", {desc="Next buffer"})
vim.keymap.set("n", "<S-tab>", "<CMD>bprev<CR>", {desc="Previous buffer"})
vim.keymap.set("n", "<leader>x", "<CMD>bd<CR>", {desc="Close buffer"})

-- Disable arrow keys in normal mode
vim.keymap.set("n", "<left>", "<cmd>echo 'Use h to move!'<CR>")
vim.keymap.set("n", "<right>", "<cmd>echo 'Use l to move!'<CR>")
vim.keymap.set("n", "<up>", "<cmd>echo 'Use k to move!'<CR>")
vim.keymap.set("n", "<down>", "<cmd>echo 'Use j to move!'<CR>")

