require("lualine").setup({
  options = {
    theme = "onedark",
  },
  sections = {
    lualine_c = {
      "filename",
      function()
        return require("lsp-progress").progress()
      end,
    },
  },
})
