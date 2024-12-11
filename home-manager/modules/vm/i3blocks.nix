{lib, ...}:{
  programs.i3blocks = {
    enable = true;
    bars = {
      top = {
        time = {
      command = "date +%r";
      interval = 1;
    };
    # Make sure this block comes after the time block
    date = lib.hm.dag.entryAfter [ "time" ] {
      command = "date +%d";
      interval = 5;
    };
    # And this block after the example block
    example = lib.hm.dag.entryAfter [ "date" ] {
      command = "echo hi $(date +%s)";
      interval = 3;
    };
      };
    };
  };
}
