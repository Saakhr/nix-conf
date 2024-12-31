{ config, pkgs, lib, ... }:
let
  prependZshCustom = ''
    export ZSH_CUSTOM="${config.home.homeDirectory}/.oh-my-zsh/custom"
  '';
in
  {
  # write my theme file
  home.file.".oh-my-zsh/custom/themes/oxide.zsh-theme" ={
    source = pkgs.fetchurl {
      url = "https://raw.githubusercontent.com/dikiaap/dotfiles/refs/heads/master/.oh-my-zsh/themes/oxide.zsh-theme";
      sha256 = "15752d07b362bf7c3be1f37c1ea8ef5a620834dbd0a6b3467ecc8713faf7b136";  # Make sure to use the correct sha256 checksum
    };
  };

  # set the path to the custom folder
  home.file.".zshrc".text = ''
    ${prependZshCustom}
    eval "$(zoxide init zsh)"
    path+=("$HOME/.local/bin")
    path+=("$HOME/go/bin")
  '';

  programs.zsh = {
    enable = true;
    enableCompletion = true;
    # enableAutosuggestions = true;
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;

    shellAliases =
      let
        flakeDir = "/home/agent/nix";
      in {
        rb = "sudo nixos-rebuild switch --flake ${flakeDir}";
        upd = "nix flake update ${flakeDir}";
        upg = "sudo nixos-rebuild switch --upgrade --flake ${flakeDir}";

        hms = "home-manager switch --flake ${flakeDir}";

        list-gens = "sudo nix-env -p /nix/var/nix/profiles/system --list-generations";

        conf = "nvim ${flakeDir}/nixos/configuration.nix";
        pkgs = "nvim ${flakeDir}/nixos/packages.nix";

        ls = "eza --icons -a --group-directories-first";
        f = "cd ~ && cd \$(find * -type d | fzf)";
        nv = "nvim";
        se = "sudoedit";
        cd = "z";
        cl = "clear";
        hijri = "~/nix/assets/hijri";
      };

    history.path = "${config.xdg.dataHome}/zsh/history";

    oh-my-zsh = {
      enable = true;
      custom = "$HOME/.oh-my-zsh/custom";

      plugins = [ "git" "sudo" "zsh-history-substring-search" "you-should-use" ];
      theme = "oxide"; 
    };
  };
}
