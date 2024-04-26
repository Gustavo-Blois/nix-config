{inputs, pkgs, ...}: 
{
  xdg.configFile."hypr".source = ../Lua/hypr;
  xdg.configFile."waybar".source = ../Lua/waybar;
  xdg.configFile."zsh-theme".source = ../Lua/zsh_custom;
  programs.zsh.oh-my-zsh.custom = "~/.config/zsh_custom/obraun-custom.theme";
  programs.zsh.oh-my-zsh.theme = "~/.config/zsh_custom/obraun-custom.theme";
}
