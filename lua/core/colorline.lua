vim.api.nvim_create_autocmd("ColorScheme", {
  pattern = "*",
  callback = function()
    vim.api.nvim_set_hl(0, 'ColorColumn', { link = 'CursorLine' })
  end
})

vim.api.nvim_create_autocmd("VimEnter", {
  pattern = "*",
  callback = function()
    vim.api.nvim_set_hl(0, 'ColorColumn', { link = 'CursorLine' })
  end
})