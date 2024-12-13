{ config, lib, pkgs, ... }: 
let 
  mod = "Mod4";
in {
  xsession.windowManager.i3 = {
    enable = true;
    package = pkgs.i3-gaps;
    config = {
      modifier = mod;
      defaultWorkspace = "workspace number 1";
      fonts = {
        names = [ "Ubuntu Mono" ];
        style = "Regular";
        size = 8.0;
      };

      gaps = {
        inner = 1;
        outer = 2;
      };
      startup = [
        { command = "xfce4-power-manager"; }
        { command = "pa-applet"; }
        { command = "feh --randomize --bg-fill ~/nix/assets/wall/"; }
        { command = "i3-back"; }
        { command = "fcitx5"; }
      ];
      keybindings = lib.mkOptionDefault {
        "${mod}+d" = "exec ${pkgs.rofi}/bin/rofi -show drun";
        "${mod}+w" = "exec ${pkgs.rofi}/bin/rofi -show window";
        "${mod}+q" = "kill";

        "${mod}+Shift+x" = ''mode "exit: [e]Suspend [s]Shutdown [r]Reboot"'';

        "${mod}+Return" = "exec ${pkgs.konsole}/bin/konsole";

        "${mod}+n" = "exec ${pkgs.networkmanager_dmenu}/bin/networkmanager_dmenu";

        "${mod}+Shift+q" = "exec i3-msg exit";

        # Audio
        "XF86AudioRaiseVolume" = "exec pactl set-sink-volume @DEFAULT_SINK@ +10%";
        "XF86AudioLowerVolume" = "exec pactl set-sink-volume @DEFAULT_SINK@ -10%";
        "XF86AudioMute" = "exec pactl set-sink-mute @DEFAULT_SINK@ toggle";
        "XF86AudioMicMute" = "exec pactl set-source-mute @DEFAULT_SOURCE@ toggle";

        "${mod}+t" = "layout tabbed";

        # Apps
        "${mod}+b" = "exec ${pkgs.firefox}/bin/firefox";
        "${mod}+Shift+f" = "exec ${pkgs.xfce.thunar}/bin/thunar";
        "${mod}+Shift+p" = "exec ${pkgs.keepassxc}/bin/keepassxc";
        "${mod}+p" = "exec xdg-open ~/Downloads/planning.pdf";
        "Print" = "exec ${pkgs.flameshot}/bin/flameshot gui";

        # Focus
        "${mod}+h" = "focus left";
        "${mod}+j" = "focus down";
        "${mod}+k" = "focus up";
        "${mod}+l" = "focus right";

        # Move
        "${mod}+Shift+h" = "move left";
        "${mod}+Shift+j" = "move down";
        "${mod}+Shift+k" = "move up";
        "${mod}+Shift+l" = "move right";

        "${mod}+x" = "exec bash ~/nix/assets/lock.sh";
        "${mod}+Shift+w" = "exec feh --randomize --bg-fill ~/nix/assets/wall/";

        "${mod}+Tab" = "[con_mark=_back] focus";

      };
      modes = {
        resize = {
          "j" = "resize grow height 10 px or 10 ppt";
          Escape = "mode default";
          "h" = "resize shrink width 10 px or 10 ppt";
          Return = "mode default";
          "${mod}+r" = "mode default";
          "l" = "resize grow width 10 px or 10 ppt";
          "k" = "resize shrink height 10 px or 10 ppt";
        };
        "exit: [e]Suspend [s]Shutdown [r]Reboot" = {
          "e" = "exec systemctl suspend";
          "s" = "exec shutdown -h 0";
          "r" = "exec reboot";
          Return = "mode default";
          Escape = "mode default";
          "${mod}+Shitft+x" = "mode default";
        };
      };



      colors.focused = {
        background = "#285577";
        border= "#020063";
        childBorder = "#285577";
        indicator = "#2e9ef4";
        text = "#ffffff";
      };
      # colors.focusedInactive.border= "#285577";
      colors.unfocused={
        background = "#222222";
        border= "#4c7899";
        childBorder = "#222222";
        indicator = "#292d2e";
        text = "#888888";
      };
      floating.border = 1;
      floating.titlebar = false;
      window = { 
        titlebar = false;
        border = 1;
        commands = [
        {
          command = "floating enable";
          criteria.class="kcalc";	
        }
        {
          command = "floating enable";
          criteria.class="Zathura";	
        }
      ];
      };
      bars = [
        {
          position = "top";
          statusCommand = "i3blocks -c ~/.config/i3blocks/bar";
          # statusCommand = "i3status";
          extraConfig = ''
                separator_symbol "|"
                padding 2px 0
                workspace_min_width 20
          '';
          colors ={
            background= "#222333";
            statusline= "#ffffff";
            separator= "#ffffff";

            focusedWorkspace = { background = "#4c7899"; border =  "#020063"; text = "#ffffff"; };
            activeWorkspace =  { background = "#333333"; border = "#5f676a"; text = "#ffffff"; };
            inactiveWorkspace = { background = "#192331"; border =  "#111111"; text = "#888888"; };
            urgentWorkspace =  { background = "#D32F2F"; border =  "#900000"; text = "#ffffff"; };
            bindingMode = { background = "#D32F2F"; border =  "#900000"; text = "#ffffff"; };
          };
          trayOutput = "primary";
          trayPadding = 5;
          #workspace_min_width = 50;
          fonts = {
            names = [ "GeistMono Nerd Font" ];
            style = "UltraBlack";
            size = 8.10;
          };
        }
      ];
    };
  };
  imports = [ 
    ./i3status.nix
    ./i3blocks.nix        
  ];
}
