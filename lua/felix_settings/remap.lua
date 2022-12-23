vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("n", "<leader>lf", "<cmd>:ls<cr>:b<space>")
vim.keymap.set("n", "<leader>bf", "<cmd>:e#<cr>")
vim.keymap.set("n", "<leader>nt", ":NERDTreeToggle<cr>")

function toggle_stuff()
    vim.o.signcolumn = vim.o.signcolumn == "yes" and "no" or "yes"
    vim.o.relativenumber = not vim.o.relativenumber
    vim.o.number = not vim.o.number
end 
vim.api.nvim_set_keymap("n", "<S-l>", ":lua toggle_stuff()<CR>", {noremap = true, silent = true})
