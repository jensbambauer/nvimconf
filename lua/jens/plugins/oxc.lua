return {
	{
		"neovim/nvim-lspconfig",
		opts = function()
			-- oxc language server setup
			require("lspconfig").oxc_language_server.setup({
				cmd = { "oxc_language_server" },
				filetypes = { "javascript", "javascriptreact", "typescript", "typescriptreact" },
				root_dir = require("lspconfig.util").root_pattern("package.json", ".git"),
				settings = {},
			})
		end,
	},
	{
		"mfussenegger/nvim-lint",
		event = { "BufReadPost", "BufNewFile" },
		config = function()
			local lint = require("lint")

			-- oxlint für JS/TS
			lint.linters_by_ft = {
				javascript = { "oxlint" },
				javascriptreact = { "oxlint" },
				typescript = { "oxlint" },
				typescriptreact = { "oxlint" },
			}

			-- custom oxlint linter
			lint.linters.oxlint = {
				cmd = "oxlint",
				stdin = false,
				args = {},
				stream = "stdout",
				ignore_exitcode = true,
				parser = function(output, bufnr)
					local diagnostics = {}
					local lines = vim.split(output, "\n")

					for _, line in ipairs(lines) do
						-- Parse oxlint output format: "file:line:col: message (code)"
						local file, lnum, col, message, code = line:match("([^:]+):(%d+):(%d+): (.+) %((.+)%)")
						if lnum and col then
							table.insert(diagnostics, {
								lnum = tonumber(lnum) - 1,
								col = tonumber(col) - 1,
								message = message or "",
								code = code or "",
								severity = vim.diagnostic.severity.WARN,
								source = "oxlint",
							})
						end
					end

					return diagnostics
				end,
			}

			-- Auto-Lint on save
			vim.api.nvim_create_autocmd({ "BufWritePost", "BufReadPost" }, {
				pattern = { "*.js", "*.jsx", "*.ts", "*.tsx" },
				callback = function()
					lint.try_lint()
				end,
			})

			-- Keybinding für manuelles Linting
			vim.keymap.set("n", "<leader>ml", function()
				lint.try_lint()
			end, { desc = "Trigger linting for current file" })
		end,
	},
}
