return {
	"zaldih/themery.nvim",
	lazy = false,
	config = function()
		require("themery").setup({
			themes = {
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
					name = "osaka",
					colorscheme = "solarized-osaka",
				},
				{
					name = "miasma",
					colorscheme = "miasma",
				},
				{
					name = "citruszest",
					colorscheme = "citruszest",
				},
				{
					name = "nvimgelion",
					colorscheme = "nvimgelion",
				},
				{
					name = "eldritch",
					colorscheme = "eldritch",
				},
				{
					name = ".theme",
					colorscheme = "my-theme",
				},
			},
		})
		vim.keymap.set("n", "<leader>st", ":Themery<CR>")
	end,
}
