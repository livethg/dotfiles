{
  pkgs,
  ...
}:

{
  wayland.windowManager.hyprland = {
    settings = {
      decoration = {
        active_opacity     = 0.9;
        fullscreen_opacity = 0.8;
        inactive_opacity   = 0.8;

        dim_inactive = true;
        dim_strength = 0.25;

        rounding       = 17;
        rounding_power = 1;
      };
    };
  };
}
