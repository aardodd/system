{ ... }: {
  imports = [
    ./base.nix
    ../profiles/audio/pipewire.nix
    ../profiles/fonts/common.nix
    ../profiles/desktop/gnome.nix
    ../profiles/programs/shells/zsh.nix
  ];
}
