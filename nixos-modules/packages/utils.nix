{ inputs, config, pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    networkmanagerapplet pavucontrol brightnessctl pamixer
    inetutils unzip unixtools.xxd powertop btop tree bat eza fd ripgrep file tldr lshw
    libgcc
    ventoy-full
    wine
    libcanberra
    wl-clipboard
  ];
  services.flatpak.enable = true;

}
