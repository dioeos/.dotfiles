return {
	{
		"windwp/nvim-autopairs",
		event = "InsertEnter",
		config = true,
	},
	{
		"windwp/nvim-ts-autotag",
		after = "nvim-treesitter",
		config = function()
			require("nvim-ts-autotag").setup({
				enable = true,
				filetypes = { "html", "xml", "javascript", "markdown" },
			})
		end,
	},

	{
		"kylechui/nvim-surround",
		version = "^3.0.0",
		event = "VeryLazy",
		config = function()
			require("nvim-surround").setup({
				--refer to :h nvim-surround.usage
			})
		end,
	},
}
