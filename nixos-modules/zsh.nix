{ inputs, outputs, config, pkgs, ... }:
{
users.defaultUserShell=pkgs.zsh; 
programs = {
   zsh = {
      enable = true;
      autosuggestions.enable = true;
      zsh-autoenv.enable = true;
      syntaxHighlighting.enable = true;
      ohMyZsh = {
         enable = true;
         theme = "Soliah";
      };
   };
};
}
