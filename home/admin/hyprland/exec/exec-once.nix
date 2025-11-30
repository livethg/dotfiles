# File for single execution
{
 ...
}:

{
  wayland.windowManager.hyprland = {
    settings = {
      exec-once = [
        "clipse -listen"
        # TODO: Uncomment this when hypridle is configured
        # "hypridle"
        # TODO: Uncomment this when waybar is setup
        # "waybar"

        "hyprctl setcursor 'graphite-dark' 14"

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
