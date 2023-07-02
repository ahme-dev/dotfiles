return {
	"numToStr/FTerm.nvim",
	config = function()
		require("FTerm").setup({
			border     = 'double',
			dimensions = {
				height = 0.9,
				width = 0.9,
			}
		})

		vim.keymap.set('n', '<Leader>t', '<CMD>lua require("FTerm").toggle()<CR>')
vim.keymap.set('t', '<Leader>t', '<C-\\><C-n><CMD>lua require("FTerm").toggle()<CR>')
	end,
}
