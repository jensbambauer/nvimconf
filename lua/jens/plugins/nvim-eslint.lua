return {
	"esmuellert/nvim-eslint",
	config = function()
		require("nvim-eslint").setup({
			workingDirectory = { mode = "location" },
		})
	end,
}
