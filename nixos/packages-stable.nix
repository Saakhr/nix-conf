{ pkgs-stable, ... }:{
  environment.systemPackages = with pkgs-stable; [
    vscode
    android-studio
  ];

}
