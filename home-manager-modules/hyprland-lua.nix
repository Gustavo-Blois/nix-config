{inputs, pkgs, ...}: 
{
  xdg.configFile."hypr".source = ../Lua/hypr;
  xdg.configFile."waybar".source = ../Lua/waybar;
  programs.zsh.oh-my-zsh.theme = "itchy";
}
