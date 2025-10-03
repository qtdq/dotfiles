-- nvim
vim.o.clipboard = 'unnamedplus'
vim.o.swapfile = false
vim.o.backup = false

-- Search
vim.o.ignorecase = true
vim.o.smartcase = true

-- Indent
vim.o.expandtab = true
vim.o.shiftwidth = 2
vim.o.softtabstop = 2
vim.o.cindent = true

-- Visual
vim.o.number = true
vim.o.relativenumber = true
vim.o.showmode = false
vim.o.wrap = false
vim.o.winborder = "rounded"

-- Diagnostic
vim.diagnostic.config({
  virtual_text = {
    prefix = '',
    spacing = 2
  },
  signs = true,
  update_in_insert = true,
  underline = true
})
