{
  pkgs,
  ...
}:

{
  home.packages = with pkgs; [
    (
      let
        outPath   = "$out/share/albert/widgetsboxmodel/themes";
        themeFile = ./Default.qss;
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
