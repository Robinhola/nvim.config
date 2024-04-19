vim.opt.autoread = true
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.spell = true

vim.api.nvim_create_autocmd({"BufWritePost"}, {
  pattern = {"*.ml", "*.mli", "*.sexp"},
  command = "silent !ocamlformat % -i",
})

vim.api.nvim_create_autocmd({"BufWritePost"}, {
  pattern = {"*.cpp", "*.h", "*.hpp"},
  command = "!clang-format % -i",
})

vim.api.nvim_create_autocmd('LspAttach', {
  callback = function(args)
    vim.keymap.set('n', 'K', vim.lsp.buf.hover, { buffer = args.buf })
  end,
})

function Switch_header_source()
  local file_ext  = vim.fn.expand('%:e')
  local file_root = vim.fn.expand('%:t:r')

  if file_ext == 'cpp' then
    vim.cmd('find ' .. file_root .. '.h')
  elseif file_ext == 'h' or file_ext == 'hpp' then
    vim.cmd('find ' .. file_root .. '.cpp')
  end

  if file_ext == 'ml' then
    vim.cmd('find ' .. file_root .. '.mli')
  elseif file_ext == 'mli' then
    vim.cmd('find ' .. file_root .. '.ml')
  end

end

vim.keymap.set('n', 'gm', ':lua Switch_header_source()<CR>', {noremap = true, silent = true})
