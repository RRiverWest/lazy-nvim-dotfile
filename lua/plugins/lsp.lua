return {
	{
		"hrsh7th/nvim-cmp",
		lazy = false,
	},
	{
		"hrsh7th/cmp-nvim-lsp",
		lazy = false,
		config = function()
			require("cmp").setup({
				sources = {
					{ name = "nvim_lsp" },
				},
			})
		end,
	},
	{
		"williamboman/mason.nvim",
		lazy = false,
		config = function()
			require("mason").setup()
		end,
	},
	{
		"neovim/nvim-lspconfig",
		lazy = false,
		config = function()
			require("lspconfig").lua_ls.setup({})
			-- require("lspconfig").clangd.setup({})
		end,
	},
}
