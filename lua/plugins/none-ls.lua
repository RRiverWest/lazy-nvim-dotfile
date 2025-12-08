return {
	{
		"nvimtools/none-ls.nvim",
		requires = {
			"nvimtools/none-ls-extras.nvim",
			"nvim-lua/plenary.nvim",
		},
		config = function()
			local null_ls = require("null-ls")

			null_ls.setup({
				sources = {
					null_ls.builtins.formatting.clang_format,
					-- null_ls.builtins.diagnostics.cppcheck,
					-- null_ls.builtins.diagnostics.eslint_d,
					null_ls.builtins.formatting.stylua,
					-- null_ls.builtins.diagnostics.cppcheck,
					null_ls.builtins.formatting.prettierd,
				},
			})
		end,
	},
}
