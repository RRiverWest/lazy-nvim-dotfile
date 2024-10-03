return {
	"nvim-lualine/lualine.nvim",
	config = function()
		require("lualine").setup({
			options = {
				theme = "auto", -- ここでテーマを設定できます
			},
		})
	end,
	event = "VimEnter", -- このイベントでプラグインを読み込みます
}
