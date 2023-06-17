return {
	"ray-x/lsp_signature.nvim",
	config = function()
		require("lsp_signature").setup({
			bind = true,
			fix_pos = true,
			hint_enable = false
		})
	end,
}
