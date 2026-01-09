{
  pkgs,
  ...
}:

let
  lib = pkgs.lib;
in
{
  programs.zsh = {
    enable = true;

    history  = {
      expireDuplicatesFirst = true;
      extended              = true;
    };

    sessionVariables = {
      EDITOR    = "nvim";
      SHELL     = "zsh";
    };

    oh-my-zsh = {
      enable  = true;
      theme   = "crcandy";
      plugins = [
        "aliases"
        "docker"
        "emoji"
        "eza"
        "fancy-ctrl-z"
        "git"
        "procs"
        "rust"
        "wd"
        "zoxide"
      ];
    };

    syntaxHighlighting = {
      enable = true;
    };

    shellAliases = {
      # Is expanded anywhere on the line, not just at the beggining
      nrt  = "sudo nixos-rebuild test --flake .#admin";
      nrs  = "sudo nixos-rebuild switch --flake .#admin";
      nrda = "sudo nixos-rebuild dry-activate --flake .#admin";
      nrlg = "nixos-rebuild list-generations";
      nr   = "sudo nixos-rebuild";
      zs   = ''
      TARGD="$(realpath `fzf`)"
      if [ -d "$TARGD" ]; then
        z "$TARGD";
      else
        z "$(dirname $TARGD)";
      fi
      unset TARGD;'';
    };

    dirHashes = {
      docs = "~/Documents";
    };
  };
}
