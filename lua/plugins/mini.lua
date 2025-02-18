return {
	"echasnovski/mini.nvim",
	config = function()
		require('mini.cursorword').setup()
		require('mini.move').setup()
	end,
}
