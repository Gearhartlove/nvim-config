-- configs can be found at: https://github.com/neovim/nvim-lspconfig/blob/master/doc/configs.md#html
return {
	{
		"neovim/nvim-lspconfig",
		config = function()
			local lspconfig = require("lspconfig")
			-- ELIXIR
			lspconfig.elixirls.setup(
				{
					-- you need to specify the executable command mannualy for elixir-ls
					cmd = {
							"/home/kristoff/tsl/lsps/lexical/_build/dev/package/lexical/bin/start_lexical.sh"
					}
				}
			)

			-- TAILWIND
			-- TODO: get this to work with .heex files. Currently only works with .html files weirdly
			-- TO-TRY: only have tailwind lsp on, turn off elixir lsp
			-- source: https://github.com/tailwindlabs/tailwindcss-intellisense
			lspconfig.tailwindcss.setup(
				{
					cmd = {
						"tailwindcss-language-server",
						"--stdio"
					},
				}
			)

			-- HTML
			-- TODO: hookup snippet engine to enable completions, note might not even need html lsp
			-- source:  https://github.com/neovim/nvim-lspconfig/blob/master/doc/configs.md#html
			local capabilities = vim.lsp.protocol.make_client_capabilities()
			capabilities.textDocument.completion.completionItem.snippetSupport = true

			lspconfig.html.setup(
				{
					filetypes = { "html", "heex" },
					capabilities = capabilities
				}
			)
		end
	}
}

