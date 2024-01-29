vim.opt.autoread = true
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.spell = true

vim.api.nvim_create_autocmd({"BufWritePost"}, {
  pattern = {"*.ml", "*.mli", "*.sexp"},
  command = "silent !ocamlformat % -i",
})
