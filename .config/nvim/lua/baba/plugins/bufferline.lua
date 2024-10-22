return {
	"akinsho/bufferline.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	version = "*",
	config = function()
		local bufferline = require("bufferline")

		bufferline.setup({
			require("bufferline").setup({
				highlights = {
					-- Set the background color of the entire buffer line to black
					fill = {
						fg = "#ffffff",
						bg = "#000000",
					},

					-- Set the active buffer to be bold and italic
					buffer_selected = {
						fg = "#ffffff",
						bg = "#000000",
						bold = true,
						italic = true,
					},

					-- Set the separator to a specific color
					separator = {
						fg = "#286983",
						bg = "#000000",
					},
					separator_visible = {
						fg = "#286983",
						bg = "#000000",
					},
					separator_selected = {
						fg = "#286983",
						bg = "#000000",
					},
					indicator_visible = {
						fg = "#31748f",
						bg = "#000000",
					},
					indicator_selected = {
						fg = "#31748f",
						bg = "#000000",
					},
				},
			}),
			options = {
				indicator_icon = "▎",
				modified_icon = "●",
				numbers = "ordinal",
				max_name_length = 15,
				max_prefix_length = 6,
				diagnostics = "nvim_lsp",
				show_buffer_icons = true,
				show_buffer_close_icons = false,
				show_close_icon = false,
				persist_buffer_sort = true,
				enforce_regular_tabs = true,
				diagnostics_indicator = function(count, level)
					local icon = level:match("error") and "" or ""
					return icon .. count
				end,
			},
		})
	end,
}
