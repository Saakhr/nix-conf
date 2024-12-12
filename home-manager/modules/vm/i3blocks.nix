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
        date = {
          position = 1;
          command = "echo $(date '+%a %d-%m-%Y')";
          interval = 3;
        };
        # time_label={
        #   position = 2;
        #   full_text=" ";
        # };
        time = {
          label=" ";
          position = 3;
          #min_height = "80%";
          command = "echo ' '$(date +%r)' '";
          background = "#00dddd";
          color = "#000000";
          interval = 1;
        };
      };
    };
  };
}
