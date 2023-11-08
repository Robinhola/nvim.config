-- Telescope
vim.keymap.set('n', '<leader>ff', '<cmd>Telescope find_files<CR>')
vim.keymap.set('n', '<leader>fg', '<cmd>Telescope live_grep<CR>')
vim.keymap.set('n', '<leader>fh', '<cmd>Telescope help_tags<CR>')
vim.keymap.set('n', '<leader>fr', '<cmd>Telescope lsp_references<CR>')
vim.keymap.set('n', '<leader>ft', '<cmd>Telescope builtin<CR>')
vim.keymap.set('n', '<leader>fz', '<cmd>Telescope current_buffer_fuzzy_find<CR>')
-- NERDTree
vim.keymap.set('n', '-',     '<cmd>NERDTreeFind<CR>')
vim.keymap.set('n', '<c-e>', '<cmd>NERDTreeToggle<CR>')
-- Habits
vim.keymap.set('n', '<leader>w', '<c-w>w')
vim.keymap.set('n', '<leader>W', '<c-w>W')
vim.keymap.set('n', '<leader>q', '<cmd>quit<CR>')
vim.keymap.set('n', '<leader>Q', '<cmd>quit!<CR>')
-- Using control
vim.keymap.set('n', '<c-q>', '<cmd>quit<CR>')
vim.keymap.set('n', '<c-s>', '<cmd>split<CR>')
vim.keymap.set('n', '<c-d>', '<cmd>vsplit<CR>')
vim.keymap.set('n', '<c-x>', '<cmd>write<CR>')
vim.keymap.set('n', '<c-c>', '<escape>')
-- Copy without erasing
vim.keymap.set("x", "<leader>p", "\"_dP")
