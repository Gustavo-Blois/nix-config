{ inputs, config, pkgs, ... }:
{
  services.gvfs.enable = true;
  programs.thunar.enable = true;
  environment.systemPackages = [
    pkgs.xfce.thunar-volman
  ];
}
