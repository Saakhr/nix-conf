{ pkgs, ... }: {
  environment.systemPackages = with pkgs; [

    # Desktop
    firefox
    gparted
    telegram-desktop
    mpv
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
    qdirstat

    # Coding stuff
    gnumake
    cmake
    gcc
    gh
    go


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
    scrot
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
    swww
    openssl
    ripgrep
    lazygit
    xclip
    bluez
    bluez-tools
    fzf
    vim 
    zoxide
    wine
    pa_applet
    piper-tts

    # Class
    #pkgs-stable.android-studio-full
    scilab-bin
    #pkgs-stable.vscode

    # GUI utils
    feh
    kcalc
    mupdf
    zathura
    fcitx5
    libsForQt5.fcitx5-configtool
    networkmanagerapplet

    # Wm
    i3status
    i3-back

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
