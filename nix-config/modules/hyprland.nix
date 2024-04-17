{inputs, pkgs, ...}: 
  let
    startupScript = pkgs.pkgs.writeShellScriptBin "start" ''
    swww init &
    sleep 1
    swww img ~/Wallpapers/1
    nm-applet --indicator &
    eww &
    dunst
    '';
  in{
  wayland.windowManager.hyprland = {
    enable = true;
    extraConfig = ''exec-once = ${startupScript}/bin/start '';
  };

  }
