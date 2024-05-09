{ inputs, outputs, config, pkgs, ... }:
{
  nixpkgs.overlays = [outputs.overlays.stable-packages];

  programs.hyprland = {
    enable = true;
    xwayland.enable = true;
  };

  xdg.portal = {
    enable = true;
    extraPortals = with pkgs; [ xdg-desktop-portal-gtk ];
  };

  environment.systemPackages = with pkgs; [
<<<<<<< HEAD
    bash
=======
    xdg-desktop-portal-gtk
>>>>>>> f728bdbb79539dccd8e42cc38acb5e006298ab88
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
