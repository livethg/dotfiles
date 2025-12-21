{
  pkgs,
  ...
}:

{
  # Todo: add hyprscrolling, once stable
  imports = [
    ./hyprexpo.nix
  ];

  wayland.windowManager.hyprland = {
    plugins = [
      pkgs.hyprlandPlugins.hyprexpo
    ];
  };
}
