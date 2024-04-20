{ inputs, config, pkgs, ... }:
{
  programs.hyprland.enable = true;
  environment.systemPackages = with pkgs; [
    kitty
    wofi
    hyprpaper
    eww
    home-manager
  ];
  programs.waybar.enable = true;

}
