{
  pkgs,
  colors,
  ...
}:

{
  home.file.".config/albert/config".text = import ./config.nix {};

  home.packages = with pkgs; [
    (
      let
        outPath   = "$out/share/albert/widgetsboxmodel/themes";
        themeFile = builtins.toFile "Default.qss" (
          import ./albert-theme.nix { inherit colors; }
        );
      in
      albert.overrideAttrs {
        preInstall = ''
          mkdir -p ${outPath}
          cp ${themeFile} ${outPath}/Default.qss
        '';
      }
    )
  ];
}
