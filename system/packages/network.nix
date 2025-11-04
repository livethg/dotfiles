# Network management derivations
{
  pkgs,
  ...
}:

{
  environment.systemPackages = with pkgs; [
    bmon
    dnsutils
    iftop
    librespeed-cli
    mtr
    nmap
    socat
    sshfs
    wget
    wirelesstools
  ];
}
