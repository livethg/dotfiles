{
  pkgs,
  ...
}:

{
  # Todo: add hyprscrolling, once stable
  imports = [
    ./hyprexpo.nix
    ./hypr-dynamic-cursors.nix
  ];

  wayland.windowManager.hyprland = {
    plugins = [
      pkgs.hyprlandPlugins.hyprexpo
      pkgs.hyprlandPlugins.hypr-dynamic-cursors
    ];
  };
}
