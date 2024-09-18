{ config, lib, pkgs, ... }:
{

  hardware.openrazer.enable = true;

  environment.systemPackages = [
    pkgs.openrazer-daemon
    pkgs.polychromatic
    pkgs.ferium
  ];
}