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
		"neovim/nvim-lspconfig",
		"williamboman/mason-lspconfig.nvim",
	},
}
