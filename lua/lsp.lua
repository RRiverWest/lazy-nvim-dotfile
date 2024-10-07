require("mason").setup()
require("mason-lspconfig").setup {
	ensure_installed = { "lua_ls" }
}
require('mason-lspconfig').setup_handlers {
	function(server_name)
		require('lspconfig')[server_name].setup {
			capabilities = require("cmp_nvim_lsp").default_capabilities()
		}
	end,
}


local cmp = require("cmp")
cmp.setup({
	source = {
		{ name = "nvim_lsp" },
		{ name = "path" },
	}
})
