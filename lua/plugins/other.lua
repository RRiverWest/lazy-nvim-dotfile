return {
	{
		-- 括弧のプラグイン
		"kylechui/nvim-surround",
		version = "*",
		-- event = "VeryLazy",
		config = function()
			require("nvim-surround").setup()
		end,
	},
	-- {
	-- 	"eraserhd/parinfer-rust",
	-- 	config = function()
	-- 		require("lazy").setup({
	-- 			-- { "eraserhd/parinfer-rust", build = "cargo build --release" }
	-- 		})
	-- 	end,
	-- },
	{
		-- 閉じ括弧補完
		"cohama/lexima.vim",
	},
	{
		"iamcco/markdown-preview.nvim",
		cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
		build = "cd app && npm install",
		init = function()
			vim.g.mkdp_filetypes = { "markdown" }
		end,
		ft = { "markdown" },
	},
	-- { "rust-lang/rust.vim" },
	{
		"vim-jp/vimdoc-ja",
	},
	{
		"rachartier/tiny-inline-diagnostic.nvim",
		event = "VeryLazy", -- Or `LspAttach`
		priority = 1000,  -- needs to be loaded in first
		config = function()
			require("tiny-inline-diagnostic").setup({
				-- Available options:
				-- "modern", "classic", "minimal", "powerline",
				-- "ghost", "simple", "nonerdfont", "amongus"
				preset = "powerline",

				options = {
					-- Display the source of the diagnostic (e.g., basedpyright, vsserver, lua_ls etc.)
					show_source = {
						enabled = true,
						if_many = false,
					},
					multilines = {
						enabled = true,
						always_show = false,
					},
				},
			})
			vim.diagnostic.config({ virtual_text = false }) -- Only if needed in your configuration, if you already have native LSP diagnostics
		end,
	},
	{
		"Zeioth/hot-reload.nvim",
		dependencies = "nvim-lua/plenary.nvim",
		event = "BufEnter",
		opts = {}
	}
}
