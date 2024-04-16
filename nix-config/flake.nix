{
  description = "A simple NixOS flake";

  inputs = {
    # NixOS official package source, using the nixos-23.11 branch here
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-23.11";
  };

  outputs = { self, nixpkgs, ... }@inputs: {

    nixosConfigurations.Sol = nixpkgs.lib.nixosSystem {
      system = "x86_64-linux";
      modules = [
        ./Sol/configuration.nix
      ];
    };
    nixosConfigurations.Lua = nixpkgs.lib.nixosSystem {
      system = "x86_64-linux";
      modules = [
        ./Lua/configuration.nix
      ];
    };
  };
}