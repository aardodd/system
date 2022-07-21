{ pkgs, ... }: {
  fonts = {
    fontDir.enable = true;
    enableGhostscriptFonts = true;
    fontconfig.cache32Bit = true;

    fonts = with pkgs; [
      (nerdfonts.override { fonts = [ "IBMPlexMono" "JetBrainsMono" "RobotoMono" ]; })
    ];
  };
}