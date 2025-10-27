return {
	"nvim-mini/mini.diff",
	version = false, -- always use latest
	event = "VeryLazy", -- optional: lazy-load
	opts = {
		view = {
			style = "sign",
			signs = {
				add = "▎",
				change = "▎",
				delete = "",
			},
		},
	},
	view = {
		style = "sign",
	},
	mappings = {
		apply_hunk = "<leader>ga",
		reset_hunk = "<leader>gr",
		textobject = "ih",
	},
	keys = {
		{
			"<leader>go",
			function()
				require("mini.diff").toggle_overlay(0)
			end,
			desc = "Toggle mini.diff overlay",
		},
	},
	config = function(_, opts)
		require("mini.diff").setup(opts)
	end,
}
