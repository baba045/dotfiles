return {
	"rose-pine/neovim",
	name = "rose-pine",
	config = function()
		vim.cmd.colorscheme("rose-pine")

		local custom_auto = require("lualine.themes.auto")
		custom_auto.normal.c.bg = "NONE"

		require("lualine").setup({
			options = {
				icons_enabled = false,
				theme = "rose-pine",
				component_separators = "|",
				section_separators = "",
			},
		})
	end,
	-- "Urvish4503/nvim",
	-- name = "catppuccin",
	-- priority = 1000,
	-- lazy = false,
	-- config = function()
	-- 	require("catppuccin").setup({
	-- 		term_colors = false,
	-- 		color_overrides = {
	-- 			mocha = {
	-- 				base = "#000000",
	-- 				mantle = "#000000",
	-- 				crust = "#000000",
	-- 			},
	-- 		},
	-- 		grations = {
	-- 			cmp = true,
	-- 			gitsigns = true,
	-- 			nvimtree = true,
	-- 			notify = false,
	-- 			mini = {
	-- 				enabled = true,
	-- 				indentscope_color = "",
	-- 			},
	-- 		},
	-- 	})
	-- 	vim.cmd.colorscheme("catppuccin")
	-- end,
}
