vim.keymap.set("n","<space><space>x","<cmd>source ~/.config/nvim/init.lua<CR>")
vim.keymap.set("n","<space><space>s","<cmd>w<CR>")

-- Mini file manager
vim.keymap.set("n","-","<cmd>lua MiniFiles.open()<CR>")

--Buffers

vim.keymap.set("n","<leader>bh","<cmd>bprevious<CR>")
vim.keymap.set("n","<leader>bl","<cmd>bnext<CR>")
vim.keymap.set("n","<leader>bk","<cmd>bd<CR>")
