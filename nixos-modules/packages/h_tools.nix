{ inputs, config, pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    swww
    home-manager
  ];
}