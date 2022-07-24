{ pkgs, ... }: {
  home.packages = with pkgs; [
    # office
    libreoffice-fresh
    okular
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
    davinci-resolve

    # browsers
    chromium
    firefox
  ];
}
