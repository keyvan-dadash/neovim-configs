vim.keymap.set('n', '<C-T>t', vim.cmd.FloatermNew)
vim.keymap.set('t', '<C-T>t', vim.cmd.FloatermNew)

vim.keymap.set('t', '<C-T>l', vim.cmd.FloatermPrev)
vim.keymap.set('t', '<C-T>r', vim.cmd.FloatermNext)
vim.keymap.set('n', '<F8>', vim.cmd.FloatermToggle)
vim.keymap.set('t', '<F8>', vim.cmd.FloatermHide)

vim.g.floaterm_width = 0.85
vim.g.floaterm_height = 0.85

