{ inputs, config, pkgs, ... }:
{
  fonts.packages = with pkgs; [
  noto-fonts
  noto-fonts-cjk
  noto-fonts-emoji
  nerdfonts
  corefonts
  jetbrains-mono
  liberation_ttf
  unifont
  unifont_upper
  font-awesome
  roboto
  open-sans
  ];
}
