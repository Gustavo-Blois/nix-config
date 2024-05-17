{ inputs, config, pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    radare2 ghidra exiftool
    nmap
    nikto burpsuite
    openvpn
  ];
}
