{inputs, pkgs, ...}: 
{
  programs.eww.enable = true;
  programs.eww.configDir = "../dotfiles/eww"
}