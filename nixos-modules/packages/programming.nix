{ inputs, config, pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    git github-desktop
    ghc
    valgrind gcc gnumake
    neovim vscode
  ];
}