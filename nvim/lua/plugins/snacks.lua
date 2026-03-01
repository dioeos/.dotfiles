return {
	"folke/snacks.nvim",
	priority = 1000,
	lazy = false,

	opts = {
		bigfile = { enabled = true },
		dashboard = {
			preset = {
				pick = nil,
				---@type snacks.dashboard.Item[]
				keys = {
					{ icon = " ", key = "f", desc = "Find File", action = ":lua Snacks.dashboard.pick('files')" },
					{ icon = " ", key = "n", desc = "New File", action = ":ene | startinsert" },
					{
						icon = " ",
						key = "g",
						desc = "Find Text",
						action = ":lua Snacks.dashboard.pick('live_grep')",
					},
					{
						icon = " ",
						key = "r",
						desc = "Recent Files",
						action = ":lua Snacks.dashboard.pick('oldfiles')",
					},
					{ icon = " ", key = "s", desc = "Restore Session", section = "session" },
					{
						icon = "󰒲 ",
						key = "l",
						desc = "Lazy",
						action = ":Lazy",
						enabled = package.loaded.lazy ~= nil,
					},
					{ icon = " ", key = "q", desc = "Quit", action = ":qa" },
				},
				header = [[
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⣴⠀⠀⠀⠀⠀⠀⡠⢪⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⡇⠆⠀⠀⢠⣆⠜⠀⠎⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⢠⡘⡿⢳⢸⠜⡠⡯⠟⠀⣰⠠⢂⠋⢀⡀⠤⡶⠂⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⢠⠐⣇⣈⣛⢰⡱⠟⠀⠀⠀⠰⡳⠊⠑⢰⣮⡄⡀⡀⠀⠀⠀⠀
⠀⠀⢀⡀⢀⠤⢚⣿⣧⣥⡤⣽⣷⣤⠀⠀⢀⣺⠚⢁⠀⠀⣀⠔⠊⠀⠀⠀⠀⠀
⠀⠀⣈⠟⠁⡠⣿⣿⣿⣽⣷⣿⣿⣿⠀⡤⣼⠉⠂⢀⠄⠊⠀⠀⠀⠀⠀⠀⠀⠀
⠀⢰⠃⢠⣿⠿⠛⠉⠀⠀⠈⠉⠛⣿⠥⢾⠇⠈⠒⣒⡒⠶⠆⠀⠀⠀⠀⠀⠀⠀
⡀⠀⣠⡞⣵⠇⠀⠀⠀⠀⣀⠂⠀⣣⢠⡠⣬⣥⣿⣷⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⢿⠏⢀⢥⠆⠂⡰⠚⣅⠀⠀⠜⢁⠉⠀⠈⠛⣶⣿⡟⠄⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠘⠐⠃⠘⢴⡿⠁⠰⠉⢂⠀⠀⠀⠑⣧⠀⠀⠈⣿⡣⡈⠄⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠐⠀⠀⠠⠃⠀⠈⡄⠀⠀⠀⠘⠀⠀⠀⢸⢹⠛⡞⡄⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⢀⠂⠀⢀⠕⢱⠐⠀⠀⠀⢣⠀⠀⢸⢊⢡⠈⡶⡀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠈⣦⢢⠂⠀⠀⡀⠀⠀⠀⠀⡄⠀⠀⠀⢻⣜⡀⢲⡀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠰⠻⠖⠀⢀⠊⠃⠀⠀⠀⠀⢿⣀⡜⠀⠀⠹⣷⣶⣷⡀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠠⠃⠀⠀⠀⠀⠀⠀⠈⠋⠀⠀⠀⠀⢹⣿⣿⣿⣤⣄⠤
⠀⠀⠀⠀⠀⠀⠀⠀⠀⡆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠃⠀⠀⠀⠘⣿⣿⣿⣿⣇⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⢣⠀⠀⠀⠀⢀⡠⠤⠤⠀⢀⠀⠀⠀⠀⠹⣿⣿⢿⡫⣇
⠀⠀⠀⠀⠀⠀⠀⠀⣠⢚⢁⡠⠔⠂⠁⠀⠀⠀⠈⠀⠉⠐⠠⡀⠀⠈⠏⢲⠀⠈
⠀⠀⠀⠀⠀⠀⠀⠀⠉⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⢢⡀⢰⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠋⠁⠀⠀
        ]],
			},
			sections = {
				{ section = "header" },
				{
					section = "keys",
					title = "Keys",
					indent = 1,
					padding = 1,
				},
				{ section = "recent_files", title = "Recent Files", indent = 1, padding = 1 },
				-- { icon = " ", title = "Projects", section = "projects", indent = 2, padding = 1 },
				-- { section = "startup" },
			},
		},
		explorer = { enabled = false },
		indent = { enabled = false },
		input = { enabled = true },
		picker = { enabled = true },
		notifier = { enabled = true },
		quickfile = { enabled = true },
		scope = { enabled = true },
		scroll = { enabled = false },
		statuscolumn = { enabled = true },
		words = { enabled = true },
	},
}
