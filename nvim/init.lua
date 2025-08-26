require('options')
require('plugins')
require('lldb_config')
require('dap-ui')
require('mappings')

require("dapui").setup()
vim.cmd[[colorscheme tokyonight-night]]
vim.cmd[[
  highlight Normal guibg=none
  highlight NonText guibg=none
  highlight Normal ctermbg=none
  highlight TabLine guibg=none
  highlight TabLineSel guibg=none
  highlight TabLineFill guibg=none
]]

