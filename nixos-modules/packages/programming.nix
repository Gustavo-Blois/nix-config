{ inputs, config, pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    git github-desktop
    ghc
    valgrind gcc
    neovim vscode
  ];
}