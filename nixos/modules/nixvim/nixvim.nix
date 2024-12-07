{
  imports = [
    ./opts.nix
    ./mappings.nix
    ./plugins/plugins-bundle.nix
  ];

  programs.nixvim = {
    enable = true;

    defaultEditor = true;
  };
}
