-- Mini file manager
vim.keymap.set("n","-","<cmd>lua MiniFiles.open()<CR>")

--Buffers

vim.keymap.set("n","<S-h>","<cmd>bprevious<CR>")
vim.keymap.set("n","<S-l>","<cmd>bnext<CR>")
vim.keymap.set("n","<S-j>","<cmd>bd!<CR>")

-- Esc terminal
vim.keymap.set("t","<Esc><Esc>","<C-\\><C-n>")
