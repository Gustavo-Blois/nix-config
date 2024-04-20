{ inputs, config, pkgs, ... }:
{
  programs.hyprland.enable = true;
  environment.systemPackages = with pkgs; [
    kitty
    wofi
    eww
    swww
    home-manager
  ];
  programs.waybar.enable = true;

}
