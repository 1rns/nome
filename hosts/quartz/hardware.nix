{
  config,
  pkgs,
  ...
}: {
  _file = ./hardware.nix;

  hardware = {
    pulseaudio.enable = false;
    keyboard.uhk.enable = true;
    opengl.enable = true;
  };

  security.rtkit.enable = true;

  system.stateVersion = "23.11";
}
