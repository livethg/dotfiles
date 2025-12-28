{
  ...
}:

{
  programs.waybar = {
    settings = {
      main = {
        "hyprland/workspaces" = {
          format          = "{windows} ";
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
            "title<.*btop.*>"                         = "󰙵";
            "title<.*vim.*>"                          = "";
            "title<.*.rs>"                            = "";
            "title<.*.txt>"                           = "";
            "title<.*.js>"                            = "";
            "title<.*.ts>"                            = "";
            "title<.*.go>"                            = "";
            "title<.*.jsx>"                           = "";
            "title<.*.swift>"                         = "";
            "title<.*.tex>"                           = "";
            "title<.*.php>"                           = "";
            "title<.*.html>"                          = "";
            "title<.*.css>"                           = "";
            "title<.*.c>"                             = "";
            "title<.*.cpp>"                           = "";
            "title<.*.cxx>"                           = "";
            "title<.*.h>"                             = "";
            "title<.*.hpp>"                           = "";
            "title<.*.json>"                          = "";
            "title<.*.nix>"                           = "󱄅";
            "title<.*.java>"                          = "";
            "title<.*.rb>"                            = "";
            "title<.*.asm>"                           = "";
            "title<.*.wasm>"                          = "";
            "title<.*.py>"                            = "";
            "title<.*.lua>"                           = "";
            "title<.*.bun>"                           = "";
            "title<.*.vue>"                           = "󰡄";
            "title<.*.sh>"                            = "";
            "title<.*.hs>"                            = "";
            "title<.*.md>"                            = "";
            "class<kitty>"                            = "";
          };
        };
      };
    };
  };
}
