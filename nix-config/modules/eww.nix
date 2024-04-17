{inputs, pkgs, ...}: 
{
  programs.eww.enable = true;
  home.file.".config/eww".source = ../dotfiles/eww;
}