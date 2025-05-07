return {
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
		"xero/miasma.nvim",
		lazy = false,
		priority = 1000,
		config = function()
			--vim.cmd("colorscheme miasma")
		end,
	},

	{
		"zootedb0t/citruszest.nvim",
		lazy = false,
		priority = 1000,
	},

	{
		"nyngwang/nvimgelion",
		config = function()
			-- do whatever you want for further customization~
		end,
	},

	{
		"xero/evangelion.nvim",
		lazy = false,
		priority = 1000,
		init = function()
			vim.cmd.colorscheme("evangelion")
		end,
	},
}
