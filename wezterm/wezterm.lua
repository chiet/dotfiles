--- -- Start window maximized.
-- local mux = wezterm.mux
-- wezterm.on("gui-startup", function()
-- 	local tab, pane, window = mux.spawn_window({})
-- 	window:gui_window():maximize()
-- end)

local wezterm = require("wezterm")
local mux = wezterm.mux
local act = wezterm.action
local keys = {}
local config = {}
local launch_menu = {}
local mouse_bindings = {}

if wezterm.config_builder then
	config = wezterm.config_builder()
end

-- // DEFAULT PROGRAM
config.font_size = 13
config.launch_menu = launch_menu
config.launch_menu = launch_menu
config.window_decorations = "RESIZE"
config.mouse_bindings = mouse_bindings
config.color_scheme = "catppuccin-frappe"
config.disable_default_key_bindings = true
config.hide_tab_bar_if_only_one_tab = true
config.default_cursor_style = "BlinkingBar"
config.default_prog = { "pwsh.exe", "-nol" }
config.font = wezterm.font("FiraCode Nerd Font", { weight = "Bold" })
config.keys = { { key = "V", mods = "CTRL", action = act.PasteFrom("Clipboard") } }
-- config.window_padding = {
-- 	left = 20,
-- 	right = 20,
-- 	top = 20,
-- 	bottom = 0,
--     }

mouse_bindings = {
	{
		event = { Down = { streak = 3, button = "Left" } },
		action = wezterm.action.SelectTextAtMouseCursor("SemanticZone"),
		mods = "NONE",
	},
	{
		event = { Down = { streak = 1, button = "Right" } },
		mods = "NONE",
		action = wezterm.action_callback(function(window, pane)
			local has_selection = window:get_selection_text_for_pane(pane) ~= ""
			if has_selection then
				window:perform_action(act.CopyTo("ClipboardAndPrimarySelection"), pane)
				window:perform_action(act.ClearSelection, pane)
			else
				window:perform_action(act({ PasteFrom = "Clipboard" }), pane)
			end
		end),
	},
}

-- // FOREGROUND
config.foreground_text_hsb = {
	hue = 1,
	saturation = 1.5,
	brightness = 1.5,
}

-- // BACKGROUND IMAGE
config.background = {
	{
		source = { File = { path = "C:/Users/ACER/Pictures/wallhaven-9dkeqd.png" } },
		-- speed = 0.2 } },
		opacity = 0.7,
		-- width = "100%",
		hsb = { brightness = 0.5 },
	},
}

-- IMPORTANT: Sets WSL2 UBUNTU-22.04 as the defualt when opening Wezterm
-- config.default_domain = 'WSL:Ubuntu-22.04'

return config
