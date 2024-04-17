{inputs, pkgs, ...}: 
{

  let
    startupScript = pkgs.pkgs.writeShellScriptBin "start" ''
    swww init &
    sleep 1
    swww img ~/Wallpapers/1
    nm-applet --indicator &
    eww &
    dunst
    ''
  in{
  wayland.windowManager.hyprland = {
    enable = true;
    settings = {
      exec-once = ''${startupScript}/bin/start''
    }
  };


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
}