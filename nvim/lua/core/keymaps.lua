-- Navigation --
vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")
vim.keymap.set("n", "<leader>f", "<C-W>W")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-k>", "<C-u>zz")
vim.keymap.set("n", "H", "<C-w>h", { noremap = true, silent = true })
vim.keymap.set("n", "J", "<C-w>j", { noremap = true, silent = true })
vim.keymap.set("n", "K", "<C-w>k", { noremap = true, silent = true })
vim.keymap.set("n", "L", "<C-w>l", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>rh", ":vertical resize -2<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>rl", ":vertical resize +2<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>rj", ":resize -2<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>rk", ":resize +2<CR>", { noremap = true, silent = true })

-- General
vim.keymap.set("n", "<leader>w", "<cmd>write<CR>")
vim.keymap.set("n", "<leader>hl", ":nohlsearch<CR>")
vim.keymap.set("n", "<leader>wq", ":wq<CR>")
vim.keymap.set("n", "<leader>q", ":q<CR>")

-- Terminal
vim.api.nvim_set_keymap("t", "<Esc>", [[<C-\><C-n>]], { noremap = true, silent = true })

-- Clipping --
vim.api.nvim_set_keymap("v", "<Leader>c", ":w !xclip -selection clipboard<CR>", { noremap = true, silent = true })

vim.api.nvim_set_keymap("n", "<Leader>p", ":r !xclip -selection clipboard -o<CR>", { noremap = true, silent = true })

vim.keymap.set({ "n", "v" }, "<leader>c", [["+y"]])

vim.api.nvim_create_autocmd("TextYankPost", {
	desc = "Highlight when yanking text",
	group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
	callback = function()
		vim.highlight.on_yank()
	end,
})

-- LSP --
vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {})

-- Obsidian
vim.keymap.set("n", "<leader>os", ":ObsidianSearch<CR>")
vim.keymap.set("n", "<leader>on", ":ObsidianNew<CR>")

-- Notify --
--vim.keymap.set("n", "<leader>tn", function() require("telescope").extensions.notify.notify() end)
