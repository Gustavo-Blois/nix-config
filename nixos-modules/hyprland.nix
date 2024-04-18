{ inputs, config, pkgs, ... }:
{
  programs.hyprland.enable = true;
  environment.systemPackages = with pkgs; [
    swww
    eww
    home-manager
  ];
  programs.waybar.enable = true;

}