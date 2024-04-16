{pkgs, ...}: 
{
  programs.hyprland = {
    enableNvidiaPatches = true;
    enable = true;
    xwayland.enable = true;
  };

  hardware.nvidia.modesetting.enable = true;

  environment.systemPackages = with pkgs; [
    eww
    dunst
    swww
    kitty
    rofi-wayland
  ];
  xdg.portal = {
    enable = true;
    extraPortals = [pkgs.xdg-desktop-portal-gtk];
  };
}