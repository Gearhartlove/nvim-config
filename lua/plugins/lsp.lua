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
			-- source: https://github.com/tailwindlabs/tailwindcss-intellisense
			lspconfig.tailwindcss.setup(
				{
					cmd = {
						"tailwindcss-language-server",
						"--stdio"
					}
				}
			)

			-- HTML
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

