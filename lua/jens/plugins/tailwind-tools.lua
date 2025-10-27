return {
	"luckasRanarison/tailwind-tools.nvim",
	name = "tailwind-tools",
	build = ":UpdateRemotePlugins",
	dependencies = {
		"nvim-treesitter/nvim-treesitter",
	},
	opts = {
		server = {
			override = true, -- setup the server from the plugin if true
			settings = {}, -- shortcut for `settings.tailwindCSS`
		},
	}, -- your configuration
}
