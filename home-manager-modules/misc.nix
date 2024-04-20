{inputs, pkgs, ...}: 
{
    programs.git.userEmail = "gustavobloisrr@gmail.com";
    programs.git.userName = "Gustavo-Blois";
    programs.git.aliases = {
	gyatt = "if() {git add . && git commit -m \"$@\" && git push; }; f";
    };

}
