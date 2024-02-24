{ config, lib, ... }:
let
  cfg = config.profiles.main;
in
{
  _file = ./default.nix;

  options.profiles.main = {
    enable = lib.mkEnableOption "Enable a set of configurations.";
  };

  config.presets = lib.mkIf cfg.enable {
    # Apps
    discord.enable = true;
    emacs.enable = true;
    flatpak.enable = true;
    gnome.enable = true;
    obs.enable = true;
    obsidian.enable = true;
    sioyek.enable = true;
    vivaldi.enable = true;
    vscodium.enable = true;

    # CLI
    advcp.enable = true;
    eza.enable = true;
    fish.enable = true;
    lazygit.enable = true;
    mpv.enable = true;
    yazi.enable = true;
    z.enable = true;

    # Services
    espanso.enable = true;
    flameshot.enable = true;
    opensnitch.enable = true;
    sxhkd.enable = true;
    syncthing.enable = true;
    ulauncher.enable = true;
    xbanish.enable = true;
  };
}
