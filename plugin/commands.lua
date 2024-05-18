local autocmd = vim.api.nvim_create_autocmd

-- remove trailing spaces on buffer save
autocmd("BufWritePre", {
  pattern = "*",
  command = [[%s/\s\+$//e]],
})
