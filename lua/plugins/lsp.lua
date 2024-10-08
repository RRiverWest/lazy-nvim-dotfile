return {
	{
		"hrsh7th/nvim-cmp",
		lazy = false,
	},
	{
		"hrsh7th/nvim-cmp",
		"hrsh7th/cmp-nvim-lsp",
		"hrsh7th/vim-vsnip",
		"hrsh7th/cmp-path",
		"hrsh7th/cmp-buffer",
		"hrsh7th/cmp-cmdline",
		-- config = function()
		-- 	local cmp = require("cmp")
		-- 	cmp.setup({
		-- 		-- mapping = cmp.mapping.preset.insert({
		-- 		-- 	["<C-p>"] = cmp.mapping.select_prev_item(),
		-- 		-- 	["<C-n>"] = cmp.mapping.select_next_item(),
		-- 		-- 	['<C-l>'] = cmp.mapping.complete(),
		-- 		-- 	['<C-e>'] = cmp.mapping.abort(),
		-- 		-- 	["<CR>"] = cmp.mapping.confirm { select = true },
		-- 		-- }),
		-- 		sources = cmp.config.sources{
		-- 			{ name = "nvim_lsp" },
		-- 		},
		-- 	})
		-- end,
	},


	-- "hrsh7th/nvim-cmp",
	-- "hrsh7th/cmp-nvim-lsp",
	-- "hrsh7th/vim-vsnip",
	-- "hrsh7th/cmp-path",
	-- "hrsh7th/cmp-buffer",
	-- "hrsh7th/cmp-cmdline",


	"williamboman/mason.nvim",
	"neovim/nvim-lspconfig",
	"williamboman/mason-lspconfig.nvim",

}
