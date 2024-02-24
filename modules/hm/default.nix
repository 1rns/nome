{ self, ... }:
{
  _file = ./default.nix;

  flake.homeModules = {
    presets = {
      imports = (self.lib.readNixExpsFrom { path = ./presets; });
    };

    profiles = {
      imports = (self.lib.readNixExpsFrom { path = ./profiles; });
    };
  };
}
