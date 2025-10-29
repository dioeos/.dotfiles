return {
	{
		"neanias/everforest-nvim",
		version = false,
		lazy = false,
		priority = 1000,
		config = function()
			require("everforest").setup({})
		end,
	},
	{
		"luisiacc/the-matrix.nvim",
		lazy = false,
		priority = 1000,
	},
	{
		"cmoscofian/nibble-vim",
		lazy = false,
		priority = 1000,
	},
	{
		"L-Colombo/oldschool.nvim",
		config = true,
		-- to ovverride palette colors:
		-- opts = { <color> = "<hex value>"}
	},
	{
		"EdenEast/nightfox.nvim",
		lazy = false,
		priority = 1000,
		config = function()
			require("nightfox").setup({
				options = {
					styles = {
						comments = "italic",
						conditionals = "italic",
						constants = "NONE",
						functions = "NONE",
						keywords = "NONE",
						numbers = "NONE",
						operators = "NONE",
						strings = "NONE",
						types = "bold",
						variables = "NONE",
					},
				},
			})
		end,
	},
	{
		"whatyouhide/vim-gotham",
		lazy = false,
		priority = 1000,
	},
	-- ASHEN
	{
		"ficcdaf/ashen.nvim",
		tag = "*",
		lazy = false,
		priority = 1000,
		config = function()
			require("ashen").setup({
				style = {
					bold = true,
					italic = true,
				},
			})
		end,
	},

	-- BOO
	{
		"rockerBOO/boo-colorscheme-nvim",
		lazy = false,
		priority = 1000,
		config = function()
			require("boo-colorscheme").use({
				italic = true,
				theme = "boo",
			})
		end,
	},

	{
		"rebelot/kanagawa.nvim",
		priority = 1000,
		lazy = false,

		config = function()
			-- Default options:
			require("kanagawa").setup({
				compile = false, -- enable compiling the colorscheme
				undercurl = true, -- enable undercurls
				commentStyle = { italic = true },
				functionStyle = {},
				keywordStyle = { italic = true },
				statementStyle = { bold = true },
				typeStyle = {},
				transparent = false, -- do not set background color
				dimInactive = false, -- dim inactive window `:h hl-NormalNC`
				terminalColors = true, -- define vim.g.terminal_color_{0,17}
				colors = { -- add/modify theme and palette colors
					palette = {},
					theme = { wave = {}, lotus = {}, dragon = {}, all = {} },
				},
				overrides = function(colors) -- add/modify highlights
					return {}
				end,
				theme = "wave", -- Load "wave" theme
				background = { -- map the value of 'background' option to a theme
					dark = "wave", -- try "dragon" !
					light = "lotus",
				},
			})
		end,
	},

	{
		"nyngwang/nvimgelion",
		config = function()
			-- do whatever you want for further customization~
		end,
	},
	{
		"ryandioneda/.theme",
		lazy = false,
	},
	{
		"Mofiqul/adwaita.nvim",
		lazy = false,
		priority = 1000,
	},
	{
		"aliqyan-21/darkvoid.nvim",
	},
	{
		"bluz71/vim-moonfly-colors",
		name = "moonfly",
		lazy = false,
		priority = 1000,
	},
	{
		"miikanissi/modus-themes.nvim",
		priority = 1000,
	},
}
