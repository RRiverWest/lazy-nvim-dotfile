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
		"onsails/lspkind.nvim",

		"williamboman/mason.nvim",
		"neovim/nvim-lspconfig",
		"williamboman/mason-lspconfig.nvim",
		"aznhe21/actions-preview.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons", "MunifTanjim/nui.nvim" },
	},
	{
		"nvimdev/lspsaga.nvim",
		config = function()
			require("lspsaga").setup({
				lightbulb = {
					enable = true,
					sign = false,
				},
				symbol = {
					in_cursor = false, -- カーソル下のシンボルハイライトを無効化
				},

			})
		end,
		dependencies = {
			"nvim-treesitter/nvim-treesitter", -- optional
			"nvim-tree/nvim-web-devicons",  -- optional
		},
	},                                  -- {
	-- 	"aznhe21/actions-preview.nvim",
	-- 	config = function()
	-- 		vim.keymap.set({ "v", "n" }, "gf", require("actions-preview").code_actions)
	-- 	end,
	-- }

	-- lsp ui
	-- {
	--   "jinzhongjia/LspUI.nvim",
	--   branch = "main",
	-- 	config = function()
	-- 		config = true,
	-- 	end
	-- }
}
