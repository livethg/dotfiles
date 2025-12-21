{
  ...
}:

{
  # Todo: this needs updating with hyprscroll
  # waiting for github stable branch before fixing
  # this setup
  wayland.windowManager.hyprland = {
    extraConfig = ''
      plugin {
        hyprexpo {
          workspace_method = first 1
        }
      }
    '';
  };
}
