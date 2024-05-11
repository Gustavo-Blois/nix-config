{ inputs, outputs, config, pkgs, ... }:
{
services.xserver.enable = true;
services.xserver.displayManager.sddm.enable = true;
services.xserver.desktopManager.plasma5.enable = true;
# KDE Plasma 6 is now available on unstable
# services.desktopManager.plasma6.enable = true;
}
