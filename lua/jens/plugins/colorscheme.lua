return {
  "Yazeed1s/oh-lucy.nvim",
  config = function()
    -- Globale Einstellungen für das Theme
    vim.g.oh_lucy_italic_functions = true
    vim.g.oh_lucy_italic_comments = true
    vim.g.oh_lucy_italic_booleans = true

    -- Lade das Farbschema
    vim.cmd([[colorscheme oh-lucy]])

    vim.api.nvim_set_hl(0, "@keyword.function.tsx", { italic = true, fg = "#e06c75" })
    vim.api.nvim_set_hl(0, "@tag.tsx", { fg = "#e06c75" })
    vim.api.nvim_set_hl(0, "@tag.attribute.tsx", { fg = "#61afef" })
    vim.api.nvim_set_hl(0, "@string", { fg = "#8BB8D0" })
  end,
}
