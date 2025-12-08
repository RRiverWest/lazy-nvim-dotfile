return {
	{
		"nvim-tree/nvim-tree.lua",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		config = function()
			require("nvim-tree").setup({
				view = {
					width = 25,
					side = "left",
				},
				renderer = {
					highlight_opened_files = "all",
				},
				filters = {
					dotfiles = false,
				},
			})
			vim.api.nvim_create_autocmd("BufEnter", {
				nested = true,
				callback = function()
					if #vim.api.nvim_list_wins() == 1 and require("nvim-tree.utils").is_nvim_tree_buf() then
						vim.cmd("quit")
					end
				end,
			})
		end,
		event = "BufWinEnter",
	},
}
