{inputs, pkgs, ...}: 
  let
    startupScript = pkgs.pkgs.writeShellScriptBin "start" ''
    swww init &
    sleep 1
    swww img ~/Wallpapers/1
    nm-applet --indicator &
    waybar &
    dunst
    '';
  in{
  #xdg.configFile."hypr".source = ../dotfiles/hypr;
  wayland.windowManager.hyprland = {
    extraConfig = ''exec-once = ${startupScript}/bin/start '';
  };

}
