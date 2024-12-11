{ pkgs, ... }:{
  home.packages = [ pkgs.dconf ];
  dconf = {
    enable = true;
    settings = {
      "org/gnome/desktop/interface" = {
         color-scheme = "prefer-dark";
      };
    };
  };
  gtk = {
    enable = true;
    theme = {
      name = "Orchis-Red-Dark";
      package = pkgs.orchis-theme;
    };
    iconTheme = {
      name = "Papirus-Dark";
      package = pkgs.adwaita-icon-theme;
    };
  };
  home.sessionVariables.GTK_THEME = "Orchis-Red-Dark";
}
