{
  pkgs,
  ...
}:

{
  programs.neovim = {
    enable        = true;
    defaultEditor = true;

    viAlias  = true;
    vimAlias = true;

    withNodeJs = true;

    plugins = with pkgs.vimPlugins; [
      coc-cmake
      coc-clangd
      coc-css
      coc-diagnostic
      coc-docker
      coc-explorer
      coc-fzf
      coc-git
      coc-html
      coc-highlight
      coc-java
      coc-json
      coc-lists
      coc-lua
      coc-markdownlint
      coc-nvim
      coc-prettier
      coc-pyright
      coc-rust-analyzer
      coc-snippets
      coc-sh
      coc-spell-checker
      coc-texlab
      coc-tsserver
      coc-toml
      coc-vimlsp
      coc-yaml
      diffview-nvim
      nvim-treesitter
      telescope-coc-nvim
      tokyonight-nvim
    ] ++ (
      with pkgs; [
        nixd
      ]
    );

    coc = {
      enable   = true;
      settings = {
        "workspace.rootPatterns"            = [ ".git" ".hg" ".env" ];
        "explorer.icon.enableNerdfont"      = true;
        "explorer.previewAction.onHover"    = "labeling";
        "explorer.file.column.indent.chars" = "│ ";
        "explorer.file.child.template"      = "[git | 2] [selection | clip | 1] [indent][icon | 1] [diagnosticError & 1][filename omitCenter 1][modified] [readonly]";
      };
    };

    extraLuaConfig = builtins.readFile ./init.lua;
  };
}
