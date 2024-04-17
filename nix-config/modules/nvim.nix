{inputs, pkgs, ...}: 
{
  programs.neovim.enable = true;
  home.file.".config/eww".source = ../dotfiles/nvim;
  }