{ pkgs, ... }:
{
	home.packages = with pkgs; [ neofetch ];
	programs.bash.enable = true;
  	programs.bash.initExtra = ''${pkgs.neofetch}/bin/neofetch'';
}
