{
  services.xserver = {
    enable = true;
    windowManager.i3.enable = true;

     displayManager = {
    #   autoLogin.enable = true;
    #   autoLogin.user = "amper";
       lightdm.enable = true;
     };

    layout = "us";
    xkbVariant = "";

    libinput = {
      enable = true;
      mouse.accelProfile = "flat";
      touchpad.accelProfile = "flat";
    };

    deviceSection = ''Option "TearFree" "True"'';
  };
}
