{ inputs, config, pkgs, ... }:
{
  nixpkgs.overlays = [outputs.overlays.stable-packages];

  programs.hyprland.enable = true;
  environment.systemPackages = with pkgs; [
    kitty
    wofi
    eww
    playerctl
    stable.swww
    home-manager
  ];
  programs.waybar.enable = true;

}
