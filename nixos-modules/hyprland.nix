{ inputs, outputs, config, pkgs, ... }:
{
  nixpkgs.overlays = [outputs.overlays.stable-packages];

  programs.hyprland.enable = true;
  environment.systemPackages = with pkgs; [
    kitty
    stable.rofi-wayland
    eww
    playerctl
    stable.swww
    home-manager
    hyprlock
    grim
    slurp
  ];
  programs.waybar.enable = true;

}
