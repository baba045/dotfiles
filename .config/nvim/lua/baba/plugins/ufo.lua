return {
	"kevinhwang91/nvim-ufo",
	dependencies = { "kevinhwang91/promise-async" },
	event = "BufRead",
	keys = {
		{
			"zM",
			function()
				require("ufo").openAllFolds()
			end,
		},
		{
			"zm",
			function()
				require("ufo").closeAllFolds()
			end,
		},
		{
			"zp",
			function()
				local winid = require("ufo").peekFoldedLinesUnderCursor()
				if not winid then
					vim.lsp.buf.hover()
				end
			end,
		},
	},
	opts = function(_, opts)
		vim.o.fillchars = [[eob: ,fold: ,foldopen:,foldsep: ,foldclose:]]
		vim.o.foldcolumn = "0"
		vim.o.foldlevel = 99
		vim.o.foldlevelstart = 99
		vim.o.foldenable = true
	end,
}
