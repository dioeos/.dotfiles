vim.g.mapleader = " "
require("setup")

vim.api.nvim_create_autocmd("FileType", {
	pattern = { "javascriptreact", "typescriptreact" },
	callback = function()
		vim.bo.indentexpr = "v:lua.vim.treesitter#indent()"
		vim.bo.smartindent = false
		vim.bo.autoindent = true
	end,
})
