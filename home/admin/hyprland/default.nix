# Hyprland settings
{
  pkgs,
  ...
}:

{
  imports = [
    ./inputs
    ./binds
  ];

  wayland.windowManager.hyprland = {
    enable = true;
    package = pkgs.hyprland;
    xwayland.enable = true;

    settings = {
      bind = [
        "SUPER, Q, killactive"
        "SUPER, T, exec, kitty"
      ];
    };
  };
}
