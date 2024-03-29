{ lib, config, ... }:
let
  cfg = config.presets.eza;
in
{
  _file = ./eza.nix;

  options = {
    presets.eza.enable = lib.mkEnableOption "eza";
  };

  config = {
    programs.eza = lib.mkIf cfg.enable {
      enable = true;
      enableFishIntegration = true;
      extraOptions = [
        "--group-directories-first"
        "--hyperlink"
        "--git"
        "--icons"
        "--no-user"
        "--smart-group"
        # "--total-size" # VERY SLOW
      ];
    };
  };
}
