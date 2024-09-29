require('robinef.plugins')
require('robinef.remap')
require('robinef.set')
require'lspconfig'.ocamlls.setup{}

vim.api.nvim_create_autocmd('BufWritePre', {
  pattern = '*',
  callback = function()
    local bufnr = vim.api.nvim_get_current_buf()
    local clients = vim.lsp.get_clients({ bufnr = bufnr, method = 'textDocument/formatting' })
    if #clients > 0 then
      vim.lsp.buf.format()
    end
  end,
})
