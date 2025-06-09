return {
	"rcarriga/nvim-notify",
	config = function()
		require("notify").setup({
			background_color = "#16161d",
			stages = "fade_in_slide_out",
			timeout = 1000,
			render = "default",
			max_width = 50,
			fps = 60,
		})
		vim.keymap.set("n", "<leader>nh", ":Telescope notify<CR>", { desc = "View notification history" })
	end,
}
