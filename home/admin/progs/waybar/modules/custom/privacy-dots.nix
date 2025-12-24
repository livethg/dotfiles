{
  pkgs,
  ...
}:

let
  privacyDerivation = pkgs.stdenv.mkDerivation {
    pname   = "waybar-privacy-dots";
    version = "2025-08-17";

    src = pkgs.fetchFromGitHub {
      owner  = "alibaghernejad";
      repo   = "waybar-privacy-dots";
      rev    = "ff813553f92a50c62b6be22039898fa5be246fd0";
      sha256 = "sha256-FkoTzcpsraXj0DU0NztYwM/ynqjwz2ORCAgk8qqY+O0=";
    };

    installPhase = ''
      runHook preInstall

      cp -r $src $out

      runHook postInstall
    '';
  };
in
{
  programs.waybar = {
    settings = {
      main = {
        "custom/privacydots" = {
          escape      = false;
          exec        = "${privacyDerivation}/config/waybar/scripts/privacydots.sh";
          format      = "{text}";
          interval    = 3;
          markup      = "pango";
          return-type = "json";
          tooltip     = false;
        };
      };
    };
  };
}
