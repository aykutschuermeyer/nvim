-- Switch background between light and dark
vim.keymap.set("n", "<leader>bb", function()
  if vim.o.background == "dark" then
    vim.cmd "set bg=light"
  else
    vim.cmd "set bg=dark"
  end
end, { desc = "Toggle background" })

-- Switch line numbers between relative and absolute
vim.keymap.set("n", "<leader>rn", function()
  vim.wo.relativenumber = not vim.wo.relativenumber
end, { desc = "Toggle relative line numbers", noremap = true, silent = true })
