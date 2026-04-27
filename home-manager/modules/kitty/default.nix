{ pkgs, ... }:

{
  programs.kitty = {
    enable = true;

    # --- Font settings ---
    font = {
      name = "SauceCodePro Nerd Font";
      size = 12.0;
    };

    settings = {
      # --- Terminal opacity and blur ---
      background_opacity = "0.8";
      background_blur = 32;

      # --- Terminal bell ---
      enable_audio_bell = "no";

      # --- OS specific tweaks ---
      linux_display_server = "wayland";
      wayland_titlebar_color = "background";

      # --- Cursor customization ---
      cursor_shape = "block";
      cursor_blink_interval = 0;
      cursor_stop_blinking_after = 0;
      shell_integration = "no-cursor";

      # --- Scrollback ---
      scrollback_lines = 5000;
      wheel_scroll_multiplier = "3.0";

      # --- Mouse ---
      mouse_hide_wait = -1;

      # --- Window layout ---
      remember_window_size = "no";
      initial_window_width = 1200;
      initial_window_height = 750;
      window_border_width = "1.5pt";
      enabled_layouts = "tall";
      window_padding_width = 0;
      window_margin_width = 2;
      hide_window_decorations = "no";

      # --- Tab bar customization ---
      tab_bar_style = "powerline";
      tab_powerline_style = "slanted";
      tab_bar_edge = "bottom";
      tab_bar_align = "left";
      active_tab_font_style = "bold";
      inactive_tab_font_style = "normal";
    };

    # --- Keybindings (map) ---
    keybindings = {
      # Font size management
      "ctrl+shift+backspace" = "change_font_size all 0";
      # Window management
      "ctrl+shift+enter" = "new_window";
      "ctrl+shift+]" = "next_window";
      "ctrl+shift+[" = "previous_window";
      # Layout management
      "ctrl+shift+l" = "next_layout";
      "ctrl+alt+r" = "goto_layout tall";
      "ctrl+alt+s" = "goto_layout stack";
    };

    # --- Theme Inclusion ---
    extraConfig = ''
      # Font auto variants
      bold_font          auto
      italic_font        auto
      bold_italic_font   auto

      # Include external theme
      include theme.conf
    '';
  };

  xdg.configFile."kitty/theme.conf".source = ./themes/GruvBox_DarkHard.conf;
}

