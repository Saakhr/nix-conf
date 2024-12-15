{ ... }: {
  imports = [
    ./bootloader.nix
    ./py-packages.nix
    ./sound.nix
    ./docker.nix
    ./users.nix
    ./bluetooth.nix
    ./env.nix
    ./power.nix
    ./thunar.nix
    ./trim.nix
    ./xserver.nix
    ./inputs.nix
    ./nixvim/nixvim.nix
  ];
  services.libinput.enable = true;

}


