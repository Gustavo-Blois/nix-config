{inputs, pkgs, ...}: 
{
  programs.neovim.enable = true;
  xdg.configFile."nvim".source = ../dotfiles/nvim;
  programs.neovim.plugins = [
  pkgs.vimPlugins.haskell-tools-nvim
  ];
}