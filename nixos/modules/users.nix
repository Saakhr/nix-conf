{
   users.users.agent = {
     isNormalUser = true;
     extraGroups = [ "wheel" "input" "networkmanager" "network" "audio" ]; # Enable ‘sudo’ for the user.
  #   packages = with pkgs; [
  #     firefox
  #     tree
  #   ];
   };
}
