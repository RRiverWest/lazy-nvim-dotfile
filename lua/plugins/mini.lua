return {
	"echasnovski/mini.nvim",
	config = function()
		require("mini.cursorword").setup()

		require("mini.move").setup()
		require("mini.move").setup({
			mappings = {
				left = "H",
				right = "L",
				down = "J",
				up = "K",

				line_left = "<S-left>",
				line_right = "<S-right>",
				line_down = "<S-down>",
				line_up = "<S-up>",
			},
		})
	end,
}
