#!/usr/bin/env fish
sudo nix-channel --update
and nix flake update ~/nome
and sudo nixos-rebuild switch --flake ~/nome#quartz
and home-manager switch --flake ~/nome#l
and echo \nsuccess
or echo \nfail