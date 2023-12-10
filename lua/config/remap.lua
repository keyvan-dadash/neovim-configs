local autocmd = vim.api.nvim_create_autocmd

vim.g.mapleader = " "
vim.keymap.set('i', '<c-s>', [[<esc>:w<CR>]])

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("x", "<leader>p", [["_dP]])

vim.keymap.set("n", "<leader>r", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

vim.keymap.set('n', '<leader>1', '1gt')
vim.keymap.set('n', '<leader>2', '2gt')
vim.keymap.set('n', '<leader>3', '3gt')
vim.keymap.set('n', '<leader>4', '4gt')
vim.keymap.set('n', '<leader>5', '5gt')
vim.keymap.set('n', '<leader>6', '6gt')
vim.keymap.set('n', '<leader>7', '7gt')
vim.keymap.set('n', '<leader>8', '8gt')
vim.keymap.set('n', '<leader>9', '9gt')

vim.keymap.set('n', '<C-Right>', 'gt')
vim.keymap.set('n', '<Tab>', 'gt')
vim.keymap.set('n', '<C-Left>', 'gT')
vim.keymap.set('n', '<S-Tab>', 'gT')

vim.keymap.set('n', 'Gd', ':vert bo winc ]<CR>')
vim.keymap.set('n', ';', ':')

-- lets force ourselves
vim.keymap.set('n', '<Up>', '<C-W>k')
vim.keymap.set('n', '<Down>', '<C-W>j')
vim.keymap.set('n', '<Left>', '<C-W>h')
vim.keymap.set('n', '<Right>', '<C-W>l')

vim.keymap.set('n', "<leader>f", ":Format<CR>")

autocmd('TabNewEntered', {
    callback = function()
        vim.cmd.NvimTreeFindFile()
        vim.cmd[[wincmd l]]
    end,
})
