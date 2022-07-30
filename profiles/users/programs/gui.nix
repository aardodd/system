{ pkgs, ... }: {
  home.packages = with pkgs; [
    # office
    libreoffice-fresh
    simple-scan

    # learning
    anki
    goldendict

    # security
    keepassxc

    # chat
    discord
    signal-desktop
    teams

    # gaming
    lutris
    steam

    # video
    vlc

    # screenshot / screen capture
    flameshot
    
    # image editor
    inkscape
    gimp

    # 3D modelling
    blender

    # video editing
    obs-studio
    davinci-resolve

    # browsers
    chromium
    firefox
  ];
}
