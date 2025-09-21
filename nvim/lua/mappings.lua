local map = vim.keymap.set
local dap = require('dap')

-- vim commands
map("n", "<leader>dl", "<:t. <CR>")

-- vim modes
map("i", "jk", "<ESC>")
map("i", "jj", "<ESC>")

-- tree
map("n", "<C-n>", "<cmd> NvimTreeToggle <CR>")

-- lsp commands
vim.api.nvim_set_keymap('n', '<leader>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>', {})
vim.api.nvim_set_keymap('n', '<leader>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', {})
vim.api.nvim_set_keymap('n', '<leader>sd', '<cmd>lua vim.diagnostic.open_float(0, { scope = "line" })<CR>', {})

-- conform
vim.api.nvim_set_keymap('n', '<leader>fm', '<cmd>lua require("conform").format()<CR>', {})

-- debug
vim.api.nvim_set_keymap('n', '<leader>db', ':lua require("dap").toggle_breakpoint()<CR>', {}) 
vim.api.nvim_set_keymap('n', '<leader>dc', ':lua require("dap").continue()<CR>', {})
vim.api.nvim_set_keymap('n', '<leader>di', ':lua require("dap").repl.open()<CR>', {})
vim.api.nvim_set_keymap('n', '<leader>dt', ':lua require("dap").close()<CR>', {})
