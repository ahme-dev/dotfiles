return {
	"jose-elias-alvarez/null-ls.nvim",
	config = function()
		local formattergroup = vim.api.nvim_create_augroup("lsp_format_on_save", { clear = false })
		local null_ls = require("null-ls");

		require("null-ls").setup({
			sources = {
				-- null_ls.builtins.formatting.deno_fmt,
				null_ls.builtins.formatting.prettier,
				null_ls.builtins.formatting.rustfmt,
				null_ls.builtins.formatting.phpcsfixer,
				-- null_ls.builtins.formatting.prismaFmt,
			},
			on_attach = function(client, parambuffer)
				if client.supports_method("textDocument/formatting") then
					-- format on save
					vim.api.nvim_clear_autocmds({ buffer = parambuffer, group = formattergroup })
					vim.api.nvim_create_autocmd("BufWritePre", {
						buffer = parambuffer,
						group = formattergroup,
						callback = function()
							vim.lsp.buf.format({ async = false })
						end,
						desc = "[lsp] format on save",
					})
				end
			end,
		})
	end,
}
