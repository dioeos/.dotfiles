return {
	{
		"akinsho/toggleterm.nvim",
		version = "*",
		config = function()
			local is_windows = vim.loop.os_uname().sysname == "Windows_NT"
			local is_wsl = vim.fn.has("wsl") == 1

			local shell
			if is_windows and not is_wsl then
				shell =
					[[C:\\Windows\\System32\\WindowsPowerShell\\v1.0\\powershell.exe -NoLogo -NoExit -ExecutionPolicy RemoteSigned]]
			else
				shell = vim.o.shell
			end

			require("toggleterm").setup({
				shell = shell,
			})

			local Terminal = require("toggleterm.terminal").Terminal
			local float_term = Terminal:new({ direction = "float", hidden = true })

			function _FLOAT_TOGGLE()
				float_term:toggle()
			end

			vim.api.nvim_set_keymap(
				"n",
				"<leader>ft",
				"<cmd>lua _FLOAT_TOGGLE()<CR>",
				{ noremap = true, silent = true, desc = "Toggle floating terminal" }
			)

			vim.api.nvim_set_keymap(
				"n",
				"<leader>tt",
				"<cmd>ToggleTerm<CR>",
				{ noremap = true, silent = true, desc = "Toggle regular terminal" }
			)

			vim.keymap.set("n", "<leader>t", function()
				local term_buf = nil
				for _, win in ipairs(vim.api.nvim_list_wins()) do
					local buf = vim.api.nvim_win_get_buf(win)
					if vim.bo[buf].buftype == "terminal" then
						term_buf = win
						break
					end
				end

				if term_buf then
					vim.api.nvim_set_current_win(term_buf)
				end
			end, { desc = "Focus terminal window" })
		end,
	},
}
