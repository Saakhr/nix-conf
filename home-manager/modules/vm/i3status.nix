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
    modules = {
      "volume master" = {
        position = 1;
        settings = {
          format = "<span color='#00BFA5' size='large'> </span> <span bgcolor='#00BFA5' foreground='black'> %volume </span>";
          format_muted = "<span color='#D32F2F'> %volume</span>";
          device = "pulse:0";
          mixer = "Master";
          mixer_idx = 0;
        };
      };
      "wireless wlp3s0" = {
        position = 2;
        settings = {
          format_up = "<span color='#3498DB' size='large'> </span> <span bgcolor='#3498DB' foreground='black'>%quality %essid %ip </span>";
          format_down = "<span color='#D32F2F'>  Offline</span>";
        };
      };
      "ethernet eth0" = { 
        position = 3;
        settings = {
          # if you use %speed, i3status requires root privileges
          format_up = "<span color='#3498DB' size='large'> </span><span bgcolor='#3498DB'> %ip </span>";
          format_down = "<span color='#D32F2F'> </span>";
        };
      };
      "disk /" = {
        position = 4;
        settings = {
          format = "<span color='#27ae60' size='large'> </span> <span bgcolor='#27ae60' foreground='black'> %avail </span>";
        };
      };
      "memory" = { 
        position = 5;
        settings = {
          format = "<span color='#8E44AD' size='large'> </span> <span bgcolor='#8E44AD' foreground='white'> %used </span>";
          threshold_degraded = "10%";
          format_degraded = "MEMORY: %free";
        };
      };

      "cpu_temperature 0" = {
        position = 6;
        settings = {
          format = "<span color='#D35400' size='large'>󱠇 </span> <span bgcolor='#D35400' foreground='white'> %degrees °C </span>";
          max_threshold = 50;
        };
      };
      "cpu_usage" = { 
        position = 7;
        settings= {
          format = "<span color='#ecfc07' size='large'> </span><span bgcolor='#ecfc07' foreground='black'> %usage </span>";
        };
      };
      "load" = {
        position = 8;
        settings = {
          format = "<span color='#fc0d05' size='large'> </span><span bgcolor='#fc0d05' foreground='white'> %1min </span>";
          max_threshold = 5;
        };
      };
      "battery 0" = { 
        position = 9;
        settings = {
          format = "<span color='#34e0bf' size='large'>%status</span> <span bgcolor='#34e0bf' foreground='black'> %percentage %remaining </span>";
          format_down = "No battery";
          status_chr = "⚡ ";
          status_bat = " ";
          status_unk = "? UNK";
          status_full = "󰂄 FULL";
          path = "/sys/class/power_supply/BAT%d/uevent";
          low_threshold = 10;
          last_full_capacity = true;
        };
      };

      "tztime localdate" = { 
        position = 10;
        settings = {
          format = "<span color='#F39C12' size='large'> </span><span bgcolor='#F39C12' foreground='black'> %a %d-%m-%Y </span>";
        };
      };

      "tztime localtime" = { 
        position = 11;
        settings = {
          format = "<span color='#00dddd' size='large'> </span><span bgcolor='#00dddd' foreground='black'> %I:%M:%S %p </span>";
        };
      };

      # "run_watch DHCP" = { 
      #   position = 9;
      #   settings=
      #     {
      #       pidfile = "/var/run/dhclient*.pid";
      #     };
      # };


    };
  };
}
