local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
	{ "mason-org/mason.nvim", opts = {} },

	{
		"neovim/nvim-lspconfig",
		config = function()
			vim.lsp.enable("clangd")
		end,
	},

	{
		"folke/tokyonight.nvim",
		lazy = false,
		opts = {},
	},
  
	{ "nvim-tree/nvim-web-devicons", opts = {} },
	{ "echasnovski/mini.statusline", opts = {} },
	{ "lewis6991/gitsigns.nvim", opts = {} },

	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		config = function()
			require("configs.treesitter")
		end,
	},

	{
		"saghen/blink.cmp",
		version = "1.*",
		event = "InsertEnter",
		dependencies = {
			"rafamadriz/friendly-snippets",

			{
				"L3MON4D3/LuaSnip",
				config = function()
					require("luasnip.loaders.from_vscode").lazy_load()
				end,
			},

			{ "windp/nvim-autopairs", opts = {} },
		},
		opts = function()
			return require("configs.blink")
		end,
	},

	{
		"stevearc/conform.nvim",
		opts = require("configs.conform"),
	},

	{
		"nvimdev/indentmini.nvim",
		event = { "BufReadPre", "BufNewFile" },
		opts = {},
	},

	{
		"nvim-tree/nvim-tree.lua",
		cmd = { "NvimTreeToggle", "NvimTreeFocus" },
		opts = {},
	},

  { "mfussenegger/nvim-dap" },
  { "nvim-neotest/nvim-nio" },
  { "rcarriga/nvim-dap-ui" },
  { "theHamsta/nvim-dap-virtual-text" }
})
