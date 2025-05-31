return {
	"rcarriga/nvim-notify",
	config = function()
		local notify = require("notify")

		notify.setup({
			background_color = "#000000",
			stages = "fade_in_slide_out",
			timeout = 1000,
			render = "default",
			max_width = 50,
			fps = 60,
		})
		vim.notify = notify

		vim.keymap.set("n", "<leader>nh", ":Telescope notify<CR>", { desc = "View notification history" })
	end,
}
