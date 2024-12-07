{ config, lib, pkgs, ... }: 

let 
  mod = "Mod4";
in {
	xsession.windowManager.i3 = {
		enable = true;
		package = pkgs.i3-gaps;
		config = {
			modifier = mod;
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
				{ command = "picom"; }
				{ command = "xfce4-power-manager"; }
				{ command = "i3-back"; }
				{ command = "fcitx5"; }
			];
			keybindings = lib.mkOptionDefault {
				"${mod}+d" = "exec ${pkgs.dmenu}/bin/dmenu_run";
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
			window.commands= [
			{
			command = "floating enable";
			criteria.class="kcalc";	
			}
			{
			command = "floating enable";
			criteria.class="Zathura";	
			}
			];

			bars = [
			{
				position = "bottom";
				statusCommand = "${pkgs.i3status}/bin/i3status";
			}
			];
		};
	};
	      }
