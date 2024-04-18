{ inputs, config, pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    firefox brave
    spotify
    discord
  ];
}