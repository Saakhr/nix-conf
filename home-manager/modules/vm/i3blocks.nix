{lib, ...}:{
  programs.i3blocks = {
    enable = true;
    bars = {
      bar = {
        # Make sure this block comes after the time block
        # title = {
        #   interval = "persist";
        #   command = "xtitle -s";
        # };
        # time_label={
        #   full_text=" ";
        # };
        time_z = lib.hm.dag.entryAfter [ "date" ]{
          label=" ";
          #min_height = "80%";
          command = "echo ' '$(date +%r)' '";
          # background = "#00dddd";
          # color = "#000000";
          interval = 1;
        };
        date = lib.hm.dag.entryAfter [ "hijri" ]{
          label="  ";
          command = "echo $(date '+%a %d-%m-%Y')";
          interval = 10;
        };
        hijri = lib.hm.dag.entryAfter [ "battery" ]{
          label=" ";
          command = "bash ~/nix/assets/Hijriscript.sh";
          interval = 10;
        };
        battery = lib.hm.dag.entryAfter [ "cpu_usage" ]{
          command = ''bash ~/nix/assets/power.sh'';
          # color = "#FFFFFF";
          interval = 10;
        };
        # loadop = lib.hm.dag.entryAfter [ "cpu_usage" ] {
        #   label = "  ";
        #   command = "uptime | awk -F'average: ' '{print $2}' | awk '{print $1}' | tr -d ',' ";
        #   interval = 10;
        # };
        cpu_usage = lib.hm.dag.entryAfter [ "memoo" ] {
          label = "  ";
          command = "bash ~/nix/assets/cpu.sh";
          interval = 10;
        };
        memoo = lib.hm.dag.entryAfter [ "freedisk" ] {
          label = "  ";
          command = "free -h | grep Mem | awk '{print $3}'";
          interval = 10;
        };
        freedisk = lib.hm.dag.entryAfter [ "wired" ]{
          label = "  ";
          command = "df -h / | tail -1 | awk '{print $4}'";
          interval = 30;
        };
        wired =  lib.hm.dag.entryAfter [ "wireless" ]{
          command = "bash ~/nix/assets/wired.sh";
          interval = 5;
        };

        wireless =  lib.hm.dag.entryAfter [ "dsadas" ] {
          command = "bash ~/nix/assets/wireless.sh";
          interval = 5;
        };


      };
    };
  };
}
