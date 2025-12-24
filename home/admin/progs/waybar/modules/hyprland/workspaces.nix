{
  ...
}:

{
  programs.waybar = {
    settings = {
      main = {
        "hyprland/workspaces" = {
          format          = "{icon} {windows}";
          move-to-monitor = true;
          sort-by         = "number";

          window-rewrite-default = "";
          window-rewrite = {
            "title<.*atlassian.*>"                    = "󰠄";
            "title<.*docker.*>"                       = "";
            "title<.*github.*>"                       = "";
            "title<.*gitlab.*>"                       = "";
            "title<.*instagram.*>"                    = "";
            "title<.*jira.*>"                         = "";
            "title<.*twitch.*>"                       = "";
            "title<.*reddit.*>"                       = "󰑍";
            "title<.*youtube.*>"                      = "";
            "class<app.zen_browser.zen>"              = "󰊷";
            "class<nuclear>"                          = "";
            "class<firefox>"                          = "󰈹";
            "class<gimp>"                             = "";
            "class<io.github.Qalculate.qalculate-qt>" = "󰪚";
            "class<com.github.xournalpp.xournalpp>"   = "󱦹";
            "class<libreoffice-base>"                 = "";
            "class<libreoffice-calc>"                 = "";
            "class<libreoffice-draw>"                 = "";
            "class<libreoffice-impress>"              = "";
            "class<libreoffice-math>"                 = "";
            "class<libreoffice-startcenter>"          = "";
            "class<libreoffice-writer>"               = "";
            "class<org.qt-project.qtcreator>"         = "";
            "class<steam>"                            = "󰓓";
            "class<texstudio>"                        = "";
            "class<tor>"                              = "";
            "class<thunderbird>"                      = "";
            "class<vesktop>"                          = "";
            "class<kitty>"                            = "";
            "class<kitty> title<.*vim.*>"             = "";
            "class<kitty> title<.*.rs>"               = "";
            "class<kitty> title<.*.txt>"              = "";
            "class<kitty> title<.*.js>"               = "";
            "class<kitty> title<.*.ts>"               = "";
            "class<kitty> title<.*.go>"               = "";
            "class<kitty> title<.*.jsx>"              = "";
            "class<kitty> title<.*.swift>"            = "";
            "class<kitty> title<.*.tex>"              = "";
            "class<kitty> title<.*.php>"              = "";
            "class<kitty> title<.*.html>"             = "";
            "class<kitty> title<.*.css>"              = "";
            "class<kitty> title<.*.c>"                = "";
            "class<kitty> title<.*.cpp>"              = "";
            "class<kitty> title<.*.cxx>"              = "";
            "class<kitty> title<.*.h>"                = "";
            "class<kitty> title<.*.hpp>"              = "";
            "class<kitty> title<.*.json>"             = "";
            "class<kitty> title<.*.nix>"              = "󱄅";
            "class<kitty> title<.*.java>"             = "";
            "class<kitty> title<.*.rb>"               = "";
            "class<kitty> title<.*.asm>"              = "";
            "class<kitty> title<.*.wasm>"             = "";
            "class<kitty> title<.*.py>"               = "";
            "class<kitty> title<.*.lua>"              = "";
            "class<kitty> title<.*.bun>"              = "";
            "class<kitty> title<.*.vue>"              = "󰡄";
            "class<kitty> title<.*.sh>"               = "";
            "class<kitty> title<.*.hs>"               = "";
            "class<kitty> title<.*.md>"               = "";
          };
        };
      };
    };
  };
}
