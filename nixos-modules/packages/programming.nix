{ inputs, config, pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    git github-desktop
    ghc haskell-language-server haskellPackages.ghcup
    valgrind gcc gnumake
    neovim vscode
  ];
}
