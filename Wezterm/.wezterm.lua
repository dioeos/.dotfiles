local wezterm = require("wezterm")
local config = wezterm.config_builder()
local act = wezterm.action

config.default_prog = { "powershell.exe" }
config.wsl_domains = {
	{
		name = "WSL:Ubuntu",
		distribution = "Ubuntu",
		default_cwd = "~",
	},
}
config.default_domain = "WSL:Ubuntu"
config.font = wezterm.font("IosevkaTerm Nerd Font", { weight = "Regular" })
config.window_close_confirmation = "NeverPrompt"

-- FONT & TEXTS
config.font_size = 16.0

-- WINDOW DECORATIONS
config.hide_tab_bar_if_only_one_tab = true
config.window_decorations = "RESIZE"
config.window_padding = {
	left = 0,
	right = 0,
	top = 2.5,
	bottom = 2.5,
}
-- config.window_background_opacity = 0
-- config.win32_system_backdrop = "Acrylic"
config.adjust_window_size_when_changing_font_size = false

config.keys = {
	{
		key = "r",
		mods = "CTRL|SHIFT",
		action = wezterm.action.ReloadConfiguration,
	},
	{
		key = "X",
		mods = "CTRL|SHIFT",
		action = wezterm.action.CloseCurrentPane({ confirm = true }),
	},
	{
		key = "|",
		mods = "CTRL|SHIFT",
		action = wezterm.action.SplitHorizontal({ domain = "CurrentPaneDomain" }),
	},
	{
		key = "H",
		mods = "CTRL|SHIFT",
		action = act.AdjustPaneSize({ "Left", 5 }),
	},
	{
		key = "L",
		mods = "CTRL|SHIFT",
		action = act.AdjustPaneSize({ "Right", 5 }),
	},
	{
		key = "J",
		mods = "CTRL|SHIFT",
		action = act.AdjustPaneSize({ "Down", 5 }),
	},
	{
		key = "K",
		mods = "CTRL|SHIFT",
		action = act.AdjustPaneSize({ "Up", 5 }),
	},
	{
		key = "<",
		mods = "CTRL|SHIFT",
		action = act.ActivatePaneDirection("Left"),
	},
	{
		key = ">",
		mods = "CTRL|SHIFT",
		action = act.ActivatePaneDirection("Right"),
	},
	{
		key = "UpArrow",
		mods = "CTRL|SHIFT",
		action = act.ActivatePaneDirection("Up"),
	},
	{
		key = "DownArrow",
		mods = "CTRL|SHIFT",
		action = act.ActivatePaneDirection("Down"),
	},

	{
		key = "p",
		mods = "CTRL|SHIFT",
		action = act.ActivateTabRelative(-1),
	},
	{
		key = "n",
		mods = "CTRL|SHIFT",
		action = act.ActivateTabRelative(1),
	},
	{
		key = "0",
		mods = "CTRL",
		action = wezterm.action.ResetFontSize,
	},
	{
		key = "P",
		mods = "CTRL|SHIFT",
		action = wezterm.action.SpawnCommandInNewTab({
			domain = { DomainName = "local" },
			args = { "powershell.exe" },
		}),
	},
}

config.colors = {
	foreground = "#d5c6e0",
	background = "#16161d",
	cursor_bg = "#fc735d",
	cursor_fg = "#16161d",
	cursor_border = "#fc735d",

	selection_fg = "#d5c6e0",
	selection_bg = "#373e40",

	ansi = {
		"#030707", -- black
		"#fb3475", -- red
		"#7cb375", -- green
		"#fcc25d", -- yellow
		"#b194fa", -- blue
		"#c51af9", -- magenta
		"#8bd450", -- cyan
		"#d5c6e0", -- white
	},
	brights = {
		"#686858", -- bright black
		"#fc735d", -- bright red
		"#9ef01a", -- bright green
		"#d694fa", -- bright yellow
		"#b8b8ff", -- bright blue
		"#984695", -- bright magenta
		"#b194fa", -- bright cyan
		"#eaf3f5", -- bright white
	},
}

return config
