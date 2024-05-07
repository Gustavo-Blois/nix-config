{ inputs, outputs, config, pkgs, ... }:
{
  nixpkgs.overlays = [outputs.overlays.stable-packages];

  programs.hyprland = {
    enable = true;
    package = inputs.hyprland.packages.${pkgs.system}.hyprland;
    xwayland.enable = true;
  };

  xdg.portal = {
    enable = true;
    extraPortals = with pkgs; [ xdg-desktop-portal-gtk ];
  };

  environment.systemPackages = with pkgs; [
    xdg-desktop-portal-gtk
  ];
}
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
