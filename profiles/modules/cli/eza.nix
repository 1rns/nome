{ lib, config, ... }:
let
  ezaEnabled = config.programs.eza.enable;
in
{
  programs.eza = lib.mkIf ezaEnabled {
    enableAliases = true;
    extraOptions = [
      "--group-directories-first"
      "--hyperlink"
      "--git"
      "--icons"
      "--no-user"
      "--total-size"
      "--smart-group"
    ];
  };
}