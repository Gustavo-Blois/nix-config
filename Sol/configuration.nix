{ inputs, config, pkgs, ... }:

{
  imports =
    [ # Include the results of the hardware scan.
      ../nixos-modules/thunar.nix
      ../nixos-modules/hyprland.nix
      ../nixos-modules/audio.nix
      ../nixos-modules/fonts.nix
      ../nixos-modules/misc.nix
      ../nixos-modules/packages/entertainment.nix
      ../nixos-modules/packages/h_tools.nix
      ../nixos-modules/packages/utils.nix
      ../nixos-modules/packages/programming.nix
      ../nixos-modules/zsh.nix
       /etc/nixos/hardware-configuration.nix
    ];


  
  networking.hostName = "gr1mb0rk"; # Define your hostname.
  # networking.wireless.enable = true;  # Enables wireless support via wpa_supplicant.

  # Configure network proxy if necessary
  # networking.proxy.default = "http://user:password@proxy:port/";
  # networking.proxy.noProxy = "127.0.0.1,localhost,internal.domain";
 
  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.mason = {
    isNormalUser = true;
    description = "mason";
    extraGroups = [ "networkmanager" "wheel" ];
    packages = with pkgs; [

    ];
  };


  hardware.nvidia.modesetting.enable = true;
  nix.settings.experimental-features = ["nix-command" "flakes"];  
  services.xserver.displayManager.lightdm.enable = false;


  # Some programs need SUID wrappers, can be configured further or are
  # started in user sessions.
  # programs.mtr.enable = true;
  # programs.gnupg.agent = {
  #   enable = true;
  #   enableSSHSupport = true;
  # };

  # List services that you want to enable:

  # Enable the OpenSSH daemon.
  # services.openssh.enable = true;

  # Open ports in the firewall.
  # networking.firewall.allowedTCPPorts = [ ... ];
  # networking.firewall.allowedUDPPorts = [ ... ];
  # Or disable the firewall altogether.
  # networking.firewall.enable = false;

  system.stateVersion = "23.11"; # Did you read the comment?

}
