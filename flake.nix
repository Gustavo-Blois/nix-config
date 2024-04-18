{
  description = "A simple NixOS flake";

  inputs = {
    # NixOS official package source, using the nixos-23.11 branch here
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    hyprland.url = "github:hyprwm/Hyprland";
  };

  outputs = { self, nixpkgs, ... }@inputs:
    let 
      system = "x86_64-linux";
      pkgs = import nixpkgs {
        inherit system;
        config = {
          allowUnfree = true;
        };
      };

    in 
    {
      nixosConfigurations.Sol = nixpkgs.lib.nixosSystem {
        specialArgs = {inherit inputs system; };
        modules = [
          ./Sol/configuration.nix
          inputs.home-manager.nixosModules.home-manager
        ];
      };
      nixosConfigurations.Lua = nixpkgs.lib.nixosSystem {
        modules = [
          ./Lua/configuration.nix
          inputs.home-manager.nixosModules.home-manager
        ];
      };
    
    };
}