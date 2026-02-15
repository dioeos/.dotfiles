return {
	{
		"luckasRanarison/tailwind-tools.nvim",
		name = "tailwind-tools",
		ft = { "html", "css", "scss", "javascriptreact", "typescriptreact", "tsx" },
		dependencies = {
			"nvim-treesitter/nvim-treesitter",
			"neovim/nvim-lspconfig",
		},
		opts = {
			lsp = "tailwindcss",

			document_color = {
				enabled = true,
				kind = "background",
			},
			conceal = {
				enabled = false,
				symbols = {},
			},

			keymaps = {
				smart_increment = {
					enabled = false,
				},
			},
		},
	},
}
