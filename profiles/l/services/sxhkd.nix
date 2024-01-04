{pkgs, ...}: {
  services.sxhkd = {
    enable = true;

    keybindings = {
      "super + shift + {F7,F9}" = "echo 'add speed {-,+}0.1' | socat - /tmp/mpvsocket";
      #"ctrl + shift + p" = "flameshot gui";
      "super + BackSpace" = "pkill -USR1 -x sxhkd"; # reload sxhkd
    };
  };
}
