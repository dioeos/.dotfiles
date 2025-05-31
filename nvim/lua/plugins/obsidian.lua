return {
	"obsidian-nvim/obsidian.nvim",
	version = "*",
	lazy = true,
	ft = "markdown",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-telescope/telescope.nvim",
		"hrsh7th/nvim-cmp",
		"nvim-treesitter/nvim-treesitter",
	},
	opts = {
		workspaces = {
			{
				name = "ryan's vault",
				path = "C:/Users/eryan/Ryan's Vault 2.0/",
			},
		},
		ui = {
			enable = true,
		},
		templates = {
			folder = "Bookkeeping/Templates",
		},
	},
}
