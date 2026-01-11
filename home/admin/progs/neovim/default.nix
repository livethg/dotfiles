{
  ...
}:

{
  programs.neovim = {
    enable        = true;
    defaultEditor = true;

    viAlias  = true;
    vimAlias = true;

    coc = {
      enable = true;
    };

    extraLuaConfig = builtins.readFile ./init.lua;
  };
}

