{ pkgs, ... }: {
  services = {
    xserver = {
      enable = true;

      displayManager = {
        defaultSession = "xfce+xmonad";
        lightdm.enable = true;
      };

      desktopManager = {
        xterm.enable = false;

        xfce = {
          enable = true;
          noDesktop = true;
          enableXfwm = false;

          thunarPlugins = [
            pkgs.xfce.thunar-archive-plugin
          ];
        };
      };

      windowManager.xmonad.enable = true;
    };
  };

  environment.systemPackages = with pkgs; [
    alacritty
    dunst
    eww
  ];
}
