return {
	"hrsh7th/cmp-nvim-lsp",
	event = { "BufReadPre", "BufNewFile" },
	dependencies = {
		{ "antosha417/nvim-lsp-file-operations", config = true },
		{ "folke/lazydev.nvim", opts = {} },
	},
	config = function()
		-- import cmp-nvim-lsp plugin
		local cmp_nvim_lsp = require("cmp_nvim_lsp")

		-- used to enable autocompletion (assign to every lsp server config)
		local capabilities = cmp_nvim_lsp.default_capabilities()

		vim.lsp.config("*", {
			capabilities = capabilities,
		})

		-- oxc language server setup
		require("lspconfig").oxc_language_server.setup({
			cmd = { "oxc_language_server" },
			filetypes = { "javascript", "javascriptreact", "typescript", "typescriptreact" },
			root_dir = require("lspconfig.util").root_pattern("package.json", ".git"),
			settings = {},
			capabilities = capabilities,
		})
	end,
}
