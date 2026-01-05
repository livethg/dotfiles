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

  wayland.windowManager.hyprland = {
    settings = {
      windowrule = [
        "animation popin, class:clipse"
        "float,           class:clipse"
        "size 622 652,    class:clipse"
        "pin,             class:clipse"

        "animation popin, title:Albert"
        "float,           title:Albert"
        "pin,             title:Albert"
        "noblur,          title:Albert"
        "noshadow,        title:Albert"
        "nodim,           title:Albert"
        "dimaround off,   title:Albert"
        "bordersize 0,    title:Albert"

        # Bug fixes
        "suppressevent maximize, class:.*"
        "nofocus, class:^$, title:^$, xwayland:1, floating:1, fullscreen:0, pinned:0"
      ];
    };
  };
}
