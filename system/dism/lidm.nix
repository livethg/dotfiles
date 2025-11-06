# Configuration file for the lidm display manager
{
  ...
}:

{
  services.lidm.config = with config.lidm.keysEnum; {
    behavior = {
      timefmt = "%Y-%m-%d %H:%M:%S";
    };

    chars = {
      hb  = "\xe2\x94\x80";
      vb  = "\xe2\x94\x82";
      ctl = "\xe2\x94\x8b";
      ctr = "\xe2\x94\x90";
      cbl = "\xe2\x94\x94";
      cbr = "\xe2\x94\x98";
    };

    colors = {
      bg         = "48;2;28;28;36";
      fg         = "22;24;38;2;168;168;168";
      e_hostname = "38;2;196;165;112";
      e_date     = "38;2;144;144;144";
      e_header   = "4;38;2;114;133;162";
      e_user     = "38;2;211;137;88";
    };

    strings = {
      f_poweroff = "\xef\x80\x91 ";
      f_reboot   = "\xee\xab\x92 ";
      f_refresh  = "\xf3\xb0\x91\x93";
      e_user     = "\xee\xb4\xb5";
      e_passwd   = "\xef\x80\xa3";
      s_wayland  = "W";
      s_xorg     = "X";
      s_shell    = ">";
      opts_pre   = "[ ";
      opts_post  = " ]";
      ellipsis   = "...";
    };
  };
}
