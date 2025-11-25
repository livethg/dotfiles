# Rules for windows
{
  pkgs,
  lib,
  home-manager,
  ...
}:

rec {
  imports = [
  ];

  services.flameshot.enable = (pkgs.callPackage ../../progs/flameshot/default.nix {}).services.flameshot.enable;

  wayland.windowManager.hyprland = {
    settings = {
      windowrule = [
        # Clipboard
        "float, class:(clipse)"
        "size 622 652, class:(clipse)"

        # Bug fixes
        "suppressevent maximize, class:.*"
        "nofocus, class:^$, title:^$, xwayland:1, floating:1, fullscreen:0, pinned:0"
      ] ++ (
        lib.optionals (services.flameshot.enable) [
          # Screencapture
          "float,          title:^(flameshot)$"
          "move 0 0,       title:^(flameshot)$"
          "noanim,         title:^(flameshot)$"
          "pin,            title:^(flameshot)$"
          "monitor 1,      title:^(flameshot)$"
        ]
      );
    };
  };
}
