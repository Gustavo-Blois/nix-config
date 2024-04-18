{ inputs, config, pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    ghidra
    nmap
    nikto
  ];
}