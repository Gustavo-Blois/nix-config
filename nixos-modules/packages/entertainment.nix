{ inputs, lib, config, pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    firefox brave
    spotify
    stremio
    discord
    cavalier
    lutris wine 
    gimp krita
  ];

   nixpkgs.config.allowUnfreePredicate = pkg: builtins.elem (lib.getName pkg) [
    "steam"
    "steam-original"
    "steam-run"
  ];

  programs.steam = {
  enable = true;
  remotePlay.openFirewall = true; # Open ports in the firewall for Steam Remote Play
  dedicatedServer.openFirewall = true; # Open ports in the firewall for Source Dedicated Server
  };


}
