return {
	{
		"nvim-tree/nvim-tree.lua",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		config = function()
			require("nvim-tree").setup {
				-- 基本的な設定をここに記述します
				view = {
					width = 25, -- ツリーの幅
					side = 'left', -- ツリーを表示する側
				},
				renderer = {
					highlight_opened_files = 'all', -- 開いたファイルをハイライト
				},
				filters = {
					dotfiles = true, -- ドットファイルの表示設定
				},
			}
		end,
		event = "BufWinEnter",
	}
}
