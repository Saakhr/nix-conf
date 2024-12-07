{ pkgs, ... }: {
   environment.systemPackages = with pkgs; [
     #Desktop
     firefox
     gparted
     telegram-desktop
     mpv
     xfce.thunar
     ungoogled-chromium
     gedit
     syncthing
     virtualbox
     konsole
     rofi
     dmenu
     networkmanager_dmenu

     # Coding stuff
     gnumake
     gcc
     go


    # CLI utils
     neofetch
     file
     tree
     wget
     git
     fastfetch
     htop
     nix-index
     unzip
     scrot
     ffmpeg
     exa
     tmux
     light
     lux
     mediainfo
     ranger
     zram-generator
     cava
     zip
     ntfs3g
     yt-dlp
     brightnessctl
     swww
     openssl
     ripgrep
     lazygit
     bluez
     bluez-tools
     fzf
     vim 
     zoxide

     # GUI utils
     feh
     kcalc
     mupdf
     zathura
     fcitx5

     #vm
     i3status
     i3-back

     #sound
     pavucontrol
     pulseaudio

     #misc
     home-manager
     flameshot
     xfce.xfce4-power-manager
   ];
   fonts.packages = with pkgs; [
    jetbrains-mono
    geist-font
    noto-fonts
    noto-fonts-emoji
    ubuntu-sans
    ubuntu-classic
    twemoji-color-font
    font-awesome
    powerline-fonts
    powerline-symbols
    nerd-fonts.geist-mono
  ];
}
