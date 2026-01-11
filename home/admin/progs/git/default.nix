{
  ...
}:

{
  programs.git = {
    enable = true;

    includes = [
     {
       path = "~/nixos/home/admin/progs/git/git-private.inc";
     }
    ];

    signing = {
      format        = "ssh";

      # TODO: Change this to create a custom program that
      # selects a key instead of this magic number
      #
      # See: gpg.ssh.defaultKeyCommand
      key           = "key::ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIBqkKbFjGIO6XeN47MkVB64qJ6kIv6L1OhsfduCYNZKd";
      signByDefault = true;
    };

    settings = {
      diff = {
        tool    = "kitty";
        guitool = "kitty.gui";
      };

      difftool = {
        prompt        = false;
        trustExitCode = true;
      };

      "difftool \"kitty\"" = {
        cmd = "kitten diff $LOCAL $REMOTE";
      };

      "difftool \"kitty.gui\"" = {
        cmd = "kitten diff $LOCAL $REMOTE";
      };
    };
  };
}
