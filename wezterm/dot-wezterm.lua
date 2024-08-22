local wezterm = require("wezterm")
return {
	window_padding = {
		-- left = 0,
		-- right = 0,
		-- top = 0,
		bottom = 0,
	},
	hyperlink_rules = {
		-- Linkify things that look like URLs and the host has a TLD name.
		-- Compiled-in default. Used if you don't specify any hyperlink_rules.
		{
			regex = "\\b\\w+://[\\w.-]+\\.[a-z]{2,15}\\S*\\b",
			format = "$0",
		},

		-- linkify email addresses
		-- Compiled-in default. Used if you don't specify any hyperlink_rules.
		{
			regex = [[\b\w+@[\w-]+(\.[\w-]+)+\b]],
			format = "mailto:$0",
		},

		-- Linkify things that look like URLs with numeric addresses as hosts.
		-- E.g. http://127.0.0.1:8000 for a local development server,
		-- or http://192.168.1.1 for the web interface of many routers.
		{
			regex = [[\b\w+://(?:[\d]{1,3}\.){3}[\d]{1,3}\S*\b]],
			format = "$0",
		},
	},
	window_frame = {
		font = wezterm.font({ family = "JetbrainsMono Nerd Font", weight = "Bold" }),
		font_size = 15.0,
	},
	font = wezterm.font_with_fallback({ "Maple Mono NF", "Delugia Book" }),
	-- font = wezterm.font_with_fallback({ "JetbrainsMono Nerd Font" }),
	-- font = wezterm.font_with_fallback({ "Cascadia Code", "Delugia Book" }),

	-- font_rules = {
	-- 	{
	-- 		intensity = "Bold",
	-- 		italic = true,
	-- 		font = wezterm.font({
	-- 			-- family = "Victor Mono",
	-- 			family = "Cascadia Code",
	-- 			weight = "Bold",
	-- 			style = "Italic",
	-- 		}),
	-- 	},
	-- 	{
	-- 		italic = true,
	-- 		intensity = "Half",
	-- 		font = wezterm.font({
	-- 			-- family = "Victor Mono",
	-- 			family = "Cascadia Code",
	-- 			weight = "DemiBold",
	-- 			style = "Italic",
	-- 		}),
	-- 	},
	-- 	{
	-- 		italic = true,
	-- 		intensity = "Normal",
	-- 		font = wezterm.font({
	-- 			-- family = "Victor Mono",
	-- 			family = "Cascadia Code",
	-- 			style = "Italic",
	-- 		}),
	-- 	},
	-- },

	font_size = 16,
	-- color_scheme = "Catppuccin Frappe",
	color_scheme_dirs = { "~/.config/wezterm/colors" },
	color_scheme = "Everforest Dark (Hard)",
	keys = {
		-- Make Option-Left equivalent to Alt-b which many line editors interpret as backward-word
		{ key = "LeftArrow", mods = "OPT", action = wezterm.action({ SendString = "\x1bb" }) },
		-- Make Option-Right equivalent to Alt-f; forward-word
		{ key = "RightArrow", mods = "OPT", action = wezterm.action({ SendString = "\x1bf" }) },
	},
	-- colors = {
	-- 	foreground = "#d3c6aa",
	-- 	background = "#2b3339",
	--
	-- 	cursor_bg = "#d3c6aa",
	-- 	cursor_fg = "#2b3339",
	-- 	cursor_border = "#83c092",
	--
	-- 	selection_fg = nil,
	-- 	selection_bg = "#3a4248",
	--
	-- 	-- TODO: fix these
	-- 	scrollbar_thumb = "#222222",
	-- 	split = "#444444",
	--
	-- 	ansi = {
	-- 		"#2b3339",
	-- 		"#7fbbb3",
	-- 		"#dbbc7f",
	-- 		"#83c092",
	-- 		"#a7c080",
	-- 		"#e67e80",
	-- 		"#e69875",
	-- 		"#d3c6aa",
	-- 	},
	-- 	brights = {
	-- 		"#868d80",
	-- 		"#7fbbb3",
	-- 		"#dbbc7f",
	-- 		"#83c092",
	-- 		"#a7c080",
	-- 		"#e67e80",
	-- 		"#e69875",
	-- 		"#fff9e8",
	-- 	},
	-- 	compose_cursor = "orange",
	--
	-- 	-- Colors for copy_mode and quick_select
	-- 	-- available since: 20220807-113146-c2fee766
	-- 	-- In copy_mode, the color of the active text is:
	-- 	-- 1. copy_mode_active_highlight_* if additional text was selected using the mouse
	-- 	-- 2. selection_* otherwise
	-- 	-- copy_mode_active_highlight_bg = { Color = "#000000" },
	-- 	-- use `AnsiColor` to specify one of the ansi color palette values
	-- 	-- (index 0-15) using one of the names "Black", "Maroon", "Green",
	-- 	--  "Olive", "Navy", "Purple", "Teal", "Silver", "Grey", "Red", "Lime",
	-- 	-- "Yellow", "Blue", "Fuchsia", "Aqua" or "White".
	-- 	copy_mode_active_highlight_fg = { AnsiColor = "Black" },
	-- 	copy_mode_inactive_highlight_bg = { Color = "#52ad70" },
	-- 	copy_mode_inactive_highlight_fg = { AnsiColor = "White" },
	--
	-- 	quick_select_label_bg = { Color = "peru" },
	-- 	quick_select_label_fg = { Color = "#ffffff" },
	-- 	quick_select_match_bg = { AnsiColor = "Navy" },
	-- 	quick_select_match_fg = { Color = "#ffffff" },
	-- },
}
