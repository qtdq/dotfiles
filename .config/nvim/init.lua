require("options")
require("packages")
require("mappings")

vim.cmd("colorscheme tokyonight-night")
vim.cmd[[
  highlight Normal guibg=none
  highlight NonText guibg=none
  highlight Normal ctermbg=none
  highlight TabLine guibg=none
  highlight TabLineSel guibg=none
  highlight TabLineFill guibg=none
]]

vim.api.nvim_create_autocmd("BufEnter", {
  callback = function()
    vim.opt.formatoptions:remove { "c", "r", "o" }
  end,
  desc = "Disable New Line Comment",
})
