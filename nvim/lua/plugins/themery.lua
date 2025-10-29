return {
	"zaldih/themery.nvim",
	lazy = false,
	config = function()
		require("themery").setup({
			themes = {
				{
					name = "everforest",
					colorscheme = "everforest",
				},
				{
					name = "thematrix",
					colorscheme = "thematrix",
				},
				{
					name = "nibble",
					colorscheme = "nibble",
				},
				{
					name = "oldschool",
					colorscheme = "oldschool",
				},
				{
					name = "adwaita",
					colorscheme = "adwaita",
				},
				{
					name = "darkvoid",
					colorscheme = "darkvoid",
				},
				{
					name = "gotham",
					colorscheme = "gotham",
				},
				{
					name = "nightfox",
					colorscheme = "nightfox",
				},
				{
					name = "carbonfox",
					colorscheme = "carbonfox",
				},
				{
					name = "ashen",
					colorscheme = "ashen",
				},
				{
					name = "sunset cloud",
					colorscheme = "sunset_cloud",
				},
				{
					name = "forest stream",
					colorscheme = "forest_stream",
				},
				{
					name = "boo",
					colorscheme = "boo",
				},
				{
					name = "radioactive waste",
					colorscheme = "radioactive_waste",
				},
				{
					name = "crimson moonlight",
					colorscheme = "crimson_moonlight",
				},
				{
					name = "kanagawa",
					colorscheme = "kanagawa",
				},
				{
					name = "nvimgelion",
					colorscheme = "nvimgelion",
				},
				{
					name = "moonfly",
					colorscheme = "moonfly",
				},
				{
					name = "modus",
					colorscheme = "modus",
				},
				-- {
				-- 	name = ".theme",
				-- 	colorscheme = "my-theme",
				-- },
			},
		})
		vim.keymap.set("n", "<leader>st", ":Themery<CR>")
	end,
}
