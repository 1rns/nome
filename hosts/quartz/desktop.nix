{
  lib,
  pkgs,
  ...
}: {
  _file = ./desktop.nix;

  gnome = {
    enable = true;
    minimal = true;
  };

  programs = {
    fish.enable = true;
  };

  environment.shells = [pkgs.fish];

  environment.systemPackages = with pkgs;
    [
      micro
      git
      btop
      firefox
      polkit
      ntfs3g
      p7zip
      fuse-7z-ng
      openrgb-with-all-plugins
      nvtop-amd

      # Gnome
      gnome.gnome-tweaks
      (graphite-gtk-theme.override {
        themeVariants = ["all"];
      })
    ]
    ++ (with pkgs.gnomeExtensions; [
      paperwm # scrolling, tiling wm
      rounded-window-corners
      another-window-session-manager
      just-perfection # overview tweaks + hide panel
      emoji-copy
      unite # hide title bars
      pano # clipboard manager
      (callPackage ../../packages/v-shell.nix {}) # vertical shell (update)
    ]);
}