{
  ...
}:

{
  wayland.windowManager.hyprland = {
    extraConfig = ''
      plugin:dynamic-cursors {
        enabled   = true
        mode      = stretch
        threshold = 2

        stretch {
          limit    = 5000
          function = linear
          window   = 200
        }

        shake {
          enabled = false
        }

        hyprcursor {
          enabled    = true
          nearest    = true
          resolution = -1
          fallback   = clientside
        }
      }
    '';
  };
}
