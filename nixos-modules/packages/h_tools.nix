{ inputs, config, pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    ghidra exiftool
    nmap
    nikto
    openvpn
  ];
}
