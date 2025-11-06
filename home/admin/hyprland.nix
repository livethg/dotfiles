{
  pkgs,
  ...
}:

{
  wayland.windowManager.hyprland = {
    enable = true;
    settings = {
      bind = [
        "SUPER, Q, exec, killactive"
        "SUPER, T, exec, kitty"
      ];
    };
  };
}
