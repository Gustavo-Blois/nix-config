{ inputs, outputs, config, pkgs, ... }:
{
  nixpkgs.overlays = [outputs.overlays.stable-packages];

  programs.hyprland.enable = true;
  environment.systemPackages = with pkgs; [
    kitty
    stable.dunst
    stable.rofi-wayland
    eww
    playerctl
    stable.swww
    hyprlock
    grim
    slurp
  ];
  programs.waybar.enable = true;

}
