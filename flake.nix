{
  description = "A simple NixOS flake";
  #
  inputs = {
    # NixOS official package source, using the nixos-23.11 branch here
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    nixpkgs-stable.url = "github:nixos/nixpkgs/nixos-23.11";
    hyprland.url = "github:hyprwm/Hyprland";
  };

  outputs = { self, nixpkgs, ... }@inputs:
    let 
      inherit (self) outputs;
      system = "x86_64-linux";
      pkgs = import nixpkgs {
        inherit system;
        config = {
          allowUnfree = true;
        };
      };

    in 
    {
      overlays = import ./overlays {inherit inputs;};
      nixosConfigurations.gr1mb0rk = nixpkgs.lib.nixosSystem {
        specialArgs = {inherit inputs outputs system; };
        modules = [
          ./Sol/configuration.nix
        ];
      };
      nixosConfigurations.d0gtooth = nixpkgs.lib.nixosSystem {
        specialArgs = {inherit inputs outputs system; };
        modules = [
          ./Lua/configuration.nix
        ];
      };
    
    };
}
