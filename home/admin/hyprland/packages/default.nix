{
  pkgs,
  home-manager,
  ...
}:

{
  home.packages = with pkgs; [
    hyperfine
    hyprland
    hyprlock
  ];
}
