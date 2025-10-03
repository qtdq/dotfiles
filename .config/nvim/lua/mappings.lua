local map = vim.keymap.set
vim.g.mapleader = " "

-- mode
map("i", "jk", "<ESC>")
map("i", "jj", "<ESC>")

-- shortcuts
map("n", "<leader>w", ":write<CR>")
map("n", "<leader>q", ":quit<CR>")
map("n", "<leader>dl", ":t.<CR>")

-- lsp
map("n", "<leader>ss", vim.lsp.buf.hover)
map("n", "<leader>rn", vim.lsp.buf.rename)

-- diagnostic
map("n", "<leader>sd", vim.diagnostic.open_float)

-- tree
map("n", "<leader>e", ":NvimTreeToggle<CR>")

-- conform
map("n", "<leader>fm", function()
  require("conform").format()
end)

-- mini.pick
map("n", "<leader>h", ":Pick help<CR>")

