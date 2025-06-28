return {
	"akinsho/bufferline.nvim",
	version = "*",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		local bufferline = require("bufferline")
		bufferline.setup({
			options = {
				numbers = function(opts)
					return string.format("%s·%s", opts.raise(opts.id), opts.lower(opts.ordinal))
				end,
				buffer_close_icon = "✘",
				modified_icon = "● ",
				close_icon = "✘",
				left_trunc_marker = " ",
				right_trunc_marker = " ",
				-- tab_size = 18,
				diagnostics = "nvim_lsp",
				diagnostics_indicator = function(count, level)
					local icon = level:match("error") and " " or " "
					return " " .. icon .. count
				end,
				offsets = {
					{
						filetype = "NvimTree",
						text = "File Explorer",
						highlight = "Directory",
						separator = true, -- use a "true" to enable the default, or set your own character
					},
				},
				--         -- NOTE: this will be called a lot so don't do any heavy processing here
				color_icons = true, -- whether or not to add the filetype icon highlights
				--         show_buffer_icons = true | false, -- disable filetype icons for buffers
				--         show_buffer_close_icons = true | false,
				--         show_close_icon = true | false,
				--         show_tab_indicators = true | false,
				--         show_duplicate_prefix = true | false, -- whether to show duplicate buffer prefix
				--         duplicates_across_groups = true, -- whether to consider duplicate paths in different groups as duplicates
				--         persist_buffer_sort = true, -- whether or not custom sorted buffers should persist
				--         move_wraps_at_ends = false, -- whether or not the move command "wraps" at the first or last position
				--         -- can also be a table containing 2 custom separators
				--         -- [focused and unfocused]. eg: { '|', '|' }
				separator_style = "slope", --  "slant" | "slope" | "thick" | "thin" | { 'any', 'any' },
				enforce_regular_tabs = true,
				--         always_show_bufferline = true | false,
				--         auto_toggle_bufferline = true | false,
				hover = {
					enabled = true,
					delay = 200,
					reveal = { "close" },
				},
				-- sort_by = "directory", -- 'insert_after_current' |'insert_at_end' | 'id' | 'extension' | 'relative_directory' | 'directory' | 'tabs' | function(buffer_a, buffer_b)
				pick = {
					-- alphabet = "abcdefghijklmopqrstuvwxyzABCDEFGHIJKLMOPQRSTUVWXYZ1234567890",
					alphabet = "asdfghjkl;",
				}
			}
		})
	end,
}
