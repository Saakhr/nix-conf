{ config, pkgs, lib, ... }: {

  #plugin download script
  home.activation.cloneZshPlugins = lib.mkAfter ''

    # Clone zsh-history-substring-search if not already cloned
    if [ ! -d "${config.home.homeDirectory}/.oh-my-zsh/custom/plugins/zsh-history-substring-search" ]; then
    ${pkgs.git}/bin/git clone https://github.com/zsh-users/zsh-history-substring-search "${config.home.homeDirectory}/.oh-my-zsh/custom/plugins/zsh-history-substring-search"
    fi

    # Clone zsh-you-should-use if not already cloned
    if [ ! -d "${config.home.homeDirectory}/.oh-my-zsh/custom/plugins/you-should-use" ]; then
    ${pkgs.git}/bin/git clone https://github.com/MichaelAquilina/zsh-you-should-use.git "${config.home.homeDirectory}/.oh-my-zsh/custom/plugins/you-should-use"
    fi

    # Clone rofi themes if not already cloned
    if [ ! -d "${config.home.homeDirectory}/.config/rofi/theme" ]; then
      ${pkgs.git}/bin/git clone https://github.com/newmanls/rofi-themes-collection.git "${config.home.homeDirectory}/.config/rofi/theme"
    fi

    # Logind handles lid switch
    ${pkgs.xfce.xfconf}/bin/xfconf-query -c xfce4-power-manager -p /xfce4-power-manager/logind-handle-lid-switch -n -t bool -s true

  '';
}
