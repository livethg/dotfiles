# Packages for programming languages
{
  pkgs,
  ...
}:

{
  # GCC/clang is added by default and so is libgc
  environment.systemPackages = with pkgs; [
    nodejs_24
    python314
    rustup
    texliveGUST
    zulu
  ];
}
