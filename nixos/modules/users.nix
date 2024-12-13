{
  users.groups.docker = {};
  users.users.agent = {
    isNormalUser = true;
    extraGroups = [ "wheel" "input" "networkmanager" "docker" "audio" "vboxusers" ]; # Enable ‘sudo’ for the user.
    #   packages = with pkgs; [
    #     firefox
    #     tree
    #   ];
  };
}
