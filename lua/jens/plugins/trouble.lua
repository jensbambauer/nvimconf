return {
  "folke/trouble.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons", "folke/todo-comments.nvim" },
  cmd = "Trouble",
  opts = {},
  keys = {
    { "<leader>xx", "<cmd>Trouble diagnostics toggle<CR>", desc = "Open/close trouble list" },
  },
}
