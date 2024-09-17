{ config, lib, pkgs, ... }:
{

  hardware.openrazer.enable = true;

  environment.systemPackages = [
    pkgs.razergenie
    pkgs.openrazer-daemon
    pkgs.polychromatic
  ];
}