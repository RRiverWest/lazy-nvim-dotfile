return {
	"nvimtools/none-ls.nvim",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"gbprod/none-ls-luacheck.nvim",
	},
	config = function()
		local null_ls = require("null-ls")
		null_ls.setup({
			sources = {
				null_ls.builtins.formatting.stylua,
				null_ls.builtins.formatting.clang_format,
				require("none-ls-luacheck.diagnostics.luacheck"),
			},
		})
	end,
}
