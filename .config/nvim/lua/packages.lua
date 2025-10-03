vim.pack.add({
  -- lsp, highlight, format 
  { src = "https://github.com/neovim/nvim-lspconfig" },
  { src = "https://github.com/nvim-treesitter/nvim-treesitter" },
  { src = "https://github.com/stevearc/conform.nvim" },
  { src = "https://github.com/windwp/nvim-autopairs" },

  -- Completion
  { src = "https://github.com/saghen/blink.cmp", version = vim.version.range("*") },
  { src = "https://github.com/rafamadriz/friendly-snippets" },

  -- Utility
  { src = "https://github.com/nvim-tree/nvim-tree.lua" },
  { src = "https://github.com/nvim-mini/mini.pick" },

  -- Visual
  { src = "https://github.com/folke/tokyonight.nvim" },
  { src = "https://github.com/nvim-mini/mini.statusline" },
  { src = "https://github.com/lewis6991/gitsigns.nvim" },
  { src = "https://github.com/nvim-tree/nvim-web-devicons" },
})

vim.lsp.enable({ "clangd", "lua_ls", "bashls", "taplo", "ty" })
vim.lsp.config("lua_ls", { settings = { Lua = { workspace = { library = vim.api.nvim_get_runtime_file("", true) } } } })

require("nvim-treesitter.configs").setup({
  ensure_installed = { "c", "cpp", "lua", "python", "bash", "toml", "yaml", "json", "css", "markdown" },
  highlight = { enable = true },
})
require("conform").setup({
  formatters_by_ft = {
    lua = { "stylua" },
    c = { "astyle" },
    cpp = { "astyle" },
    json = { "jq" },
    jsonc = { "jq" },
    sh = { "shfmt" },
  },
})
require("nvim-autopairs").setup()

require("blink.cmp").setup({
  keymap = {
    preset = "default",
    ["<C-space>"] = { "show", "fallback" },
    ["<C-n>"] = { "select_next", "fallback" },
    ["<C-m>"] = { "select_prev", "fallback" },
    ["<C-c>"] = { "accept", "fallback" },
    ["<C-x>"] = { "hide", "fallback" },
  },
})

require("nvim-tree").setup()
require("mini.pick").setup()

require("mini.statusline").setup()
require("gitsigns").setup()
