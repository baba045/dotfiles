return {
	{
		"rose-pine/neovim",
		name = "rose-pine",
		config = function()
			require("rose-pine").setup({
				variant = "main", -- auto, main, moon, or dawn
				dark_variant = "main", -- main, moon, or dawn
				-- dim_inactive_windows = false,
				-- extend_background_behind_borders = true,
				-- enable = {
				-- 	terminal = true,
				-- 	legacy_highlights = true, -- Improve compatibility for previous versions of Neovim
				-- 	migrations = true, -- Handle deprecated options automatically
				-- },
				palette = {
					main = {
						base = "#000000",
						surface = "#000000",
						overlay = "#191724",
					},
				},
			})

			vim.cmd("colorscheme rose-pine")
			local custom_auto = require("lualine.themes.auto")
			custom_auto.normal.c.bg = "#000000"

			require("lualine").setup({
				options = {
					icons_enabled = false,
					theme = custom_auto,
					component_separators = "|",
					section_separators = "",
				},
			})
		end,
	},

	-- {
	-- 	"whatyouhide/vim-gotham",
	-- config = function()
	-- 	vim.cmd.colorscheme("gotham")
	-- end,
	-- },

	-- {
	-- 	"TheNiteCoder/mountaineer.vim",
	-- 	config = function()
	-- 		vim.cmd.colorscheme("mountaineer")
	-- 	end,
	-- },

	-- {
	-- "nikolvs/vim-sunbather",
	-- config = function()
	-- 	vim.cmd.colorscheme("sunbather")
	-- end,
	-- },
}
