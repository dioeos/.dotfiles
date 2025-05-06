-- Navigation --
vim.keymap.set('n', '<leader>e', ':NvimTreeToggle<CR>')
vim.keymap.set('n', '<leader>f', '<C-W>W')
vim.keymap.set('n', '<C-j>', '<C-d>zz')
vim.keymap.set('n', '<C-k>', '<C-u>zz')


-- General
vim.keymap.set('n', '<leader>w', '<cmd>write<CR>')
vim.keymap.set('n', '<leader>hl', ':nohlsearch<CR>')
vim.keymap.set('n', '<leader>wq', ':wq<CR>')
vim.keymap.set('n', '<leader>q', ':q<CR>')

-- Terminal
vim.api.nvim_set_keymap("t", "<Esc>", [[<C-\><C-n>]], { noremap = true, silent = true })

-- Clipping --
vim.api.nvim_set_keymap('v', '<Leader>c', ':w !xclip -selection clipboard<CR>', { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', '<Leader>p', ':r !xclip -selection clipboard -o<CR>', { noremap = true, silent = true })

vim.keymap.set({ "n", "v" }, "<leader>c", [["+y"]])

vim.api.nvim_create_autocmd('TextYankPost', {
    desc = 'Highlight when yanking text',
    group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
    callback = function ()
        vim.highlight.on_yank()
    end,
})

-- LSP --
vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
vim.keymap.set({'n', 'v'}, '<leader>ca', vim.lsp.buf.code_action, {})

-- Notify --
--vim.keymap.set("n", "<leader>tn", function() require("telescope").extensions.notify.notify() end)
