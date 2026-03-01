return {
	"zaldih/themery.nvim",
	lazy = false,
	config = function()
		require("themery").setup({
			themes = {
				{
					name = "koda",
					colorscheme = "koda",
				},
				{
					name = "bathory",
					colorscheme = "bathory",
				},
				{
					name = "khold",
					colorscheme = "khold",
				},
			},
		})
		vim.keymap.set("n", "<leader>st", ":Themery<CR>")
	end,
}
