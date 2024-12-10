{
  programs.i3status={
    enable = true;
    enableDefault = false;
    general = {
      output_format = "i3bar";
      colors = false;
      interval = 5;
      color_good = "#aaff00";
      color_degraded = "#00dddd";
      color_bad = "#ff8800";
      markup = "pango";
    };
  };
  modules = {
    "volume master" = {
      position = 1;
      settings = {
        format = "<span color='#00BFA5' size='large'> </span> <span bgcolor='#00BFA5' foreground='black'> %volume </span>";
        format_muted = "<span color='#D32F2F'> %volume</span>";
        device = "pulse:1";
        mixer = "Master";
        mixer_idx = 0;
      };
    };
    "disk /" = {
      position = 2;
      settings = {
        format = "<span color='#27AE60' size='large'> </span> <span bgcolor='#27AE60' foreground='black'> %avail </span>";
      };
    };
  };
}
