return {
	{
		"folke/noice.nvim",
		event = "VeryLazy",
		opts = {
			-- add any options here
		},
		dependencies = { "MunifTanjim/nui.nvim" },
	},
	{
		"weilbith/nvim-code-action-menu",
		cmd = "CodeActionMenu",
	},

	{
		'akinsho/bufferline.nvim',
		version = "*",
		dependencies = {'nvim-tree/nvim-web-devicons'},

		config = function()
			vim.opt.termguicolors = true
			require("bufferline").setup {}
		end,

	},
}
