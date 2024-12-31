{ pkgs, ... }:

{
  services.picom = {
    enable = true;
    package = pkgs.picom;

    fade = true;
    inactiveOpacity = 0.8;
    activeOpacity = 1.0;

    opacityRules = [ 
      "100:class_g *?= 'Rofi'"
      "100:class_g *?= 'i3lock'"
    ];

    settings = {
      corner-radius = 16;
      rounded-corners-exclude = [
        "class_i = 'bar-0'"
      ];
    };
  };
}
