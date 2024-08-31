require("lualine").setup({
  options = {
    theme = "github_light",
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
