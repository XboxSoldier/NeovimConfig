require("virt-column").setup({
  virtcolumn = "81",
  exclude = {
    filetypes = {
      "lspinfo",
      "packer",
      "checkhealth",
      "help",
      "man",
      "gitcommit",
      "telescopePrompt",
      "telescopeResults"
    },
    buftypes = {
      "terminal",
      "quickfix",
      "prompt"
    }
  }
})