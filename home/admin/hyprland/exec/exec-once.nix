# File for single execution
{
 ...
}:

{
  wayland.windowManager.hyprland = {
    settings = {
      exec-once = [
        # Utils
        "clipse -listen"
        "udiskie"
        "hypridle"
        # "waybar"

        # Hyprland cursor funnies
        "hyprctl setcursor 'oreo_white_cursors' 18"

        # First workspace
        "[workspace 1 silent] $status"

        # Second workspace
        "[workspace 2 silent] $browser"

        # Third workspace
        "[workspace 3 silent] $term"
      ];
    };
  };
}
