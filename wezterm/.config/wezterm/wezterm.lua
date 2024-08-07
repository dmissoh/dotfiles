local wezterm = require("wezterm")

config = wezterm.config_builder()

config = {
  automatically_reload_config = true,
  enable_tab_bar = false,
  initial_rows = 60,
  initial_cols = 160,
  window_close_confirmation = "NeverPrompt",
  window_decorations = "RESIZE",
  default_cursor_style = "BlinkingBar",
  color_scheme = "catppuccin-mocha",
  font = wezterm.font("MesloLGS Nerd Font Mono", {weight="Regular", stretch="Normal", style="Normal"}),
  font_size = 16,
  window_padding = {
    left = 10,
    right = 10,
    top = 10,
    bottom = 10,
  },
  window_background_opacity = 0.9,
  macos_window_background_blur = 10
}

return config
