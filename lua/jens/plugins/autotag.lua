return {
	"windwp/nvim-ts-autotag",
	event = { "InsertEnter" },
	config = function()
		-- import nvim-autopairs
		local autotag = require("nvim-ts-autotag")
		-- configure autopairs
		autotag.setup()
	end,
}
