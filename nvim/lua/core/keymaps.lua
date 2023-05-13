-- Navigate vim panes better
vim.keymap.set('n', '<c-k>', ':wincmd k<CR>')
vim.keymap.set('n', '<c-j>', ':wincmd j<CR>')
vim.keymap.set('n', '<c-h>', ':wincmd h<CR>')
vim.keymap.set('n', '<c-l>', ':wincmd l<CR>')

vim.keymap.set('n', '<leader>h', ':nohlsearch<CR>')
vim.keymap.set('n', '<C-i>', ':tabn<CR>')

vim.keymap.set("n", "<C-s>", vim.cmd.w)
vim.keymap.set('n', '<leader>w', ':w | so% | PackerSync<CR>')
vim.keymap.set('n','<leader>x', ':w | !python3 %<CR>')
