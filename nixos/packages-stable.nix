{ pkgs-stable, ... }:{
  environment.systemPackages = with pkgs-stable; [
    #class
    vscode
    android-studio
    flutter
    sdkmanager
    android-tools
    python312Packages.numpy
    python312Packages.pip
    python312Packages.pytorch
    python312Packages.scikit-learn
    python312Packages.matplotlib
    python312Packages.pygame
  ];
}
