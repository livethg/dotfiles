{
  ...
}:

{
  wayland.windowManager.hyprland = {
    settings = {
      binde = [
        "$modOpt1, right, resizeactive,  10   0"
        "$modOpt1, left,  resizeactive, -10   0"
        "$modOpt1, down,  resizeactive,  0   10"
        "$modOpt1, up,    resizeactive,  0  -10"
      ];
    };
  };
}
