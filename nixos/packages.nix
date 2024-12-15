{ pkgs, ... }: {
  environment.systemPackages = with pkgs; [

    # Desktop
    firefox
    gparted
    telegram-desktop
    mpv
    vlc
    xfce.thunar
    xarchiver
    ungoogled-chromium
    gedit
    syncthing
    keepassxc
    konsole
    rofi
    dmenu
    networkmanager_dmenu
    libreoffice
    webtorrent_desktop
    qbittorrent
    qdirstat

    # Coding stuff
    gnumake
    cmake
    gcc
    gh
    go
    python312


    # CLI utils
    neofetch
    file
    auto-cpufreq
    tree
    wget
    git
    fastfetch
    htop
    nix-index
    unzip
    p7zip
    scrot
    imagemagick
    eza
    ffmpeg
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
    openssl
    alsa-utils
    lm_sensors
    pamixer
    acpi
    ripgrep
    lazygit
    xclip
    bluez
    jq
    iw
    postgresql
    mariadb
    xtitle
    bluez-tools
    fzf
    vim 
    zoxide
    wine
    pa_applet
    piper-tts
    vnstat
    sysstat

    # Class
    scilab-bin
    php

    # GUI utils
    feh
    kcalc
    mupdf
    zathura
    gucharmap
    fcitx5
    libsForQt5.fcitx5-configtool
    networkmanagerapplet
    lxappearance

    # Wm
    i3status
    i3-back
    i3lock-color

    # Sound
    pavucontrol
    pulseaudio

    # Misc
    home-manager
    flameshot
    xfce.xfce4-power-manager
    libsForQt5.qtstyleplugin-kvantum
    libsForQt5.qt5ct
    papirus-nord
    glib
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
