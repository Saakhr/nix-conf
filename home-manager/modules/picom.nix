{ pkgs, ... }:

{
  services.picom = {
    enable = true;
    package = pkgs.picom;

    fade = true;
    inactiveOpacity = 0.8;
    activeOpacity = 1.0;

    #opacityRule = [ "100:class_g *?= 'Rofi'" ];

#    extraOptions = ''
#      corner-radius = 8;
 #     rounded-corners-exclude = [
  #      "class_i = 'polybar'"
   #   ];
 #   '';
  };
}
