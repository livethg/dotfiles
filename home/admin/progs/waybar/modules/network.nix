{
  ...
}:

{
  programs.waybar = {
    settings = {
      main = {
        network = {
          format              = "{ifname}";
          format-wifi         = "{icon}   {essid}";
          format-ethernet     = "󰈀  {essid}";
          format-disconnected = "󰌙  disconnected";
          format-icons        = [
            "󰤯"
            "󰤟"
            "󰤢"
            "󰤥"
            "󰤨"
          ];
          tooltip-format = "󰇚 {bandwidthUpBytes}  󰕒 {bandwidthDownBytes}";

          min-length = 15;
          max-length = 15;
        };
      };
    };
  };
}
