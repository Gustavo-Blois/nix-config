{inputs, pkgs, ...}: 
{
  programs.eww.enable = true;
  xdg.configFile.eww.source = "../dotfiles/eww";
}