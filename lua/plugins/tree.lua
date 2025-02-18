return {
	{
		"nvim-tree/nvim-tree.lua",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		config = function()
			require("nvim-tree").setup {
				view = {
					width = 25,
					side = 'left',
				},
				renderer = {
					highlight_opened_files = 'all',
				},
				filters = {
					dotfiles = true,
				},
			}
		end,
		event = "BufWinEnter",
	}
}
