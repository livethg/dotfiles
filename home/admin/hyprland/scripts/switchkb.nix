{
  ...
}:

let
  kbscript = ".config/switchkb.sh";
in
{
  home.file = {
    ${kbscript}.text = ''
      keyboard="at-translated-set-2-keyboard"
      hyprctl switchxkblayout $keyboard next
      value=$(hyprctl devices | grep -i $keyboard -A 2 | tail -n1 | cut -f4 -d' ')
      # Because of nix scripts, this is necessary instead of an array
      type=
      case $value in
        0)type="colemak";;
        1)type="us";;
        2)type="ca";;
        *)type="unknown";;
      esac
      dunstify "Switched to keyboard $type"
    '';
  };

  wayland.windowManager.hyprland = {
    settings = {
      bind = [
        "$mod, space, exec, sh ~/${kbscript}"
      ];
    };
  };
}
