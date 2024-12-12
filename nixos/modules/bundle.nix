{pkgs, ...}: {
  imports = [
    ./bootloader.nix
    ./sound.nix
    ./users.nix
    ./bluetooth.nix
    ./env.nix
    ./power.nix
    ./thunar.nix
    ./trim.nix
    ./xserver.nix
    ./inputs.nix
    ./docker.nix
    ./nixvim/nixvim.nix
  ];
  services.libinput.enable = true;

}


