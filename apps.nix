{ pkgs, ... }:
{
  # List packages installed in system profile. To search, run:
  # $ nix search wget
  environment.systemPackages = with pkgs; [
    htop
    btop
    git
    bitwarden-desktop
    tailscale
    neofetch
    vscode
    # kdePackages.kate
    pkgs.dconf-editor
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
    #gnomeExtensions.net-speed
    #gnomeExtensions.net-speed-simplified
    #gnomeExtensions.hibernate-status-button
    #gnomeExtensions.caffeine
    #gnomeExtensions.freon
    #gnomeExtensions.tailscale-status
    #gnomeExtensions.smart-tiling
    #gnomeExtensions.power-off-options
    # alacritty
    nvtopPackages.full
    qdirstat
    python3
    lshw
    pciutils
    parsec-bin
    bandwhich # terminal based bandwidth monitor
    fish # fish shell
    zoxide # rust based smarter cd command
    atlauncher # install through flathub to get most up to date version # open source minecraft launcher, disable "use java provided by minecraft" under the java/minecraft tab of settings
    pkgs.jdk21	# needed for atlauncher/minecraft
    picard # music tagging software
    teamviewer	# needs services.teamviewer.enable = true;
    # flowblade	# Multitrack Non-Linear Video Editor
    kdePackages.kdenlive
    ladybird
    audacity	# Sound editor with graphical UI
    dmidecode	# reads information about your system's hardware from the BIOS
    libreoffice	# office suite
    #video-trimmer
    losslesscut-bin	# audio and video trimming tool
    heroic	# Native GOG, Epic, and Amazon Games Launcher
    nmap	# networks cannign utility
    filezilla	# Graphical FTP, FTPS and SFTP client
    mediainfo	# Supplies technical and tag information about a video or audio file
    cura-appimage	# 3d printer slicer
    esptool	# ESP8266 and ESP32 serial bootloader utility
    flashprint	# Slicer for the FlashForge 3D printers
    krename	# Powerful batch renamer for KDE
    arduino-ide	# Open-source electronics prototyping platform
    qbittorrent	# Featureful free software BitTorrent client
    impression	# Straight-forward and modern application to create bootable drives
    solaar	# Linux devices manager for the Logitech Unifying Receiver
    sweethome3d.application # free interior design application
    zoom-us	# zoom.us video conferencing application
    iotop	# Tool to find out the processes doing the most IO
    gh		# GitHub CLI tool
  ];
  
  services.teamviewer.enable = true;
  programs.fish.enable = true;
  services.tailscale.enable = true;
  
  hardware.graphics = {
    enable = true;
    enable32Bit = true;

    extraPackages = with pkgs; [
      mesa
      vulkan-loader
    ];
    extraPackages32 = with pkgs.pkgsi686Linux; [
      mesa
      vulkan-loader
    ];
  };
}
