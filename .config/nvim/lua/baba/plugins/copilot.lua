return {
	"zbirenbaum/copilot.lua",
	build = ":Copilot auth",
	event = "InsertEnter",
	config = function()
		local copilot = require("copilot")

		copilot.setup({
			panel = {
				enabled = true,
				auto_refresh = false,
				keymap = {
					jump_prev = "[[",
					jump_next = "]]",
					accept = "<CR>",
					refresh = "gr",
					open = "<M-CR>",
				},
				layout = {
					position = "bottom", -- | top | left | right
					ratio = 0.4,
				},
			},
			suggestion = {
				enabled = true,
				auto_trigger = true, -- Changed to true
				hide_during_completion = true,
				debounce = 75,
				keymap = {
					-- TODO: add better key bindings
					accept = "<M-a>",
					accept_word = "<M-w>", -- Added keybinding for accepting a word
					accept_line = "<M-L>", -- Added keybinding for accepting a line
					next = "<M-]>",
					prev = "<M-[>",
					dismiss = "<C-]>",
				},
			},
			filetypes = {
				yaml = false,
				help = false,
				gitcommit = false,
				gitrebase = false,
				hgcommit = false,
				svn = false,
				cvs = false,
				["."] = false,
			},
			copilot_node_command = "node", -- Node.js version must be > 18.x
			server_opts_overrides = {},
		})
	end,
}
