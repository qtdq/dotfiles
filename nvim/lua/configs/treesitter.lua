require("nvim-treesitter.configs").setup {
  ensure_installed = { "lua", "vim", "vimdoc", "cpp", "c", "desktop", "bash", "yaml", "json", "toml" },

  highlight = {
    enable = true,
    use_languagetree = true,
  },
  indent = { enable = true },
}
