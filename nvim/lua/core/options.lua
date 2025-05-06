-- General --
vim.g.mapleader = ' '
vim.opt.encoding = "utf-8"
vim.opt.fileencoding = "utf-8"
vim.opt.swapfile = false


-- Visuals --
vim.opt.title = true
vim.opt.smartindent = true
vim.opt.expandtab = true
vim.opt.cmdheight = 1
vim.opt.laststatus = 3
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.wrap = true
vim.opt.expandtab = true
vim.opt.termguicolors = true


--vim.api.nvim_create_autocmd("BufWinEnter", {
--    callback = function()
--        vim.opt_local.backspace = { "indent", "eol", "start" }
--    end,
--})
