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
    ./nixvim/nixvim.nix
  ];

}


