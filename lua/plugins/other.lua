return {
	{
		"weilbith/nvim-code-action-menu",
		cmd = "CodeActionMenu",
	},
	{
		"akinsho/bufferline.nvim",
		version = "*",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		config = function()
			vim.opt.termguicolors = true
			require("bufferline").setup({})
		end,
	},
	{
		"dinhhuy258/git.nvim",
		config = function()
			require("git").setup()
		end,
	},
	{
		"kylechui/nvim-surround",
		version = "*",
		-- event = "VeryLazy",
		config = function()
			require("nvim-surround").setup()
		end,
	},
	{ "cohama/lexima.vim" },
	{
		"iamcco/markdown-preview.nvim",
		cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
		build = "cd app && yarn install",
		init = function()
			vim.g.mkdp_filetypes = { "markdown" }
		end,
		ft = { "markdown" },
	},
	{ "rust-lang/rust.vim" },
}
