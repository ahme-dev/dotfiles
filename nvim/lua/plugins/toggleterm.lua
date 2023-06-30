return {
	{
		"akinsho/nvim-toggleterm.lua",
		config = function()
			require("toggleterm").setup({
				size = 8,
				start_in_insert = true,
				insert_mappings = true,
				persist_size = true,
				direction = "horizontal",
				float_opts = {
					border = "curved",
					width = 120,
					height = 25,
				},
				close_on_exit = true,
				autochdir = true,
			})

			vim.keymap.set("n", "<leader>t", "<cmd>ToggleTerm<cr>")
		end,
	},
}
