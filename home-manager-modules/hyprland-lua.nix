{inputs, pkgs, ...}: 
{
  xdg.configFile."hypr".source = ../Lua/hypr;
  xdg.configFile."waybar".source = ../Lua/waybar;
  xdg.configFile."oh-my-zsh".source = ../Lua/zsh_custom;
  programs.zsh.oh-my-zsh.custom = "~/.oh-my-zsh";
  programs.zsh.oh-my-zsh.theme = "obraun-custom";
}
