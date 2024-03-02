{ pkgs, ... }:
{
  # List packages installed in system profile. To search, run:
  # $ nix search wget
  environment.systemPackages = with pkgs; [
    htop
    btop
    git
    bitwarden
    tailscale
    neofetch
    vscode
    libsForQt5.kate
    gnome.dconf-editor
    chromium
    vlc
    mysql-workbench
    lm_sensors
    firefox
    ffmpeg
    gh
    mariadb
    steam
    discord
  ];
}