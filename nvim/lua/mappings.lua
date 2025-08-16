local map = vim.keymap.set

map("i", "jk", "<ESC>")
map("i", "jj", "<ESC>")

map("n", "<C-n>", "<cmd> NvimTreeToggle <CR>")
vim.api.nvim_set_keymap('n', '<leader>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>', {})
