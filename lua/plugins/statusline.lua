require("lualine").setup({
  options = {
    theme = "tokyonight-day",
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
