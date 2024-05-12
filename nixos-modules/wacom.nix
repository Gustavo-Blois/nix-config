{ config, lib, pkgs, ... }:
{
services.xserver.wacom.enable = true;
environment.systemPackages = [
    pkgs.wacomtablet
];

}
