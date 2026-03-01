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
	foreground = "#c1c1c1", -- fg
	background = "#181818", -- bg
	cursor_bg = "#e78a43", -- type (accent)
	cursor_fg = "#000000",
	cursor_border = "#e78a43",

	selection_fg = "#c1c1c1",
	selection_bg = "#333333", -- visual

	ansi = {
		"#3E2018", -- black (alt_bg)
		"#5f8787", -- red (diag_red)
		"#c1c1c1", -- green (property)
		"#888888", -- yellow (func)
		"#aaaaaa", -- blue (constant)
		"#999999", -- magenta (keyword)
		"#fbcb97", -- cyan (string accent)
		"#c1c1c1", -- white (fg)
	},

	brights = {
		"#505050", -- bright black (comment)
		"#6e4c4c", -- bright red (diag_green)
		"#e78a43", -- bright green (type accent)
		"#aaaaaa", -- bright yellow (number)
		"#9b99a3", -- bright blue (operator)
		"#999999", -- bright magenta (keyword)
		"#fbcb97", -- bright cyan (string)
		"#c1c1c1", -- bright white (fg)
	},
}

return config
